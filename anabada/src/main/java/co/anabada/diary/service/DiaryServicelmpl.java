package co.anabada.diary.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.anabada.common.DataSource;
import co.anabada.diary.Diary;
import co.anabada.diary.mapper.DiaryMapper;


public class DiaryServicelmpl implements DiaryService{
	
	SqlSession session = DataSource.getInstance().openSession(true); //자동커밋.
	DiaryMapper mapper = session.getMapper(DiaryMapper.class);
	
	@Override
	public List<Diary> diaryList() {
		return mapper.diaryList();
	}
	
}
