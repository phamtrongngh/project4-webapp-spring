/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interceptor;

import Nghia.Util.CookieHelper;
import Nghia.Util.RESTUserHelper;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author BEN ALPHA
 */
public class AuthorizeHandleInterceptor implements HandlerInterceptor {

    private RESTUserHelper restHelper;

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object o, Exception excptn) throws Exception {
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object o, ModelAndView mav) throws Exception {
        restHelper = new RESTUserHelper(User.class);
        List<Map<String, ?>> accepted = new ArrayList<Map<String, ?>>();
        List<Map<String, ?>> requested = new ArrayList<Map<String, ?>>();;
        for (Map<String, ?> object : restHelper.getFriendRequests()) {
            if (object.get("status").equals("accepted")) {
                accepted.add(object);
            }else if (object.get("status").equals("requested")){
                requested.add(object);
            }  
        }
        mav.addObject("friendRequests",requested).addObject("friends",accepted);
    }
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {

        if (CookieHelper.getCookie("accessToken") != "") {
            return true;
        } else {
            response.sendRedirect("/login");
            return false;
        }
    }

}
