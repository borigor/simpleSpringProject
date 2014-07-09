package com.springapp.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {

    @RequestMapping(value = "/")
    public String mainPage() {
        return "redirect:index/";
    }

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String inputUserData() {
        return "index";
    }

    @RequestMapping(value = "/userData", method = RequestMethod.GET)
    public String userData(@RequestParam(value = "user", required = true) String user,
                           @RequestParam(value = "id", required = true) String idString,
                           ModelMap model) {
        int id = 0;
        int nextId = 0;

        try {
            id = Integer.parseInt(idString);
            nextId = id + 1;
        } catch (NumberFormatException e) {
            System.out.println("error in type of id");
            throw new NumberFormatException();
        }

        model.addAttribute("user", user);
        model.addAttribute("id", id);
        model.addAttribute("nextId", nextId);

        return "userData";
    }
}