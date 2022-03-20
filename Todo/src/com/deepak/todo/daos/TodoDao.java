package com.deepak.todo.daos;

import java.sql.SQLException;
import java.util.List;

import com.deepak.todo.pojos.Todo;

public interface TodoDao {

	void insertTodo(Todo todo) throws SQLException;

	Todo selectTodo(long todoId);

	List<Todo> selectAllTodos(String username);

	boolean deleteTodo(int id) throws SQLException;

	boolean updateTodo(Todo todo) throws SQLException;

}