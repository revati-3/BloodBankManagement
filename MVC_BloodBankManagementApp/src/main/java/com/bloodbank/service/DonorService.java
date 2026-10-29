package com.bloodbank.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bloodbank.dao.DonorDAO;
import com.bloodbank.model.Donor;
import java.util.List;

@Service
public class DonorService {

    @Autowired
    private DonorDAO donorDAO;

    public boolean addDonor(Donor d) {
        return donorDAO.addDonor(d);
    }
    public List<Donor> getAllDonors() {
        return donorDAO.getAllDonors();
    }
    public List<Donor> searchByBloodGroup(String bloodGroup) {
        return donorDAO.searchByBloodGroup(bloodGroup);
    }
    public Donor getDonorById(int id) {
        return donorDAO.getDonorById(id);
    }
    public boolean updateDonor(Donor d) {
        return donorDAO.updateDonor(d);
    }
    public boolean deleteDonor(int id) {
        return donorDAO.deleteDonor(id);
    }
}