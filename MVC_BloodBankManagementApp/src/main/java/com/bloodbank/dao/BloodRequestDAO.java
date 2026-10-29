package com.bloodbank.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.bloodbank.model.BloodRequest;
import java.sql.*;
import java.util.*;

public class BloodRequestDAO {

    public boolean addRequest(BloodRequest br) {

        boolean status = false;

        try {

            Connection con = DBConnection.getConnection();

            String sql = "INSERT INTO blood_request "
                    + "(patient_name, blood_group, required_units, mobile, hospital, city) "
                    + "VALUES (?, ?, ?, ?, ?, ?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, br.getPatientName());
            ps.setString(2, br.getBloodGroup());
            ps.setInt(3, br.getRequiredUnits());
            ps.setString(4, br.getMobile());
            ps.setString(5, br.getHospital());
            ps.setString(6, br.getCity());

            int result = ps.executeUpdate();

            if (result > 0) {
                status = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
    public List<BloodRequest> getAllRequests() {

        List<BloodRequest> list = new ArrayList<>();

        try {

            Connection con = DBConnection.getConnection();

            String sql = "SELECT * FROM blood_request";

            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                BloodRequest br = new BloodRequest();

                br.setId(rs.getInt("id"));
                br.setPatientName(rs.getString("patient_name"));
                br.setBloodGroup(rs.getString("blood_group"));
                br.setRequiredUnits(rs.getInt("required_units"));
                br.setMobile(rs.getString("mobile"));
                br.setHospital(rs.getString("hospital"));
                br.setCity(rs.getString("city"));

                list.add(br);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
    public BloodRequest getBloodRequestById(int id) {

        BloodRequest br = null;

        try {

            Connection con = DBConnection.getConnection();

            String sql = "SELECT * FROM blood_request WHERE id=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                br = new BloodRequest();

                br.setId(rs.getInt("id"));
                br.setPatientName(rs.getString("patient_name"));
                br.setBloodGroup(rs.getString("blood_group"));
                br.setRequiredUnits(rs.getInt("required_units"));
                br.setMobile(rs.getString("mobile"));
                br.setHospital(rs.getString("hospital"));
                br.setCity(rs.getString("city"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return br;
    }
    public boolean updateBloodRequest(BloodRequest br) {

        boolean status = false;

        try {

            Connection con = DBConnection.getConnection();

            String sql = "UPDATE blood_request SET patient_name=?, blood_group=?, required_units=?, mobile=?, hospital=?, city=? WHERE id=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, br.getPatientName());
            ps.setString(2, br.getBloodGroup());
            ps.setInt(3, br.getRequiredUnits());
            ps.setString(4, br.getMobile());
            ps.setString(5, br.getHospital());
            ps.setString(6, br.getCity());
            ps.setInt(7, br.getId());

            int result = ps.executeUpdate();

            if (result > 0) {
                status = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
    public boolean deleteBloodRequest(int id) {

        boolean status = false;

        try {

            Connection con = DBConnection.getConnection();

            String sql = "DELETE FROM blood_request WHERE id=?";

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