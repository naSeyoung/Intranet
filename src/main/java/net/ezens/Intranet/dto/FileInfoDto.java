package net.ezens.Intranet.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class FileInfoDto {
	
	private String fileUuid;
	private String oriName;		//사용자 지정 파일 이름
	private String fileExt;
	private String filePath;
	private int showOrder;
	
	public FileInfoDto(String fileUuid, String oriName, String fileExt, String filePath) {
		this.fileUuid = fileUuid;
		this.oriName = oriName;
		this.fileExt = fileExt;
		this.filePath = filePath;
	}
	
}
