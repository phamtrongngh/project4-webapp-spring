/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView index() {
        List<String> list = new ArrayList<String>();
        list.add("Home");
        list.add("View");
        list.add("Exit");
        return new ModelAndView("index").addObject("menu", list);
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login() {
        List<String> list = new ArrayList<String>();
        list.add("Home");
        list.add("View");
        list.add("Exit");
        return new ModelAndView("login").addObject("menu", list);
    }
}
