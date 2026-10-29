package com.bloodbank.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bloodbank.model.BloodStock;

public class BloodStockDAO {

    public boolean addStock(BloodStock bs) {

        boolean status = false;

        try {

            Connection con = DBConnection.getConnection();

            String sql = "INSERT INTO blood_stock (blood_group, units) VALUES (?, ?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, bs.getBloodGroup());
            ps.setInt(2, bs.getUnits());

            int result = ps.executeUpdate();

            if (result > 0) {
                status = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }


    public List<BloodStock> getAllStock() {

        List<BloodStock> list = new ArrayList<>();

        try {

            Connection con = DBConnection.getConnection();

            String sql = "SELECT * FROM blood_stock";

            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                BloodStock bs = new BloodStock();

                bs.setId(rs.getInt("id"));
                bs.setBloodGroup(rs.getString("blood_group"));
                bs.setUnits(rs.getInt("units"));

                list.add(bs);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
    public boolean updateStock(BloodStock bs) {

        boolean status = false;

        try {

            Connection con = DBConnection.getConnection();

            String sql = "UPDATE blood_stock SET blood_group=?, units=? WHERE id=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, bs.getBloodGroup());
            ps.setInt(2, bs.getUnits());
            ps.setInt(3, bs.getId());

            int result = ps.executeUpdate();

            if (result > 0) {
                status = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
    public boolean deleteStock(int id) {

        boolean status = false;

        try {

            Connection con = DBConnection.getConnection();

            String sql = "DELETE FROM blood_stock WHERE id=?";

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
    public BloodStock getStockById(int id) {

        BloodStock bs = null;

        try {

            Connection con = DBConnection.getConnection();

            String sql = "SELECT * FROM blood_stock WHERE id=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                bs = new BloodStock();

                bs.setId(rs.getInt("id"));
                bs.setBloodGroup(rs.getString("blood_group"));
                bs.setUnits(rs.getInt("units"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return bs;
    }
}