package co.anabada.diary;

import lombok.Data;

@Data
public class Diary {
	private int 	diaryId;
	private int 	memberNum;
	private String 	diaryName;
	private String 	diaryContent;
	private String  diaryDate;
	private String 	diaryModify;
	private String 	diaryType;
	private String 	diaryStartDate;
	private String 	diaryEndDate;
}
