package controllers;

import Nghia.Util.CookieHelper;
import Nghia.Util.MultipartContainer;
import Nghia.Util.RESTHelper;
import Nghia.Util.RESTUserHelper;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import models.Cart;
import models.User;
import org.glassfish.jersey.media.multipart.FormDataMultiPart;
import org.glassfish.jersey.media.multipart.MultiPartFeature;
import org.glassfish.jersey.media.multipart.file.FileDataBodyPart;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {

    private final RESTUserHelper restUser;

    public UserController() throws InstantiationException, IllegalAccessException {
        restUser = new RESTUserHelper(User.class);
    }

    @RequestMapping(value = "/user-info")
    public ModelAndView userinfo() throws IOException {
        Map<String, ?> user = restUser.getMyUser();
        return new ModelAndView("user-info").addObject("user", user);
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

    @RequestMapping(value = "/addToCart", method = RequestMethod.POST)
    @ResponseBody
    public String addToCart(Cart cart) {
        return restUser.addToCart(cart);
    }

    @RequestMapping(value = "/removeFromCart/{id}", method = RequestMethod.POST)
    public ModelAndView removeFromCart(@PathVariable("id") String id) throws IOException {
        restUser.removeFromCart(id);
        return cart();
    }

    @RequestMapping(value = "/cart", method = RequestMethod.GET)
    public ModelAndView cart() throws IOException {
        Map<String, ?> user = restUser.getCart();
        return new ModelAndView("cart").addObject("user", user);
    }

    @RequestMapping(value = "/detail-order", method = RequestMethod.GET)
    public ModelAndView detailorder() throws IOException {

        return new ModelAndView("detail-order");
    }
    @RequestMapping(value = "/status-order", method = RequestMethod.GET)
    public ModelAndView statusorder() throws IOException {

        return new ModelAndView("status-order");
    }

    @RequestMapping(value = "/updateUser")
    public void update(MultipartContainer multipartContainer, User user, HttpServletResponse response) throws IOException, ServletException {
        MultipartFile[] multipartFile = multipartContainer.getMultipartFile();
        String path = "./";
        FileDataBodyPart filePart;

        Client client = ClientBuilder.newBuilder().register(MultiPartFeature.class).build();
        FormDataMultiPart formDataMultiPart = new FormDataMultiPart();
        String fileName = multipartFile[0].getOriginalFilename();
        File file = new File(path, fileName);
        if (fileName != "") {
            multipartFile[0].transferTo(file);
            filePart = new FileDataBodyPart("avatar", file);
            formDataMultiPart.bodyPart(filePart);
        }
        final FormDataMultiPart multipart = (FormDataMultiPart) formDataMultiPart.field("user", user, MediaType.APPLICATION_JSON_TYPE);
        final WebTarget target = client.target("http://localhost:9032/User/");
        final String responseJSON = target.request()
                .header("authorization", CookieHelper.getCookie("accessToken"))
                .put(Entity.entity(multipart, MediaType.MULTIPART_FORM_DATA), String.class);
        if (fileName != "") {
            file.delete();
        }
        response.sendRedirect("/login");
    }
}
