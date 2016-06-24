package pl.pb.web.spring.freemarker.controllers;

import pl.pb.web.spring.freemarker.reposytory.dao.ContactDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/indexAjax")
public class IndexAjaxController {

    @Autowired
    ContactDao contactDao;

    @RequestMapping()
    public ModelAndView contacts() {
        ModelAndView modelAndView = new ModelAndView("indexAjax");
        modelAndView.addObject("contactEntityList", contactDao.findAll());
        return modelAndView;
    }
}
