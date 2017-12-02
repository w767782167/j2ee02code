package com.etcxm.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etcxm.shoppingcart.CartItem;
import com.etcxm.shoppingcart.ShoppingCart;
import com.etcxm.utils.StringUtils;

@WebServlet("/shoppingcart")
public class ShoppingCartServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		String cmd = req.getParameter("cmd");
		if (cmd.equals("save")) {
			save(req,resp);
		}else{
			delete(req, resp);
		}
	}
	
	//添加商品
	protected void save(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
	//验证表单是否重复提交
		
		String token = req.getParameter("token");
		String sessiontoken = (String)req.getSession().getAttribute("TOKEN_IN_SESSION");
		
		if(StringUtils.hasLength(token)){
			if(token.equals(sessiontoken)){
				req.getSession().removeAttribute("TOKEN_IN_SESSION");
			}else{
				System.out.println("手贱");
				return;
			}
		}
		
		
		
		String name = req.getParameter("name");
		String num = req.getParameter("num");
		System.out.println("name="+name);
		System.out.println("num="+num);
		
		ShoppingCart cart = (ShoppingCart)req.getSession().getAttribute("SHOPPINGCART_IN_SESSION");
		if(cart==null){
			cart = new ShoppingCart();
			req.getSession().setAttribute("SHOPPINGCART_IN_SESSION", cart);
		}
		
		
		//业务逻辑
		CartItem item = new CartItem();
		item.setName(name);
		if(num!=null){
			item.setNum(Integer.valueOf(num));
		}
		
		
		if("电脑".equals(name)){
			item.setId(101L);
			item.setPrice(200D);
		}else if("手机".equals(name)){
			item.setId(102L);
			item.setPrice(2000D);
		}else if("Pad".equals(name)){
			item.setId(103L);
			item.setPrice(20D);
		}
		
		//购物车添加商品
		cart.save(item);
		//跳转
		req.getRequestDispatcher("/shoppingcart/shoppingcart.jsp").forward(req, resp);
		
	}

	// 删除商品
	protected void delete(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		String idStr = req.getParameter("id");
		ShoppingCart cart = (ShoppingCart)req.getSession().getAttribute("SHOPPINGCART_IN_SESSION");
		cart.delete(Long.valueOf(idStr));
		resp.sendRedirect("/Day16_page/shoppingcart/shoppingcart.jsp");
		
	}

}
