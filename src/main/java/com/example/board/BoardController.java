package com.example.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board")
public class BoardController {

    @Autowired
    BoardService boardService;
    @RequestMapping("/list")
    public String boardlist(Model model){
        model.addAttribute("list",boardService.getBoardList());
        return "list";
    }
    @RequestMapping("/add")
    public String addPost(){
        return "addpostform";
    }
    @RequestMapping("/addok")
    public String addPostOk(BoardVO vo){
        if(boardService.insertBoard(vo)== 0)
            System.out.println("데이터 추가 실패");
        else
            System.out.println("데이터 추가 성공!!!");
        return "redirect:list";
    }
    @RequestMapping("/editform/{id}")
    public String editPost(@PathVariable("id")int id, Model model){
        BoardVO boardVO = boardService.getBoard(id);
        model.addAttribute("u",boardVO);
        return "editform";
    }
    @RequestMapping("/view/{id}")
    public String viewPost(@PathVariable("id")int id, Model model){
        BoardVO boardVO = boardService.getBoard(id);
        model.addAttribute("u",boardVO);
        return "view";
    }
    @RequestMapping("/editok")
    public String editPostOk(BoardVO vo){
        if(boardService.updateBoard(vo)== 0)
            System.out.println("데이터 수정 실패");
        else
            System.out.println("데이터 수정 성공!!!");
        return "redirect:list";
    }
    @RequestMapping("/deleteok/{id}")
    public String deletePostOk(@PathVariable("id") int id){
        if(boardService.deleteBoard(id)== 0)
            System.out.println("데이터 삭제 실패");
        else
            System.out.println("데이터 삭제 성공!!!");
        return "redirect:../list";
    }
}
