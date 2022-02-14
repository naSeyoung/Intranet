package net.ezens.Intranet.dto;

import java.sql.Timestamp;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ScheModel {
	
	private int sche_seq;
	private int mst_seq;
	private String user_id;
	private Timestamp start_dt;
	private Timestamp end_dt;
	private String title;
	private String conetents;
	private String place;
	private String reg_id;
	private Date reg_dt;
	private String upd_id;
	private Date upd_dt;
	private String sche_type;
	
}
