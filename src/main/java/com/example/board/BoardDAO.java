package com.example.board;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.RowMapperResultSetExtractor;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BoardDAO {
    @Autowired
    SqlSession sQlSession;
    public int insertBoard(BoardVO vo){
        int result =sQlSession.insert("Board.insertBoard",vo);
        return result;
    }
    public int deleteBoard(int id){
        int result =sQlSession.delete("Board.deleteBoard",id);
        return result;
    }
    public int updateBoard(BoardVO vo){
        int result =sQlSession.update("Board.updateBoard",vo);
        return result;
   }
    public BoardVO getBoard(int id){
        BoardVO one =sQlSession.selectOne("Board.getBoard",id);
        return one;
    }
    public List<BoardVO> getBoardList(){
        List<BoardVO> list=sQlSession.selectList("Board.getBoardlist");
        return list;
    }

}
