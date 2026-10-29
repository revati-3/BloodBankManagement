package com.bloodbank.service;

import com.bloodbank.dao.BloodRequestDAO;
import com.bloodbank.model.BloodRequest;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class BloodRequestService {

    private BloodRequestDAO bloodRequestDAO = new BloodRequestDAO();

    public boolean addRequest(BloodRequest br) {
        return bloodRequestDAO.addRequest(br);
    }
    public List<BloodRequest> getAllRequests() {
        return bloodRequestDAO.getAllRequests();
    }
    public BloodRequest getBloodRequestById(int id) {
        return bloodRequestDAO.getBloodRequestById(id);
    }
    public boolean updateBloodRequest(BloodRequest br) {
        return bloodRequestDAO.updateBloodRequest(br);
    }

    public boolean deleteBloodRequest(int id) {
        return bloodRequestDAO.deleteBloodRequest(id);
    }
}