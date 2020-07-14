
package controllers;

import Nghia.Util.RESTHelper;
import java.io.IOException;
import models.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
    private final RESTHelper restHelper;

    public UserController() throws InstantiationException, IllegalAccessException {
        restHelper = new RESTHelper(User.class);
    }
    
    
    @RequestMapping(value="/profile")
    public ModelAndView index(){
        return new ModelAndView("profile");
    }
    
    @RequestMapping(value="/user-profile/{id}", method = RequestMethod.GET)
    public ModelAndView profile(@PathVariable("id") String id) throws IOException{
        Object user = restHelper.getOne(id);
        return new ModelAndView("profile-user").addObject("user", user);
    }
    
    @RequestMapping(value="/User/statistical")
    public ModelAndView statistical(){
        return new ModelAndView("statistical");
    }
    
}
