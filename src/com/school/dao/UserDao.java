package com.school.dao;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import com.school.model.User;

@Repository
public class UserDao {

	@PersistenceContext
	private EntityManager mg;

	public boolean userExist(User user) {
		TypedQuery<User> query = mg
				.createQuery("SELECT u FROM User as u WHERE login = :paramLogin AND pass = :paramPass", User.class);
		query.setParameter("paramLogin", user.getLogin());
		query.setParameter("paramPass", user.getPass());

		try {
			User userr = query.getSingleResult();
			if (userr == null) {
				return false;
			} else {
				return true;
			}
		} catch (NoResultException e) {
			e.printStackTrace();
			return false;
		}
	}
}
