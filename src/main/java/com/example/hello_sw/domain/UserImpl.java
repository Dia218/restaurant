package com.example.hello_sw.domain;

import java.sql.*;

public class UserImpl {
    private Connection con;
    private ResultSet rs;

    public UserImpl() { //maria db 연동
        try {
            Class.forName("org.mariadb.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mariadb://127.0.0.1:3306", "root", "1004rornfl");
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    /*로그인*/
    // -2: id 없음 / -1: 서버 오류 / 0: 비밀번호 틀림 / 1: 성공
    public int login(String id, String password) {
        try {
            PreparedStatement pst = con.prepareStatement("SELECT password FROM user_inform.user_login WHERE id = ?");
            pst.setString(1, id);
            rs = pst.executeQuery();
            if (rs.next()) {
                return rs.getString(1).equals(password) ? 1 : 0;
            } else {
                return -2;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }
    /*회원가입*/
    public boolean ID_Check(String id) {
        try {
            PreparedStatement pst = con.prepareStatement("SELECT * FROM user_inform.user_login WHERE id = ?");
            pst.setString(1, id);
            rs = pst.executeQuery();
            if(rs.next()) {
                return false;
            }else {
                return true;
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return false;

    }
    // -1 : 서버 오류 / 0: 이미 존재 하는 id / 1: 성공
    public int join(User user) {
        if(!ID_Check(user.getId())) return 0;
        try {
            PreparedStatement pst = con.prepareStatement("INSERT INTO user_inform.user_login VALUES (?,?,?,?,?,?)");
            pst.setString(1, user.getId());
            pst.setString(2, user.getPassword());
            pst.setString(3, user.getName());
            pst.setString(4, user.getPhone_number());
            pst.setString(5, user.getGender());
            pst.setInt(6, user.getAge());
            return pst.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    public User getUser(String userID) {
        try {
            PreparedStatement pst = con.prepareStatement("SELECT * FROM user_inform.user_login Where id = ?");
            pst.setString(1, userID);
            rs = pst.executeQuery();
            if(rs.next()) {
                User user= new User();
                user.setId(rs.getString(1));
                user.setPassword(rs.getString(2));
                user.setName(rs.getString(3));
                user.setPhone_number(rs.getString(4));
                user.setGender(rs.getString(5));
                user.setAge(rs.getInt(6));
                return user;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
