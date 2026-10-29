package com.bloodbank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bloodbank.model.Donor;
import com.bloodbank.service.DonorService;

@Controller
public class DonorController {

    @Autowired
    private DonorService donorService;

    @RequestMapping("/")
    public String home() {
        return "index";
    }

    @RequestMapping("/donorForm")
    public String donorForm() {
        return "donor-form";
    }

    @RequestMapping("/addDonor")
    public String addDonor(Donor d) {

        boolean status = donorService.addDonor(d);

        if (status) {
            return "success";
        } else {
            return "error";
        }
    }

    @RequestMapping("/viewDonors")
    public String viewDonors(Model model) {

        List<Donor> donors = donorService.getAllDonors();

        model.addAttribute("donors", donors);

        return "donor-list";
    }

    @RequestMapping("/editDonor")
    public String editDonor(int id, Model model) {

        Donor d = donorService.getDonorById(id);

        model.addAttribute("donor", d);

        return "update-donor";
    }

    @RequestMapping("/updateDonor")
    public String updateDonor(Donor d) {

        boolean status = donorService.updateDonor(d);

        if (status) {
            return "redirect:/viewDonors";
        } else {
            return "error";
        }
    }

    @RequestMapping("/deleteDonor")
    public String deleteDonor(int id) {

        boolean status = donorService.deleteDonor(id);

        if (status) {
            return "redirect:/viewDonors";
        } else {
            return "error";
        }
    }

    @RequestMapping("/searchDonor")
    public String searchDonor(String bloodGroup, Model model) {

        List<Donor> donors =
                donorService.searchByBloodGroup(bloodGroup);

        model.addAttribute("donors", donors);

        return "donor-list";
    }
}