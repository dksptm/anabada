package co.anabada.diary.mapper;

import java.util.List;

import co.anabada.diary.Diary;

public interface DiaryMapper {

	List<Diary> diaryList(Diary diary);		//일정목록
	/*     ============================     */
	
	int insertDiary(Diary diaryContent);   //일정등록
	int deleteDiary(int diaryId);		    //일정삭제
	int updateDiary(Diary diary);			//일정수정
	
}
