package net.ezens.Intranet.util;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.MultipartFile;

import net.ezens.Intranet.dto.FileInfoDto;

public class FileUtil {
	private static final Logger logger = LoggerFactory.getLogger(FileUtil.class);
	
	//실제 파일 저장 메소드
	public List<FileInfoDto> saveFiles(List<MultipartFile> mpFiles, String upLoadPath) throws IllegalStateException, IOException {
		String fileSeparator = File.separator;
		String replacedPath = upLoadPath.replaceAll("\\\\/", fileSeparator);
		
		List<FileInfoDto> fileList = new ArrayList<FileInfoDto>();
		int cnt = 1;
		
		for(MultipartFile mpFile : mpFiles) {
			mpFile.getName();
			
			String oriFileName = mpFile.getOriginalFilename();						//업로드시 파일 이름
			String oriFileExt = oriFileName.substring(oriFileName.lastIndexOf(".")); //확장자
			String uuid = UUID.randomUUID().toString().replaceAll("-", ""); //저장될 식별 아이디
			
			
			//파일 저장 (realPath + filePath)
			File file = new File(replacedPath + uuid + oriFileExt);	//경로+파일
			if(!file.isDirectory()) {
				file.mkdirs();
			}
			
			mpFile.transferTo(file);						//파일저장
			
			logger.info("file path : " + file.getPath());
			logger.info("file name : " + uuid + oriFileExt);
			
			fileList.add(new FileInfoDto(uuid, oriFileName, oriFileExt, replacedPath, cnt++));
		}
		
		return fileList; 
	}
	
	public static void main(String[] args) {
//		for(int i=0; i<5; i++) {
//			String uuid1 = UUID.randomUUID().toString().replaceAll("-", "");
//			logger.info(uuid1 + " " + uuid1.length()); //저장될 식별 아이디
//		}
		
	}
}
