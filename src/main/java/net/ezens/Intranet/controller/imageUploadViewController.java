package net.ezens.Intranet.controller;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Path;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * * cKeditor 서버로 전송된 이미지 뿌려주기
 * 
 * @param uid
 * @param fileName
 * @param request
 * @return
 * @throws ServletException
 * @throws IOException
 */

public class imageUploadViewController {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	File fileDir = new File("ckUpload");

	@RequestMapping(value = "/imageUpload2.do", method = RequestMethod.POST)
	public void ckSubmit(@RequestParam(value = "uid") String uid, @RequestParam(value = "fileName") 
	String fileName, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("============================이미지업로드컨트롤러2 진입 =======================================");
		PrintWriter printWriter = null;
		// 서버에 저장된 이미지 경로
		String path = fileDir.getPath()+"/";
		String sDirPath = path + uid + "_" + fileName;
		File imgFile = new File(sDirPath); 
		// 사진 이미지 찾지 못하는 경우 예외처리로 빈 이미지 파일을 설정한다.
		if (imgFile.isFile()) {
			byte[] buf = new byte[1024];
			int readByte = 0;
			int length = 0;
			byte[] imgBuf = null;

			FileInputStream fileInputStream = null;
			ByteArrayOutputStream outputStream = null;
			ServletOutputStream out = null;

			try {
				fileInputStream = new FileInputStream(imgFile);
				outputStream = new ByteArrayOutputStream();
				out = response.getOutputStream();
				while ((readByte = fileInputStream.read(buf)) != -1) {
					outputStream.write(buf, 0, readByte);
				}
				imgBuf = outputStream.toByteArray();
				length = imgBuf.length;
				out.write(imgBuf, 0, length);
				out.flush();
			}catch(IOException e){
				e.getStackTrace();
			}finally {
				try {
					if(out != null) {
						out.close(); 
						} if(printWriter != null) {
							printWriter.close(); 
							} 
						} catch(IOException e) {
							e.printStackTrace(); 
							} 
				} return; 
			} 
		}
	}

