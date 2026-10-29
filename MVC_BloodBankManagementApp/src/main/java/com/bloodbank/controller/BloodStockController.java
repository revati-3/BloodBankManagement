package com.bloodbank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bloodbank.model.BloodStock;
import com.bloodbank.service.BloodStockService;

@Controller
public class BloodStockController {

    @Autowired
    private BloodStockService bloodStockService;

    @RequestMapping("/bloodStock")
    public String bloodStockForm() {
        return "blood-stock";
    }

    @RequestMapping("/addBloodStock")
    public String addBloodStock(BloodStock bs) {

        boolean status = bloodStockService.addStock(bs);

        if (status) {
            return "blood-stock-success";
        } else {
            return "error";
        }
    }

    @RequestMapping("/viewBloodStock")
    public String viewBloodStock(Model model) {

        List<BloodStock> stock =
                bloodStockService.getAllStock();

        model.addAttribute("stock", stock);

        return "blood-stock-list";
    }
   
    @RequestMapping("/editBloodStock")
    public String editBloodStock(int id, Model model) {

        BloodStock bs = bloodStockService.getStockById(id);

        model.addAttribute("bloodStock", bs);

        return "blood-stock-edit";
    }
    @RequestMapping("/updateBloodStock")
    public String updateBloodStock(BloodStock bs) {

        boolean status = bloodStockService.updateStock(bs);

        if (status) {
            return "success";
        } else {
            return "error";
        }
    }
    @RequestMapping("/deleteBloodStock")
    public String deleteBloodStock(int id) {

        boolean status = bloodStockService.deleteStock(id);

        if (status) {
            return "redirect:/viewBloodStock";
        } else {
            return "error";
        }
    }
}