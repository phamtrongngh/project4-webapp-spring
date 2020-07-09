/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Nghia.Util;

import javax.faces.context.FacesContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.util.WebUtils;

/**
 *
 * @author BEN ALPHA
 */
public class CookieHelper {
    public static void setCookie(String name, String value, int expiry) {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        HttpServletRequest request = (HttpServletRequest) facesContext.getExternalContext().getRequest();
        Cookie cookie = null;

        Cookie[] userCookies = request.getCookies();
        if (userCookies != null && userCookies.length > 0) {
            for (int i = 0; i < userCookies.length; i++) {
                if (userCookies[i].getName().equals(name)) {
                    cookie = userCookies[i];
                    break;
                }
            }
        }
        if (cookie != null) {
            cookie.setValue(value);
        } else {
            cookie = new Cookie(name, value);
            cookie.setPath(request.getContextPath());
            cookie.setMaxAge(expiry);
        }
        HttpServletResponse response = (HttpServletResponse) facesContext.getExternalContext().getResponse();
        response.addCookie(cookie);
    }

    public static void deleteCookie(String name) {
        setCookie(name, "", 0);
    }

    public static String getCookie(String name) {
        ServletRequestAttributes servReq = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest req = servReq.getRequest();
        if (WebUtils.getCookie(req, name)==null){
            return "";
        }
        return WebUtils.getCookie(req, name).getValue();
    }
}
