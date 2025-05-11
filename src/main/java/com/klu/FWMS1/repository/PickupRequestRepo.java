package com.klu.FWMS1.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.klu.FWMS1.model.*;

public interface PickupRequestRepo extends JpaRepository<PickupRequest, Long> {
}

