package vote.service;

import java.util.List;

import vote.domain.VoteDto;

public interface VoteService {

	//투표 목록 
	public List<VoteDto> list() throws Exception;
	
	//투표글 상세보기 
	public VoteDto read(int votenum) throws Exception;
	
	//투표 작성 
	public void write(VoteDto dto) throws Exception;
	
}
