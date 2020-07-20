

package controllers;

import java.io.File;
import java.io.IOException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class UtilController {
    
    @RequestMapping(value = "/util/upload", method = RequestMethod.POST,consumes = "multipart/form-data",produces = "application/json")
    @ResponseBody
    public String upload(@RequestParam("file") MultipartFile file) throws IOException{
//        String fileName = file.getOriginalFilename();
//        String path = "./";
//        File tempFile = new File(path, fileName);
//        System.out.println(tempFile.getAbsolutePath());
//        file.transferTo(tempFile);
        return "";
    }
}
