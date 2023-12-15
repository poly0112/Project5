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
    public int deleteBoard(int seq){
        int result =sQlSession.delete("Board.deleteBoard", seq);
        return result;
    }
    public int updateBoard(BoardVO vo){
        int result =sQlSession.update("Board.updateBoard",vo);
        return result;
   }
    public BoardVO getBoard(int seq){
        BoardVO one =sQlSession.selectOne("Board.getBoard",seq);
        return one;
    }
    public List<BoardVO> getBoardList(){
        List<BoardVO> list=sQlSession.selectList("Board.getBoardlist");
        return list;
    }

}
