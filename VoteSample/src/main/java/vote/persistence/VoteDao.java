package vote.persistence;

import java.util.List;

import vote.domain.VoteDto;

public interface VoteDao {
	//투표글 리스트 
	public List<VoteDto> list() throws Exception;
	
	//투표글 조회 
	public VoteDto read(int votenum) throws Exception;

	//투표글 작성 
	public void write(VoteDto dto) throws Exception;
}
