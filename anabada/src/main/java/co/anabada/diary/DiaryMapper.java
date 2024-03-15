package co.anabada.diary;

import java.util.List;

public interface DiaryMapper {

	List<Diary> diaryList(Diary diary);		//일정목록
	/*     ============================     */
	
	int insertDiary(Diary diary_content);   //일정등록
	int deleteDiary(int diary_id);		    //일정삭제
	int updateDiary(Diary diary);			//일정수정
	
}
