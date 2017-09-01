package com.xiaonei.servlet;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/VerificationCodeServlet")
// 输出验证码
public class VerificationCodeServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		// 创建变量
		int width = 100;
		int height = 23;

		Random r = new Random();
		// 创建一个内存图像
		BufferedImage image = new BufferedImage(width, height,
				BufferedImage.TYPE_INT_RGB);
		// 创建画笔
		Graphics g = image.getGraphics();

		// 填充下矩形的背景色
		// 设定画笔颜色
		g.setColor(Color.white);
		// 填充矩形的背景
		g.fillRect(1, 1, width-2, height-2);
		
		// 指定边框的颜色
		g.setColor(Color.gray);
		// 画图像的边框
		g.drawRect(0, 0, width, height);
		
		// 设定画笔颜色
		g.setColor(Color.gray);
		//画4条干扰线
		for (int i = 0; i < 4; i++) {
			g.drawLine(r.nextInt(width), r.nextInt(height), r.nextInt(width), r.nextInt(height));
		}

		// 设置字体
		g.setFont(new Font("幼圆", Font.BOLD + Font.ITALIC, 22));

		// 随机产生4个字符输出到页面
		String s = "abcdefghjkmnpqrstuvwxyABCDEFGHJKLMNPQRSTUVWXYXZ3456789";
		String code = "";
		g.setColor(Color.blue);
		for (int i = 0; i < 4; i++) {
			char c = s.charAt(r.nextInt(s.length()));
			code = code + c + "";
			g.drawString(c + "", 17 * (i+1) + (r.nextBoolean()?1:-1) * 2, 18 + (r.nextBoolean()?1:-1) * 1);
		}
		
		//将code存到session对象中
		request.getSession().setAttribute("code", code);

		// 将图像输出到客户端
		ImageIO.write(image, "jpg", response.getOutputStream());
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}