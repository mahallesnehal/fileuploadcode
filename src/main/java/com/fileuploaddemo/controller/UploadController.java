package com.fileuploaddemo.controller;


import java.io.File;
import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class UploadController {
	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public String upload(@RequestParam("txtUname") String username, @RequestParam("profilepic") 
	MultipartFile file,Model m) {

		try {
			String destpath = "D:\\SpringBoot\\com.fileuploaddemo\\src\\main"
					+ "\\webapp\\WEB-INF\\images";

			File serverfile = new File(destpath, file.getOriginalFilename());
			file.transferTo(serverfile);

			m.addAttribute("FILENAME", file.getOriginalFilename());
			m.addAttribute("USERNAME", username);

			return "success";

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			m.addAttribute("Exception", e);
			return "error";
		}

	}

}
