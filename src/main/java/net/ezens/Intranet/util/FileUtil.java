package net.ezens.Intranet.util;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.MultipartFile;

public class FileUtil {
	private static final Logger logger = LoggerFactory.getLogger(FileUtil.class);
	
	//실제 파일 저장 메소드
	public String saveFile(MultipartFile mfile, String Path) throws IllegalStateException, IOException {
		String originalFile = mfile.getOriginalFilename();										//업로드시 파일 이름
		String originalFileExtension = originalFile.substring(originalFile.lastIndexOf(".")); 			//확장자
		String storedFileName = UUID.randomUUID().toString().replaceAll("-", ""); //저장될 식별 아이디
		
		//파일 저장 (realPath + filePath)
		File file = new File(Path + storedFileName) ;	//경로+파일
//		mfile.transferTo(file);							//파일저장
			
		logger.info("file.getPath() : "+file.getPath());
//		logger.info(originalFile + "은 업로드한 파일이다.");
		logger.info(storedFileName + "라는 이름으로 업로드 됐다.");
//		logger.info("파일사이즈는 " + mfile.getSize());
	
		//실제 저장된 파일이름 리턴
		return storedFileName;
	}
	
	public static void main(String[] args) {
		
//		for(int i=0; i<5; i++) {
//			String uuid1 = UUID.randomUUID().toString().replaceAll("-", "");
//			logger.info(uuid1 + " " + uuid1.length()); //저장될 식별 아이디
//		}
		
	}
}
