package com.ldcc.overflow.persistence;

import com.ldcc.overflow.domain.*;

public interface MemberDAO {
	public String getTime();
	public void insertMember(MemberVO vo);
}
