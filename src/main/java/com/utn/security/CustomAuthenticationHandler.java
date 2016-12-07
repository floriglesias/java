package com.utn.security;

import java.io.IOException;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;

public class CustomAuthenticationHandler extends SimpleUrlAuthenticationSuccessHandler {
	 
	 @Override
	 public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws ServletException, IOException {
	      String userTargetUrl = "/user/profile.jsp";
	      String adminTargetUrl = "/admin/dashboard.jsp";
	      Set<String> roles = AuthorityUtils.authorityListToSet(authentication.getAuthorities());
	      if (roles.contains("ROLE_ADMIN")) {
	    	  response.sendRedirect(response.encodeURL("buscarDatosPaciente.do"));
	      } else if (roles.contains("ROLE_USER")) {
	    	  response.sendRedirect(response.encodeURL("controlDiario.do"));
	      } else {
	         super.onAuthenticationSuccess(request, response, authentication);
	         return;
	      }
	   }
	}