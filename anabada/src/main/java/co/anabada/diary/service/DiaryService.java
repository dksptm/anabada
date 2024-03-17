package co.anabada.diary.service;

import java.util.List;

import co.anabada.diary.Diary;

public interface DiaryService {
	
	List<Diary> diaryList(Diary diaryList); //일정목록
	/*		---------------------------		*/
	boolean addDiary(Diary diaryContent);	//일정등록
	boolean removeDiary(int diaryId);		//일정삭제
	boolean modifyDiary(Diary diary);		//일정수정

	
}
