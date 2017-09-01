package com.xiaonei.utils;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.upload.FormFile;

import com.xiaonei.domain.Users;

//工具类
public class MyUtils {

	private MyUtils() {
	}

	// 上传用户头像的方法，返回上传头像的名称
	public static String uploadHead(HttpServletRequest request, FormFile formFile) {

		String fileName = "";
		try {
			// 获取当前web应用的绝对路径
			String realPath = request.getSession().getServletContext().getRealPath("/");
			// 获取用户id作为文件夹名
			Users user = (Users) request.getSession().getAttribute("loginUser");
			String folderName = user.getId() + "";
			//要创建的文件夹路径
			String folderPath = realPath + "\\images\\" + folderName +"\\head";
			// 读入文件
			InputStream in = formFile.getInputStream();
			// 由于文件名字可能含有中文，在加载文件路径时可能出现乱码，所以讲文件名改为用户id.原后缀
			fileName = formFile.getFileName();
			fileName = user.getId() + fileName.substring(fileName.indexOf("."), fileName.length());
			// 为每个用户创建自己的文件夹
			File file = new File(folderPath);
			//判断是否是文件夹或者该目录是否存在
			if (!file.isDirectory()) {
				//创建目录
				file.mkdirs();
			}else {
				//如果目录存在则将目录下原本的用户头像删掉
				String[] list = file.list();
				File temp = null;
				for (int i = 0; i < list.length; i++) {
					temp = new File(folderPath + "\\" + list[i]);
					//如果temp是文件就删除掉
					if (temp.isFile()) {
						temp.delete();
					}
				}
			}
			OutputStream out = new FileOutputStream(folderPath + "\\" + fileName);

			int len = 0; 
			byte[] buffer = new byte[8192]; //8192/512=16,代表硬盘的16个扇区大小

			while ((len = in.read(buffer, 0, 8192)) != -1) {
				out.write(buffer, 0, len);
			}
			in.close();
			out.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return fileName;
	}
}
