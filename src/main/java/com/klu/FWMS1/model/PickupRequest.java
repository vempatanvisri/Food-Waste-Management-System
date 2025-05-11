package com.klu.FWMS1.model;


import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
public class PickupRequest {

    public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public LocalDateTime getPickupTime() {
		return pickupTime;
	}
	public void setPickupTime(LocalDateTime pickupTime) {
		this.pickupTime = pickupTime;
	}
	public String getVehicleType() {
		return vehicleType;
	}
	public void setVehicleType(String vehicleType) {
		this.vehicleType = vehicleType;
	}
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private String location;
    private String contact;
    private int quantity;
    private LocalDateTime pickupTime;
    private String vehicleType;

    // Getters and Setters
    // (You can use Lombok's @Data if preferred)
}
