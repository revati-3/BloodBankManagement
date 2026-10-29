package com.bloodbank.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.bloodbank.model.Donor;

import org.springframework.stereotype.Repository;
import java.sql.*;
import java.util.*;

@Repository
public class DonorDAO {

    public boolean addDonor(Donor d) {

        boolean status = false;

        try {
            Connection con = DBConnection.getConnection();

            String sql = "INSERT INTO donor(name, blood_group, mobile, email, city) VALUES (?, ?, ?, ?, ?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, d.getName());
            ps.setString(2, d.getBloodGroup());
            ps.setString(3, d.getMobile());
            ps.setString(4, d.getEmail());
            ps.setString(5, d.getCity());

            int result = ps.executeUpdate();

            if (result > 0) {
                status = true;
            }

            ps.close();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
    public List<Donor> getAllDonors() {

        List<Donor> list = new ArrayList<>();

        try {
            Connection con = DBConnection.getConnection();

            String sql = "SELECT * FROM donor";

            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
            	System.out.println("Donor found: " + rs.getString("name"));
                Donor d = new Donor();

                d.setId(rs.getInt("id"));
                d.setName(rs.getString("name"));
                d.setBloodGroup(rs.getString("blood_group"));
                d.setMobile(rs.getString("mobile"));
                d.setEmail(rs.getString("email"));
                d.setCity(rs.getString("city"));

                list.add(d);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
    public List<Donor> searchByBloodGroup(String blood_Group) {

        List<Donor> list = new ArrayList<>();

        try {

            Connection con = DBConnection.getConnection();

            String sql = "SELECT * FROM donor WHERE blood_group=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, blood_Group);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Donor d = new Donor();

                d.setId(rs.getInt("id"));
                d.setName(rs.getString("name"));
                d.setBloodGroup(rs.getString("blood_group"));
                d.setMobile(rs.getString("mobile"));
                d.setEmail(rs.getString("email"));
                d.setCity(rs.getString("city"));

                list.add(d);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
    public Donor getDonorById(int id) {

        Donor d = null;

        try {

            Connection con = DBConnection.getConnection();

            String sql = "SELECT * FROM donor WHERE id=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                d = new Donor();

                d.setId(rs.getInt("id"));
                d.setName(rs.getString("name"));
                d.setBloodGroup(rs.getString("bloodGroup"));
                d.setMobile(rs.getString("mobile"));
                d.setEmail(rs.getString("email"));
                d.setCity(rs.getString("city"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return d;
    }
    public boolean updateDonor(Donor d) {

        boolean status = false;

        try {

            Connection con = DBConnection.getConnection();

            String sql = "UPDATE donor SET name=?, blood_group=?, mobile=?, email=?, city=? WHERE id=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, d.getName());
            ps.setString(2, d.getBloodGroup());
            ps.setString(3, d.getMobile());
            ps.setString(4, d.getEmail());
            ps.setString(5, d.getCity());
            ps.setInt(6, d.getId());

            int result = ps.executeUpdate();

            if (result > 0) {
                status = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
    public boolean deleteDonor(int id) {

        boolean status = false;

        try {

            Connection con = DBConnection.getConnection();

            String sql = "DELETE FROM donor WHERE id=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, id);

            int result = ps.executeUpdate();

            if (result > 0) {
                status = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
}