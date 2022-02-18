package net.ezens.Intranet.freeboard.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class FreeBoard {
	private int board_Seq; // 게시글 seq
	
	private int mst_Seq; //마스터 seq 
	
	private int cp_Info_Seq; //회사정보 seq
	
	private String user_Id; //회원정보 id 
	
	private Date reg_Dt; // 최초 작성일
	
	private String upd_User; // 마지막 수정자
	
	private Date upd_Dt; // 마지막 수정일
	
	private String del_Yn; //삭제 여부
	
	private int view_Cnt;// 조회수
	
	private int recomend_Cnt; //추천수
	
	private String title; //게시글 제목
	
	private String contents;//게시글 내용
	
	private String type_cd;//구분_코드
}
