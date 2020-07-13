
package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
    
    @RequestMapping(value="/profile")
    public ModelAndView index(){
        return new ModelAndView("profile");
    }
    @RequestMapping(value="/user-profile")
    public ModelAndView profile(){
        return new ModelAndView("profile-user");
    }
    @RequestMapping(value="/User/statistical")
    public ModelAndView statistical(){
        return new ModelAndView("statistical");
    }
    
}
