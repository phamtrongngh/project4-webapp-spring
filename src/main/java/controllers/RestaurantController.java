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
import models.Restaurant;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Admin
 */
@Controller

public class RestaurantController implements IController{
    private final RESTHelper restHelper;
    public RestaurantController() throws InstantiationException, IllegalAccessException{
        restHelper = new RESTHelper(Restaurant.class);
    }
    
    @RequestMapping(value = "/restaurant", method = RequestMethod.GET)
    @Override
    public ModelAndView getAll() throws IOException {
        List<Restaurant> list = restHelper.getAll();
        return new ModelAndView("restaurantList").addObject("list", list);
    }
    @RequestMapping(value = "/restaurant/delete/{id}", method = RequestMethod.GET)
    @Override
    public ModelAndView delete(@PathVariable("id") String id) throws IOException {
        Object obj = restHelper.delete(id);
        return getAll();
    }
    
    @RequestMapping(value = "/restaurant/create", method = RequestMethod.GET)
    public ModelAndView getCreate() throws IOException {
        return new ModelAndView("postRestaurant");
    }
    
    @RequestMapping(value = "/restaurant/postRestaurant", method = RequestMethod.POST)        
    @Override
    public ModelAndView post(HttpServletRequest request) throws IOException {
        Restaurant restaurant = new Restaurant();
        restaurant.setName(request.getParameter("name").toString());
        restaurant.setAddress(request.getParameter("address").toString());
        restHelper.post(restaurant);
        return getAll();
    }
    @RequestMapping(value = "/restaurant/{id}")
    @Override
    public ModelAndView getOne(@PathVariable("id") String id) throws IOException {
        Object restaurant =  restHelper.getOne(id);
        return new ModelAndView("updateRestaurant").addObject("restaurant", restaurant);
    }
    @RequestMapping(value = "/restaurant/updateRestaurant", method = RequestMethod.POST)
    @Override
    public ModelAndView put(HttpServletRequest request) throws IOException {
        Restaurant restaurant = new Restaurant();
        restaurant.set_id(request.getParameter("id").toString());
        restaurant.setName(request.getParameter("name").toString());
        restaurant.setAddress(request.getParameter("address").toString());
        restHelper.put(restaurant);
        return getAll();
    }
    
}
