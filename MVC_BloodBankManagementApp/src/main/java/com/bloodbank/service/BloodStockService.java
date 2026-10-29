package com.bloodbank.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.bloodbank.dao.BloodStockDAO;
import com.bloodbank.model.BloodStock;

@Service
public class BloodStockService {

    private BloodStockDAO bloodStockDAO = new BloodStockDAO();

    public boolean addStock(BloodStock bs) {
        return bloodStockDAO.addStock(bs);
    }

    public List<BloodStock> getAllStock() {
        return bloodStockDAO.getAllStock();
    }
    public boolean updateStock(BloodStock bs) {
        return bloodStockDAO.updateStock(bs);
    }
    public BloodStock getStockById(int id) {
        return bloodStockDAO.getStockById(id);
    }
    public boolean deleteStock(int id) {
        return bloodStockDAO.deleteStock(id);
    }
}