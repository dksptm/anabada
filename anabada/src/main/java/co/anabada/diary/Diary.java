package co.anabada.diary;

import lombok.Data;

@Data
public class Diary {
	private int diary_Id;
	private int member_Num;
	private String diary_Name;
	private String diary_Content;
	private String diary_Date;
	private String diary_Modify;
	private String diary_Type;
	private String diary_start;
	private String diary_end;
}
