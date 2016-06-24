package pl.pb.web.spring.freemarker.controllers;

import pl.pb.web.spring.freemarker.controllers.validators.ContactValidation;
import pl.pb.web.spring.freemarker.reposytory.dao.ContactDao;
import pl.pb.web.spring.freemarker.reposytory.model.ContactEntity;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/index")
public class IndexController {

    @Autowired
    ContactDao contactDao;

    @Autowired
    ContactValidation contactValidation;

    @InitBinder
    private void initBinder(WebDataBinder binder) {
        binder.addValidators(contactValidation);
    }

    @RequestMapping()
    public ModelAndView contacts() {
        ModelAndView modelAndView = createBaseModelAndView();
        return modelAndView;
    }

    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public ModelAndView edit(@PathVariable("id") Long id) {
        ModelAndView modelAndView = createBaseModelAndView();
        ContactEntity contactEntity = contactDao.findOne(id);
        modelAndView.addObject("contact", contactEntity);
        modelAndView.addObject("method", RequestMethod.PUT);
        return modelAndView;
    }

    @RequestMapping(path = "/new", method = RequestMethod.GET)
    public ModelAndView create() {
        ModelAndView modelAndView = createBaseModelAndView();
        modelAndView.addObject("contact", new ContactEntity());
        modelAndView.addObject("method", RequestMethod.POST);
        return modelAndView;
    }

    @RequestMapping(path = "/cancel", method = RequestMethod.GET)
    public ModelAndView cancel() {
        ModelAndView modelAndView = createBaseModelAndView();
        modelAndView.setViewName("redirect:/index");
        return modelAndView;
    }

    @RequestMapping(path = "/save", method = RequestMethod.POST)
    public ModelAndView savePost(@ModelAttribute @Validated ContactEntity contactEntity, BindingResult bindingResult) {
        ModelAndView modelAndView;
        if (bindingResult.hasErrors()) {
            modelAndView = createBaseModelAndView();
            modelAndView.addObject("contact", contactEntity);
            modelAndView.addObject("method", RequestMethod.POST);
        } else {
            contactEntity.setId(null);
            contactDao.save(contactEntity);
            modelAndView = createBaseModelAndView();
            modelAndView.setViewName("redirect:/index");
        }
        return modelAndView;
    }

    @RequestMapping(path = "/save", method = RequestMethod.PUT)
    public ModelAndView savePut(@ModelAttribute @Validated ContactEntity contactEntity, BindingResult bindingResult) {
        ModelAndView modelAndView;
        if (bindingResult.hasErrors()) {
            modelAndView = createBaseModelAndView();
            modelAndView.addObject("contact", contactEntity);
            modelAndView.addObject("method", RequestMethod.PUT);
        } else {
            contactDao.save(contactEntity);
            modelAndView = createBaseModelAndView();
            modelAndView.setViewName("redirect:/index");
        }
        return modelAndView;
    }

    @RequestMapping(path = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView savePut(@PathVariable("id") Long id) {

        if (contactDao.exists(id)) {
            contactDao.delete(id);
        }
        ModelAndView modelAndView = createBaseModelAndView();
        modelAndView.setViewName("redirect:/index");
        return modelAndView;
    }

    private ModelAndView createBaseModelAndView() {
        ModelAndView modelAndView = new ModelAndView("index");
        List<ContactEntity> contactEntities = (List<ContactEntity>) contactDao.findAll();
        modelAndView.addObject("contactList", contactEntities);
        return modelAndView;
    }

}
