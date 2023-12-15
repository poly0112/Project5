package com.example.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value = "/login")
public class LoginController {

    @Autowired
    UserService userService;

    @RequestMapping(value="/login")
    public String login(Model model) {
        return "login";
    }

    //로그인
    @RequestMapping(value="/loginOk", method = RequestMethod.POST)
    public String loginCheck(HttpSession session, UserVO vo) {
        String returnURL = "";
        //세션에 로그인 정보가 있을 경우
        if(session.getAttribute("login") != null) {
            session.removeAttribute("login");
        }

        UserVO loginvo = userService.getUser(vo);
        //로그인 성공 시
        if(loginvo != null) {
            System.out.println("로그인 성공");
            session.setAttribute("login", loginvo);
            returnURL = "redirect:/board/list";
        }
        //로그인 실패 시
        else {
            System.out.println("로그인 실패");
            returnURL = "redirect:/login/login";
        }
        return returnURL;
    }

    //로그아웃
    @RequestMapping(value = "/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login/login";
    }

}
