
package controllers;

import Nghia.Util.CookieHelper;
import Nghia.Util.RESTHelper;
import Nghia.Util.RESTUserHelper;
import java.io.IOException;
import java.util.Map;
import models.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {

    private final RESTUserHelper restUser;

    public UserController() throws InstantiationException, IllegalAccessException {
        restUser = new RESTUserHelper(User.class);
    }
    
    @RequestMapping(value = "/user-info")
    public ModelAndView userinfo() {
        return new ModelAndView("user-info");
    }
    @RequestMapping(value = "/profile")
    public ModelAndView index() {
        return new ModelAndView("profile");
    }
    
    @RequestMapping(value = "/user-profile", method = RequestMethod.GET)
    public ModelAndView profile() throws IOException {
        return new ModelAndView("profile-user");
    }
    
    @RequestMapping(value = "/myprofile-user")
    public ModelAndView myprofileuser() throws IOException {
        Map<String, ?> user = restUser.getMyUser();
        return new ModelAndView("myprofile-user").addObject("user", user);
    }
    
    @RequestMapping(value = "/User/statistical")
    public ModelAndView statistical() {
        return new ModelAndView("statistical");
    }
    
}
