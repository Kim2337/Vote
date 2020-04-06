package vote.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vote.domain.VoteDto;
import vote.persistence.VoteDao;

@Service
public class VoteServiceImpl implements VoteService {
	@Autowired
	VoteDao dao;

	//투표 작성 
	@Override
	public void write(VoteDto dto) throws Exception {
		dao.write(dto);
	}
	
	//투표글 상세보기 
	public VoteDto read(int votenum) throws Exception{
		return dao.read(votenum);
	}
	
	//투표 전체 목록 
	public List<VoteDto> list() throws Exception{
		return dao.list();
	}

	
	
}
