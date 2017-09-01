package com.xiaonei.utils;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.upload.FormFile;

import com.xiaonei.domain.Users;

//������
public class MyUtils {

	private MyUtils() {
	}

	// �ϴ��û�ͷ��ķ����������ϴ�ͷ�������
	public static String uploadHead(HttpServletRequest request, FormFile formFile) {

		String fileName = "";
		try {
			// ��ȡ��ǰwebӦ�õľ���·��
			String realPath = request.getSession().getServletContext().getRealPath("/");
			// ��ȡ�û�id��Ϊ�ļ�����
			Users user = (Users) request.getSession().getAttribute("loginUser");
			String folderName = user.getId() + "";
			//Ҫ�������ļ���·��
			String folderPath = realPath + "\\images\\" + folderName +"\\head";
			// �����ļ�
			InputStream in = formFile.getInputStream();
			// �����ļ����ֿ��ܺ������ģ��ڼ����ļ�·��ʱ���ܳ������룬���Խ��ļ�����Ϊ�û�id.ԭ��׺
			fileName = formFile.getFileName();
			fileName = user.getId() + fileName.substring(fileName.indexOf("."), fileName.length());
			// Ϊÿ���û������Լ����ļ���
			File file = new File(folderPath);
			//�ж��Ƿ����ļ��л��߸�Ŀ¼�Ƿ����
			if (!file.isDirectory()) {
				//����Ŀ¼
				file.mkdirs();
			}else {
				//���Ŀ¼������Ŀ¼��ԭ�����û�ͷ��ɾ��
				String[] list = file.list();
				File temp = null;
				for (int i = 0; i < list.length; i++) {
					temp = new File(folderPath + "\\" + list[i]);
					//���temp���ļ���ɾ����
					if (temp.isFile()) {
						temp.delete();
					}
				}
			}
			OutputStream out = new FileOutputStream(folderPath + "\\" + fileName);

			int len = 0; 
			byte[] buffer = new byte[8192]; //8192/512=16,����Ӳ�̵�16��������С

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
