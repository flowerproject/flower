package com.kh.flower.member.encrypt;

import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

public class EncryptWrapper extends HttpServletRequestWrapper {

	public EncryptWrapper(HttpServletRequest request) {
		super(request);
	}
	
	@Override
	public String getParameter(String name) {
		// 비밀번호만 뽑아서 암호화하기
		if(name != null &&( name.equals("c_password") ||  name.equals("b_password"))) {
			// 암호화 처리
			if(super.getParameter("c_password") != null) {
				return getSHA512(super.getParameter("c_password"));
			} else if(super.getParameter("b_password") != null) {
				return getSHA512(super.getParameter("b_password"));
			} else {
				return super.getParameter(name);			
			}
		} else {
			return super.getParameter(name);			
		}
		
	}

	private static String getSHA512(String pwd) {
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-512");
			byte[] bytes = pwd.getBytes(Charset.forName("UTF-8"));
			
			md.update(bytes);
			
			return Base64.getEncoder().encodeToString(md.digest());
			
		} catch (NoSuchAlgorithmException e) {

			System.out.println("암호화 에러 발생!!");
			return null;
		}
	}

}
