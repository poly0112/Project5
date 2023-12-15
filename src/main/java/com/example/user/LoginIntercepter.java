package com.example.user;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginIntercepter extends HandlerInterceptorAdapter {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception{
        HttpSession session = request.getSession();
        Object obj = session.getAttribute("login");
        //해당 페이지에서 사용자의 상태가 로그인이 안 돼있는 경우
        if(obj == null) {
            response.sendRedirect(request.getContextPath() + "/login/loginn"); //login 페이지로 이동
            return false;
        }

        //정상
        return true;
    }
}
