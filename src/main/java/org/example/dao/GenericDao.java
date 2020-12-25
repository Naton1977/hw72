package org.example.dao;

import java.sql.SQLException;
import java.util.List;

public interface GenericDao<T, ID> {
    ID save(T data) throws SQLException;
    List<T> findAll() throws SQLException;
    T findById(ID id) throws SQLException;
    void delete(ID id) throws SQLException;
    T update(T data) throws SQLException;
}
