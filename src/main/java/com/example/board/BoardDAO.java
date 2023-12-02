package com.example.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.RowMapperResultSetExtractor;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BoardDAO {
    @Autowired
    JdbcTemplate jdbcTemplate;

    public int insertBoard(BoardVO vo){
        String sql="insert into BOARD2(title,writer,category,content) values("
                +"'"+vo.getTitle()+"',"
                +"'"+vo.getWriter()+"',"
                +"'"+vo.getCategory()+"',"
                +"'"+vo.getContent()+"')";
        System.out.println(vo.getSeq());
        return jdbcTemplate.update(sql);
    }
    public int deleteBoard(int seq){
        String sql="delete from BOARD2 where seq = "+seq;
        return jdbcTemplate.update(sql);
    }
    public int updateBoard(BoardVO vo){
        String sql="update BOARD2 set title='" + vo.getTitle() +"',"
                +" writer='" +vo.getWriter() +"',"
                +" category='" +vo.getCategory() +"',"
                +" content='" +vo.getContent() +"' where seq= "+vo.getSeq();
        return jdbcTemplate.update(sql);
   }
    public BoardVO getBoard(int seq){
        String sql="select * from BOARD2 where seq=" + seq;
        return jdbcTemplate.queryForObject(sql,new BoardRowMapper());
    }
    public List<BoardVO> getBoardList(){
        String sql="select * from BOARD2 order by seq desc";
        List<BoardVO> list= jdbcTemplate.query(sql, new BoardRowMapper());
        return list;
    }

}
