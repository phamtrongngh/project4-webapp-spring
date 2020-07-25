package controllers;

import Nghia.Util.CookieHelper;
import Nghia.Util.RESTAuthorizeHelper;
import Nghia.Util.RESTHelper;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Base64;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Authorization;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.type.TypeReference;
import org.springframework.security.jwt.Jwt;
import org.springframework.security.jwt.JwtHelper;
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

    public ModelAndView put(HttpServletRequest request, Authorization authorization) throws IOException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public ModelAndView post(Authorization t, HttpServletResponse response) throws IOException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login(HttpServletRequest request, HttpServletResponse response) {
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                cookie.setValue("");
                cookie.setMaxAge(0);
                cookie.setHttpOnly(true);
                cookie.setPath("/");
                response.addCookie(cookie);
            }
        }
        return new ModelAndView("login");
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public void login(Authorization authorization, HttpServletResponse response) throws IOException {
        Map<String, ?> responseMap = rest.post(authorization);
        String accessToken = (String) responseMap.get("access_token");
        if (accessToken != null) {

            //set cookie for access token
            Cookie cookie = new Cookie("accessToken", "JWT " + accessToken);
            cookie.setHttpOnly(true);
            cookie.setMaxAge(9999999);
            cookie.setPath("/");

            String decodeJWTString = (JwtHelper.decode(accessToken)).getClaims();

            ObjectMapper mapper = new ObjectMapper();
            Map<String, String> convertTo = mapper.readValue(decodeJWTString, new TypeReference<Map<String, String>>() {
            });
            String originalInput = convertTo.get("fullname");
            String encodedString = Base64.getEncoder().encodeToString(originalInput.getBytes());
            Cookie cookie3 = new Cookie("id", convertTo.get("id"));
            Cookie cookie2 = new Cookie("avatar", convertTo.get("avatar"));
            Cookie cookie1 = new Cookie("fullname", URLEncoder.encode(convertTo.get("fullname"), "UTF-8"));
            cookie1.setHttpOnly(true);
            cookie1.setMaxAge(999999);
            cookie1.setPath("/");
            cookie2.setHttpOnly(true);
            cookie2.setMaxAge(999999);
            cookie2.setPath("/");
            cookie3.setHttpOnly(true);
            cookie3.setMaxAge(999999);
            cookie3.setPath("/");
            response.addCookie(cookie);
            response.addCookie(cookie1);
            response.addCookie(cookie2);
            response.addCookie(cookie3);
            response.sendRedirect("/");
        } else {
            response.sendRedirect("/login");
        }
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public ModelAndView register() {
        return new ModelAndView("register");
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public void register(Authorization authorization, HttpServletResponse response) throws IOException {

        rest.postRegister(authorization);
        Map<String, ?> responseMap = rest.post(authorization);
        String accessToken = (String) responseMap.get("access_token");
        if (accessToken != null) {
            //set cookie for access token
            Cookie cookie = new Cookie("accessToken", "JWT " + accessToken);
            cookie.setHttpOnly(true);
            cookie.setMaxAge(9999999);
            cookie.setPath("/");
            //set cookies for fullname and avatar 
            String decodeJWTString = (JwtHelper.decode(accessToken)).getClaims();

            ObjectMapper mapper = new ObjectMapper();
            Map<String, String> convertTo = mapper.readValue(decodeJWTString, new TypeReference<Map<String, String>>() {
            });
            String originalInput = convertTo.get("fullname");
            String encodedString = Base64.getEncoder().encodeToString(originalInput.getBytes());
            Cookie cookie3 = new Cookie("id", convertTo.get("id"));
            Cookie cookie2 = new Cookie("avatar", convertTo.get("avatar"));
            Cookie cookie1 = new Cookie("fullname", URLEncoder.encode(convertTo.get("fullname"), "UTF-8"));
            cookie1.setHttpOnly(true);
            cookie1.setMaxAge(999999);
            cookie1.setPath("/");
            cookie2.setHttpOnly(true);
            cookie2.setMaxAge(999999);
            cookie2.setPath("/");
            cookie3.setHttpOnly(true);
            cookie3.setMaxAge(999999);
            cookie3.setPath("/");

            response.addCookie(cookie);
            response.addCookie(cookie1);
            response.addCookie(cookie2);
            response.addCookie(cookie3);
            response.sendRedirect("/");
        } else {
            response.sendRedirect("/login");
        }
    }

}
