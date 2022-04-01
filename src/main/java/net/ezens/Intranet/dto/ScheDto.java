package net.ezens.Intranet.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ScheDto {
	
	private int scheSeq; // 일정정보 SEQ
	private int mstSeq; // 마스터 SEQ
	private String userId; // 유저정보_ID
	private String startDt; // 시작일
	private String endDt; // 종료일
	private String title; //타이틀
	private String contents; // 상세내용
	private String place; // 일정 위치
	private String regDt; // 등록일
	private String updId; // 수정자 ID
	private String updDt; // 수정일 
	private String scheType; // 일정 구분(전체공개,개인공개)
	
	
	private int cpInfoSeq; // 회사 정보 SEQ
	private String mstName; // 일정 종류명
	private String mstColor; // 일정 색상
	private String delYn; // 삭제 유무
	private String regUser; // 등록자 ID
	private String regDate; // 등록일
	private String updUser; // 수정자 ID
	private String updDate; // 수정일
	
	
	private String sfileUuid; // UUID 생성 값
	private String oriName; // 원본파일명
	private String sfileExt; // 확장자
	private int showOrder; // 노출 순서
	private String bfilePath; // 저장 경로
	
//	test
	private int id; 
	private String groupId; 
	private String writer; 
	private String content; 
	private String start; 
	private String end; 
	private boolean allday; 
	private String textColor; 
	private String backgroundColor; 
	private String borderColor;
	
	
	
	
	
}
