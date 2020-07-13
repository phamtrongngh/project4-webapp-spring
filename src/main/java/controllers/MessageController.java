/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controllers;

import Nghia.Util.RESTHelper;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Message;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MessageController implements IController<Message>{

    
    private RESTHelper rest;

    public MessageController() throws InstantiationException, IllegalAccessException {
        rest = new RESTHelper(Message.class);
    }
            
    

    @RequestMapping(value = "/message/", method = RequestMethod.GET)
    public ModelAndView getAll() throws IOException {
        
        return new ModelAndView("message");
    }


    public ModelAndView delete(String id) throws IOException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }


    @ResponseBody
    public ModelAndView post(Message message,HttpServletResponse response) throws IOException {
        
        return null;
    }


    @ResponseBody
    public ModelAndView getOne(String id) throws IOException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }


    public ModelAndView put(HttpServletRequest request ,Message message) throws IOException {
        throw new UnsupportedOperationException("Not supported yet."); 
    }
    
}
