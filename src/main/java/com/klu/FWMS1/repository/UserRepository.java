package com.klu.FWMS1.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klu.FWMS1.model.*;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);

	User findByEmail(String email);
}
