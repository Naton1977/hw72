package org.example;


import org.example.dao.PostDao;
import org.example.domain.entity.Post;
import org.example.domain.entity.PostTransfer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

@Service
public class PostService {
    private final PostDao service;

    @Autowired
    public PostService(PostDao service) {
        this.service = service;
    }


    public PostTransfer findPostDatabase(PostTransfer postTransfer) throws SQLException {
        PostTransfer postTransfer1 = new PostTransfer();
        if (postTransfer.getPostNewer() == 0 || postTransfer.getPostOlder() == 0) {
            postTransfer1.setStartPosition(0);
        }
        if (postTransfer.getPostNewer() > 0) {
            postTransfer1.setStartPosition(postTransfer.getPostNewer());
        }
        if(postTransfer.getPostOlder() > 0){
            int temp = postTransfer.getPostOlder();
            if (temp % 3 == 1) {
                postTransfer1.setStartPosition(postTransfer.getPostOlder() - 4);
            }
            if (temp % 3 == 2) {
                postTransfer1.setStartPosition(postTransfer.getPostOlder() - 5);
            }

            if (temp % 3 == 0) {
                postTransfer1.setStartPosition(postTransfer.getPostOlder() - 6);
            }
        }
        postTransfer1.setCountLines(service.countLines());
        return service.findPostDatabase(postTransfer1);
    }


    public Integer countLines() throws SQLException {
        return service.countLines();
    }


    public Integer save(Post data) throws SQLException {
        return service.save(data);
    }


    public List<Post> findAll() throws SQLException {
        return service.findAll();
    }


    public Post findById(Integer integer) throws SQLException {
        return service.findById(integer);
    }


    public void delete(Integer integer) throws SQLException {
        service.delete(integer);
    }


    public Post update(Post data) throws SQLException {
        return service.update(data);
    }
}
