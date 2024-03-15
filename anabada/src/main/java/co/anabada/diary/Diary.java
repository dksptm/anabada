package co.anabada.diary;

import lombok.Data;

@Data
public class Diary {
	private int 	diary_id;
	private int 	member_num;
	private String 	diary_name;
	private String 	diary_content;
	private String  diary_Date;
	private String 	diary_modify;
	private String 	diary_type;
	private String 	diary_startDate;
	private String 	diary_endDate;
}
