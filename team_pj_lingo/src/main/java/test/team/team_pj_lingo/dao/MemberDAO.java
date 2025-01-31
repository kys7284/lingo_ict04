package test.team.team_pj_lingo.dao;

import java.util.Map;

import test.team.team_pj_lingo.dto.MemberDTO;

public interface MemberDAO {

	
	// ID 중복확인
	public int IdCheckAction(String mem_id);
	
	// 회원가입처리
	public int JoinAction(MemberDTO dto);
	
    // 로그인 처리 / 회원정보 인증 (ID, 비밀번호 확인)
    public int idPasswordChk(Map<String, Object> map);
	
	
	
}
