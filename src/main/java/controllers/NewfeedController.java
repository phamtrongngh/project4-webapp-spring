/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import Nghia.Util.RESTHelper;
import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import models.Newfeed;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Admin
 */
@Controller
public class NewfeedController implements IController {

    private final RESTHelper restHelper;

    public NewfeedController() throws InstantiationException, IllegalAccessException {
        restHelper = new RESTHelper(Newfeed.class);
    }

    @RequestMapping(value = "/newfeed", method = RequestMethod.GET)
    @Override
    public ModelAndView getAll() throws IOException {
        List<Newfeed> list = restHelper.getAll();
        return new ModelAndView("newfeedList").addObject("list", list);
    }

    @RequestMapping(value = "/newfeed/delete/{id}", method = RequestMethod.GET)
    @Override
    public ModelAndView delete(@PathVariable("id") String id) throws IOException {
        Object obj = restHelper.delete(id);
        return getAll();
    }

    @RequestMapping(value = "/newfeed/create", method = RequestMethod.GET)
    public ModelAndView getCreate() throws IOException {
        return new ModelAndView("postNewfeed");
    }

    @RequestMapping(value = "/newfeed/postNewfeed", method = RequestMethod.POST)
    @Override
    public ModelAndView post(HttpServletRequest request) throws IOException {
        Newfeed newfeed = new Newfeed();
        newfeed.setContent(request.getParameter("content").toString());
        restHelper.post(newfeed);
        return getAll();
    }

    @RequestMapping(value = "/newfeed/{id}", method = RequestMethod.GET)
    @Override
    public ModelAndView getOne(@PathVariable("id") String id) throws IOException {
        Object newfeed = restHelper.getOne(id);
        return new ModelAndView("updateNewfeed").addObject("newfeed", newfeed);
    }

    @RequestMapping(value = "/newfeed/postUpdate", method = RequestMethod.POST)
    @Override
    public ModelAndView put(HttpServletRequest request) throws IOException {
        Newfeed newfeed = new Newfeed();
        newfeed.set_id(request.getParameter("id").toString());
        newfeed.setContent(request.getParameter("content").toString());
        restHelper.put(newfeed);
        return getAll();
    }

}
