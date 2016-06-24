package pl.pb.web.spring.freemarker.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DefaultController {

    //default endpoint
    @RequestMapping("/")
    public String greeting(Model model) {
        model.addAttribute("text", "Hello World");
        return "redirect:/index";
    }

}
