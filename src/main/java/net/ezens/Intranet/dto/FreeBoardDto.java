package net.ezens.Intranet.dto;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class FreeBoardDto {
	private int boardSeq; // 게시글 seq
	
	private int mstSeq; //마스터 seq 
	
	private int cpInfoSeq; //회사정보 seq
	
	private String userId; //회원정보 id 
	
	private Date regDt; // 최초 작성일
	
	private String updUser; // 마지막 수정자
	
	private Date updDt; // 마지막 수정일
	
	private String delYn; //삭제 여부
	
	private int viewCnt;// 조회수
	
	private int recomendCnt; //추천수
	
	private String title; //게시글 제목
	
	private String contents;//게시글 내용
	
	private String typeCd;//구분_코드
	
	//freeBoardList 검색필터 
	private String type; //검색 타입
	private String schWord; //검색 내용 
	private String all; //검색 전체
}
