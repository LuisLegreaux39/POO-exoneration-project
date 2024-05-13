/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package rtb.jsp.crud.mnv.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import rtb.jsp.crud.mnv.Config.CConnection;
import rtb.jsp.crud.mnv.interfaces.Crud;
import rtb.jsp.crud.mnv.model.Item;
import rtb.jsp.crud.mnv.model.Shipment;

/**
 *
 * @author PC
 */
public class ShipmentsDao implements Crud<Shipment> {

    CConnection cn = new CConnection();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    public ResultSet extractInformationForReport(int customer_id) {
        ArrayList<Item> list = new ArrayList<>();
        String sql = "SELECT s.shipment_date, s.seller, s.`type` , s.amount, i.price,i.name as itemName  FROM shipments as s JOIN customer as c ON s.customer_id = c.id  JOIN item as i ON s.item_id = i.id WHERE c.id =" + customer_id;
        System.out.println(sql);
        try {
            con = cn.getConnetion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            return rs;
        } catch (SQLException e) {
            System.err.println(e);
        }
        return null;
    }

    public List<Item> findCustomerShipList(int customer_id) {
        ArrayList<Item> list = new ArrayList<>();
        String sql = "SELECT i.name as name, i.photo as photo, i.`type` as type,i.price as price FROM shipments as s JOIN customer as c ON s.customer_id = c.id  JOIN item as i ON s.item_id = i.id WHERE c.id =" + customer_id;
        System.out.println(sql);
        try {
            con = cn.getConnetion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Item item = new Item();
                item.setName(rs.getString("name"));
                item.setPhoto(rs.getString("photo"));
                item.setPrice(rs.getString("price"));
                item.setType(rs.getString("type"));
                list.add(item);
            }
        } catch (SQLException e) {
            System.err.println(e);
        }
        return list;
    }

    public boolean addShipment(int customer_id, int item_id, int amount) {
        String sql = "INSERT INTO shipments(customer_id,item_id,shipment_date ,seller ,type,amount) VALUES (" + customer_id + "," + item_id + ",CURRENT_DATE,'admin','electronico'," + amount + ")";

        try {
            con = cn.getConnetion();
            Statement st = con.createStatement();
            st.executeUpdate(sql);
            return true;
        } catch (SQLException e) {
            System.err.println(e);
        }
        return false;

    }

    @Override
    public List<Shipment> findAll() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Shipment findById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean add(Shipment record) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean update(Shipment record) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean deleteById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
