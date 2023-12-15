package com.example.board;


import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

class BoardRowMapper implements RowMapper<BoardVO> {
    @Override
    public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
        BoardVO vo = new BoardVO();
        vo.setId(rs.getInt("id"));
        vo.setName(rs.getString("name"));
        vo.setAge(rs.getString("age"));
        vo.setGender(rs.getString("gender"));
        vo.setPhone(rs.getString("phone"));
        vo.setReservation(rs.getDate("reservation"));
        vo.setTiket(rs.getInt("tiket"));
        vo.setRegdate(rs.getDate("regdate"));
        return vo;
    }
}