package co.anabada.diary.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.anabada.common.DataSource;
import co.anabada.diary.Diary;
import co.anabada.diary.mapper.DiaryMapper;


public class DiaryServicelmpl implements DiaryService{
	
	SqlSession session = DataSource.getInstance().openSession(true); //자동커밋.
	DiaryMapper mapper = session.getMapper(DiaryMapper.class);
	
	//일정목록
	@Override
	public List<Diary> diaryList(Diary diary) {
		return mapper.diaryList(diary);
	}
	
	//일정등록
	@Override
	public boolean addDairy(Diary diary_content) {
		return mapper.insertDiary(diary_content) == 1;
	}
	
	//일정삭제
	@Override
	public boolean removeDiary(int diary_id) {
		return mapper.deleteDiary(diary_id) == 1;
	}

	//일정수정
	@Override
	public boolean modifyDiary(Diary diary) {
		return mapper.updateDiary(diary) == 1;
	}
	
	
}
