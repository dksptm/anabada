package co.anabada.diary;

import java.util.List;

public interface DiaryService {
	
	List<Diary> diaryList(Diary diaryList); //일정목록
	/*		---------------------------		*/
	boolean addDairy(Diary diary_content);	//일정등록
	boolean removeDiary(int diary_id);		//일정삭제
	boolean modifyDiary(Diary diary);		//일정수정

	
}
