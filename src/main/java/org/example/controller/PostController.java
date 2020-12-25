package org.example.controller;


import org.example.PostService;
import org.example.domain.entity.Post;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.sql.SQLException;

@Controller
@RequestMapping("/post")
public class PostController {
    private final PostService service;

    @Autowired
    public PostController(PostService service) {
        this.service = service;
    }


    @GetMapping("/{id}")
    public String post(@PathVariable Integer id, Model model) throws SQLException {
        Post post = service.findById(id);
        model.addAttribute("postName", post.getPostName());
        model.addAttribute("postTheme", post.getPostTheme());
        model.addAttribute("publicationDate", post.getPublicationDate());
        model.addAttribute("postAuthor", post.getPostAuthor());
        model.addAttribute("post", post.getPostBody());
        return "post";
    }
}
