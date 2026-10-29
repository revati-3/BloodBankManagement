package com.bloodbank.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bloodbank.model.BloodRequest;
import com.bloodbank.service.BloodRequestService;

import java.util.List;
import org.springframework.ui.Model;
import com.bloodbank.model.BloodRequest;

@Controller
public class BloodRequestController {

    @Autowired
    private BloodRequestService bloodRequestService;

    @RequestMapping("/bloodRequest")
    public String bloodRequestForm() {
        return "blood-request";
    }
    
    @RequestMapping("/addBloodRequest")
    public String addBloodRequest(BloodRequest br) {

        boolean status = bloodRequestService.addRequest(br);

        if (status) {
            return "blood-request-success";
        } else {
            return "error";
        }
    }
    @RequestMapping("/viewBloodRequests")
    public String viewBloodRequests(Model model) {

        List<BloodRequest> requests =
                bloodRequestService.getAllRequests();

        model.addAttribute("requests", requests);

        return "blood-request-list";
    }
    
    @RequestMapping("/editBloodRequest")
    public String editBloodRequest(int id, Model model) {

        BloodRequest br = bloodRequestService.getBloodRequestById(id);

        model.addAttribute("bloodRequest", br);

        return "blood-request-edit";
    }
    @RequestMapping("/updateBloodRequest")
    public String updateBloodRequest(BloodRequest br) {

        boolean status = bloodRequestService.updateBloodRequest(br);

        if (status) {
            return "redirect:/viewBloodRequests";
        } else {
            return "error";
        }
    }
        @RequestMapping("/deleteBloodRequest")
        public String deleteBloodRequest(int id) {

            boolean status = bloodRequestService.deleteBloodRequest(id);

            if (status) {
                return "redirect:/viewBloodRequests";
            } else {
                return "error";
            }
        }
    }
