package vote.persistence;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vote.domain.VoteDto;

@Repository
public class VoteDaoImpl extends SqlSessionDaoSupport implements VoteDao {


	//투표 리스트 
	@Override
	public List<VoteDto> list() throws Exception {
		return getSqlSession().selectList("vote.list");
	}
	
	
	//투표글 조회 
	@Override
	public VoteDto read(int votenum) throws Exception {
		return getSqlSession().selectOne("vote.read", votenum);
	}
	
	//투표 작성 
	@Override
	public void write(VoteDto dto) throws Exception {
		getSqlSession().insert("vote.insert", dto);
		
	}

	
}
