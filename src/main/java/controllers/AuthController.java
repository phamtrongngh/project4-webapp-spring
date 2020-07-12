package controllers;

import Nghia.Util.CookieHelper;
import Nghia.Util.RESTAuthorizeHelper;
import Nghia.Util.RESTHelper;
import java.io.IOException;
import java.util.Map;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Authorization;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller()
public class AuthController implements IController<Authorization> {

    private RESTAuthorizeHelper rest;

    public AuthController() throws InstantiationException, IllegalAccessException {
        rest = new RESTAuthorizeHelper(Authorization.class);
    }

    public ModelAndView getAll() throws IOException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public ModelAndView delete(String id) throws IOException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public ModelAndView getOne(String id) throws IOException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public ModelAndView put(Authorization authorization) throws IOException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public ModelAndView post(Authorization t, HttpServletResponse response) throws IOException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @RequestMapping(value = "/Authorize/login", method = RequestMethod.GET)
    public ModelAndView login() {
        return new ModelAndView("login");
    }

    @RequestMapping(value = "/Authorize/login", method = RequestMethod.POST)
    public void login(Authorization authorization, HttpServletResponse response) throws IOException {
        Map<String, ?> responseMap = rest.post(authorization);
        String accessToken = (String) responseMap.get("access_token");
        if (accessToken != null) {
            Cookie cookie = new Cookie("accessToken", "JWT " + accessToken);
            cookie.setHttpOnly(true);
            cookie.setMaxAge(9999999);
            cookie.setPath("/");
            response.addCookie(cookie);
            response.sendRedirect("/");
        }else{
            response.sendRedirect("/Authorize/login");
        }
    }

    @RequestMapping(value = "/Authorize/logout", method = RequestMethod.POST)
    public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("accessToken")) {
                cookie.setValue("");
                cookie.setMaxAge(0);
                cookie.setHttpOnly(true);
                cookie.setPath("/");
                response.addCookie(cookie);
            }
        }
        return new ModelAndView("login");

    }

    @RequestMapping(value = "/Authorize/register", method = RequestMethod.GET)
    public ModelAndView register() {
        return new ModelAndView("register");
    }

}