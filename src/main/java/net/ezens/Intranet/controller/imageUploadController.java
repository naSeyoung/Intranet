package net.ezens.Intranet.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller

public class imageUploadController {
	
@RequestMapping(value = "/imageUpload", method = RequestMethod.POST)
		public void imageUploadController(HttpServletRequest request, HttpServletResponse response, MultipartHttpServletRequest multiFile, 	@RequestParam MultipartFile upload) throws Exception{ 
		File fileDir = new File("ckUpload");
		 File imgFile = new File("ckUploadPath"); 
System.out.println("============================이미지업로드컨트롤러 진입 =======================================");
		// 랜덤 문자 생성 
		UUID uid = UUID.randomUUID();
		OutputStream out = null;
		PrintWriter printWriter = null;
		//인코딩
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		try{ //파일 이름 가져오기 
			String fileName = upload.getOriginalFilename();
			byte[] bytes = upload.getBytes();
			System.out.println(fileName);
			//이미지 경로 생성
			String path = fileDir.getPath()+"/";	// fileDir는 전역 변수라 그냥 이미지 경로 설정해주면 된다.
			System.out.println("PATH!!!!!!!!!!!!!!!!!: "+path);
			System.out.println("uid!!!!!!!!!!!!!!!!!: "+uid);
			String ckUploadPath = path + uid + "_" + fileName;
			File folder = new File(path); //해당 디렉토리 확인 
			if(!folder.exists()){ try{ folder.mkdirs();
			// 폴더 생성 
			}catch(Exception e){
				e.getStackTrace(); 
				} 
			} 
			out = new FileOutputStream(new File(ckUploadPath));
			out.write(bytes);
			out.flush();	// outputStream에 저장된 데이터를 전송하고 초기화 
		 
			String callback = request.getParameter("CKEditorFuncNum");
			printWriter = response.getWriter();
			String fileUrl = "/imageUpload2.do?uid=" + uid + "&fileName=" + fileName;
			System.out.println("fileUrl:"+fileUrl);
			// 작성화면
			// 업로드시 메시지 출력 
			printWriter.flush(); 
			System.out.println("{\"filename\" : \""+fileName+"\", \"uploaded\" : 1, \"url\":\""+fileUrl+"\"}");
			printWriter.println("업로드시 메시지 출력");
		}catch(IOException e){
			e.printStackTrace(); 
			} finally {
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
/*	@ResponseBody
	public String fileUpload(HttpServletRequest req, HttpServletResponse resp, MultipartHttpServletRequest multiFile)
			throws Exception {
		JsonObject json = new JsonObject();
		PrintWriter printWriter = null;
		OutputStream out = null;
		MultipartFile file = multiFile.getFile("upload");
		if (file != null) {
			if (file.getSize() > 0 && StringUtils.isNotBlank(file.getName())) {
				if (file.getContentType().toLowerCase().startsWith("ckUpload/")) {
					try {
						String fileName = file.getName();
						byte[] bytes = file.getBytes();
						String uploadPath = req.getServletContext().getRealPath("/");
						File uploadFile = new File(uploadPath);
						if (!uploadFile.exists()) {
							uploadFile.mkdirs();
						}
						fileName = UUID.randomUUID().toString();
						uploadPath = uploadPath + "/" + fileName;
						out = new FileOutputStream(new File(uploadPath));
						out.write(bytes);
						printWriter = resp.getWriter();
						resp.setContentType("text/html");
						String fileUrl = req.getContextPath() + "/ckUpload/" + fileName;

						json.addProperty("uploaded", 1);
						json.addProperty("fileName", fileName);
						json.addProperty("url", fileUrl);
						printWriter.println(json);
					} catch (IOException e) {
						e.printStackTrace();
					} finally {
						if (out != null) {
							out.close();
						}
						if (printWriter != null) {
							printWriter.close();
						}
					}
				}
			}
		}
		return null;
	}
}*/
			
	/*	@RequestMapping("imageUpload.do")
	public void imageUpload(HttpServletRequest request, HttpServletResponse response, @RequestParam MultipartFile upload ) throws Exception{
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		OutputStream out = null;
		PrintWriter printWriter = null;
		String fileName = upload.getOriginalFilename(); //업로드한 파일 이름
		byte[] bytes = upload.getBytes(); // byte 배열로 
		ServletContext application=request.getSession().getServletContext();
		String uploadPath = application.getRealPath("ckUpload");
		out = new FileOutputStream(new File(uploadPath+fileName));
		out.write(bytes); //배포 경로에 파일이 저장됨 
		printWriter=response.getWriter();
		String fileUrl = request.getContextPath()+"ckUpload"+fileName;
		printWriter.println("{\"filename\":\""+fileName+"\",\"uploaded\",1,\"url\""+fileUrl+"\"}");
		printWriter.flush();
	}*/
	

