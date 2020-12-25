package org.example.dao;

import org.example.domain.entity.Post;
import org.example.domain.entity.PostTransfer;

import java.sql.Connection;
import java.sql.SQLException;

public interface PostDao extends GenericDao<Post, Integer> {
    PostTransfer findPostDatabase(PostTransfer postTransfer) throws SQLException;
    Integer countLines()throws SQLException;
}
