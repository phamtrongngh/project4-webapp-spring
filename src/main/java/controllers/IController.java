/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author BEN ALPHA
 */
public interface IController {

    public ModelAndView getAll() throws IOException;

    public ModelAndView delete(String id) throws IOException;

    public ModelAndView post(HttpServletRequest request) throws IOException;

    public ModelAndView getOne(String id) throws IOException;

    public ModelAndView put(HttpServletRequest request) throws IOException;
}
