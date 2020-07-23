/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import Nghia.Util.RESTHelper;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Product;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProductController implements IController<Product> {

    private final RESTHelper restHelper;

    public ProductController() throws InstantiationException, IllegalAccessException {
        restHelper = new RESTHelper(Product.class);
    }

    @RequestMapping(value = "/cart", method = RequestMethod.GET)
    public ModelAndView cart() throws IOException {
        return new ModelAndView("cart");
    }
    @RequestMapping(value = "/create-DMmenu", method = RequestMethod.GET)
    public ModelAndView createDMmenu() throws IOException {
        return new ModelAndView("create-DMmenu");
    }
    @RequestMapping(value = "/create-menu", method = RequestMethod.GET)
    public ModelAndView createmenu() throws IOException {
        return new ModelAndView("create-menu");
    }
    
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView index() throws IOException {
        return new ModelAndView("index");
    }
    
    @RequestMapping(value = "/product", method = RequestMethod.GET)
    @Override
    public ModelAndView getAll() throws IOException {
        List<Product> list = restHelper.getAll();
        return new ModelAndView("index").addObject("list", list);
    }

    @RequestMapping(value = "/product/{id}", method = RequestMethod.GET)
    @Override
    public ModelAndView getOne(@PathVariable("id") String id) throws IOException {
        Object product = restHelper.getOne(id);
        return new ModelAndView("update").addObject("product", product);
    }

    @RequestMapping(value = "/product/delete/{id}", method = RequestMethod.GET)
    @Override
    public ModelAndView delete(@PathVariable("id") String id) throws IOException {
        Object obj = restHelper.delete(id);
        return getAll();
    }

    @RequestMapping(value = "/product/create", method = RequestMethod.GET)
    public ModelAndView getCreate() throws IOException {
        return new ModelAndView("postProduct");
    }

    @RequestMapping(value = "/product/postUpdate", method = RequestMethod.POST)
    @Override
    public ModelAndView put(HttpServletRequest request, Product product) throws IOException {
        product.set_id(request.getParameter("id").toString());
        restHelper.put(product);
        return getAll();
    }

    @RequestMapping(value = "/product/postProduct", method = RequestMethod.POST)
    @Override
    public ModelAndView post(Product product, HttpServletResponse response) throws IOException {
        restHelper.post(product);
        return getAll();
    }
    
    @RequestMapping(value = "/product/create", method = RequestMethod.POST)
    public ModelAndView createProduct() throws IOException {
        
        return new ModelAndView("postProduct");
    }
}
