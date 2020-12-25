package org.example.controller;


import org.example.PostService;
import org.example.domain.entity.Post;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.sql.SQLException;

@Controller
@RequestMapping("/admin")
public class AdminController {

    private final PostService postService;

    @Autowired
    public AdminController(PostService postService) {
        this.postService = postService;
    }


    @GetMapping("/add")
    public String add() {
        return "adminpage";
    }



    @PostMapping(value = "/add")
    public String add(Post post, RedirectAttributes redirectAttributes) throws SQLException {
        int id = postService.save(post);
        if(id > 0){
            redirectAttributes.addFlashAttribute("msg", "Пост добавулен успешно !!!");
        } else {
            redirectAttributes.addFlashAttribute("msg1", "Возникла ошибка при добавлении поста !!!");
        }

        return "redirect:/admin/add";
    }



}
