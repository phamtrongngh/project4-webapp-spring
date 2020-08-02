/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import Nghia.Util.RESTCouponHelper;
import Nghia.Util.RESTHelper;
import java.io.IOException;
import models.Coupon;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CouponController {

    private RESTCouponHelper restHelper;

    public CouponController() throws InstantiationException, IllegalAccessException {
        restHelper = new RESTCouponHelper(Coupon.class);
    }

    @RequestMapping(value = "/coupon", method = RequestMethod.GET)
    public ModelAndView index() throws IOException {
        return new ModelAndView("discount").addObject("coupons", restHelper.getAll());
    }

    @RequestMapping(value = "/coupon/check", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String check(@RequestBody String json) throws IOException {
        return restHelper.check(json);
    }
}
