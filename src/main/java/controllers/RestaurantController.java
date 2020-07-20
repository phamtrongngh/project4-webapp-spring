/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import Nghia.Util.CookieHelper;
import Nghia.Util.RESTHelper;
import java.io.File;
import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import Nghia.Util.MultipartContainer;
import Nghia.Util.RESTRestaurantHelper;
import Nghia.Util.RESTUserHelper;
import java.util.Map;
import models.Restaurant;
import models.User;
import org.glassfish.jersey.media.multipart.FormDataMultiPart;
import org.glassfish.jersey.media.multipart.MultiPartFeature;
import org.glassfish.jersey.media.multipart.file.FileDataBodyPart;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Admin
 */
@Controller
public class RestaurantController implements IController<Restaurant> {

    private final RESTRestaurantHelper restHelper;

    public RestaurantController() throws InstantiationException, IllegalAccessException {
        restHelper = new RESTRestaurantHelper(Restaurant.class);
    }

    @RequestMapping(value = "/statistical", method = RequestMethod.GET)
    public ModelAndView statistical() throws IOException {
        return new ModelAndView("statistical");
    }

    @RequestMapping(value = "/mystore", method = RequestMethod.GET)
    public ModelAndView mystore() throws IOException {
        List<Map<String, ?>> listRestaurants = restHelper.getMyRestaurants();
        return new ModelAndView("mystore").addObject("listRestaurants", listRestaurants);

    }

    @RequestMapping(value = "/registerstore", method = RequestMethod.GET)
    public ModelAndView registerstore() throws IOException {
        return new ModelAndView("registerstore");
    }

    @RequestMapping(value = "/store", method = RequestMethod.GET)
    public ModelAndView store() throws IOException {
        return new ModelAndView("store");
    }

    @RequestMapping(value = "/restaurant", method = RequestMethod.GET)
    public ModelAndView getAll() throws IOException {
        List<Restaurant> list = restHelper.getAll();
        return new ModelAndView("restaurantList").addObject("list", list);
    }

    @RequestMapping(value = "/restaurant/delete/{id}", method = RequestMethod.GET)

    @Override
    public ModelAndView delete(@PathVariable("id") String id) throws IOException {
        Object obj = restHelper.delete(id);
        return getAll();
    }

    @RequestMapping(value = "/restaurant/create", method = RequestMethod.GET)
    public ModelAndView getCreate() throws IOException {
        return new ModelAndView("postRestaurant");
    }

    @RequestMapping(value = "/restaurant/postRestaurant", method = RequestMethod.POST)

    @Override
    public ModelAndView post(Restaurant restaurant, HttpServletResponse response) throws IOException {
        restHelper.post(restaurant);
        return getAll();
    }

    @RequestMapping(value = "/restaurant/{id}")
    @Override
    public ModelAndView getOne(@PathVariable("id") String id) throws IOException {
        Object restaurant = restHelper.getOne(id);
        return new ModelAndView("updateRestaurant").addObject("restaurant", restaurant);
    }

    @RequestMapping(value = "/restaurant/updateRestaurant", method = RequestMethod.POST)
    @Override
    public ModelAndView put(HttpServletRequest request, Restaurant restaurant) throws IOException {
        restaurant.set_id(request.getParameter("id").toString());
        restHelper.put(restaurant);
        return getAll();
    }

    @RequestMapping(value = "/createRestaurant", method = RequestMethod.POST)
    public ModelAndView createRestaurant(MultipartContainer multipartContainer, Restaurant restaurant) throws IOException {

        MultipartFile[] multipartFile = multipartContainer.getMultipartFile();
        String path = "./";
        
        String fileName = multipartFile[0].getOriginalFilename();
        File file = new File(path, fileName);
        multipartFile[0].transferTo(file);
        
        String fileName2 = multipartFile[1].getOriginalFilename();
        File file2 = new File(path, fileName2);
        multipartFile[1].transferTo(file2);
        
        final Client client = ClientBuilder.newBuilder().register(MultiPartFeature.class).build();
        final FileDataBodyPart filePart = new FileDataBodyPart("avatar", file);
        final FileDataBodyPart filePart2 = new FileDataBodyPart("licenseImage", file2);
        FormDataMultiPart formDataMultiPart = new FormDataMultiPart();
        formDataMultiPart.bodyPart(filePart);
        formDataMultiPart.bodyPart(filePart2);
        final FormDataMultiPart multipart = (FormDataMultiPart) formDataMultiPart.field("restaurant", restaurant, MediaType.APPLICATION_JSON_TYPE);
        final WebTarget target = client.target("http://localhost:9032/Restaurant/");
        final Response response = target.request()
                .header("authorization", CookieHelper.getCookie("accessToken"))
                .post(Entity.entity(multipart, MediaType.MULTIPART_FORM_DATA));
        file.delete();
        file2.delete();

        return mystore();
    }

}
