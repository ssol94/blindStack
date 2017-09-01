package com.ldcc.eunsol.persistence;

import com.ldcc.eunsol.domain.MemberVO;

public interface MemberDAO {
	public String getTime();
	
	public void insertMember(MemberVO vo);
}
