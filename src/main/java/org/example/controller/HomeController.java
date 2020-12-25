package org.example.controller;


import org.example.PostService;
import org.example.domain.entity.Post;
import org.example.domain.entity.PostTransfer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.sql.SQLException;
import java.util.List;

@Controller
@RequestMapping("/")
public class HomeController {
    private final PostService service;

    @Autowired
    public HomeController(PostService service) {
        this.service = service;
    }

    @GetMapping("/")
    public String index(PostTransfer postTransfer, Model model) throws SQLException {
        PostTransfer postTransfer1 = service.findPostDatabase(postTransfer);
        List<Post> postList = postTransfer1.getPostList();
        for (int i = 0; i < postList.size(); i++) {
            Post post = postList.get(i);
            model.addAttribute("id"+ (i +1), post.getId());
            model.addAttribute("postName" + (i + 1), post.getPostName());
            model.addAttribute("postTheme" + (i + 1), post.getPostTheme());
            model.addAttribute("publicationDate" + (i + 1), post.getPublicationDate());
            model.addAttribute("postAuthor" + (i + 1), post.getPostAuthor());
        }

        model.addAttribute("startPosition", postTransfer1.getStartPosition());
        model.addAttribute("postPosition", postTransfer1.getPostPosition());
        model.addAttribute("countLines", postTransfer1.getCountLines());
        return "home";
    }

}
