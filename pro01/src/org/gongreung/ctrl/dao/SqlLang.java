package org.gongreung.ctrl.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

//ǥ�� SQL
public interface SqlLang {
	String SELECT_ALL_NOTICE = "select * from notice order by resdate desc";
	String SELECT_NOTICE_BYNO = "select * from notice where no=?";
	String UPD_NOTICE = "update notice set title=?, content=? where no=?";
	String VISITED_UPD_NOTICE = "update notice set visited=visited+1 where no=?";
	String DEL_NOTICE = "delete from notice where no=?";
	
	String SELECT_ALL_MEMBER = "select * from member order by id";
	String SELECT_ONE_MEMBER = "select * from member where id=?";
	String INS_MEMBER = "insert into member values(?,?,?,?,?)";
	String UPD_MEMBER = "update member set pw=?,name=?,email=?,tel=? where id=?";
	String DEL_MEMBER = "delete from member where id=?";
	
	String SELECT_ALL_QNA = "select * from qna order by parno desc, plevel asc";
	String SELECT_ALL_Q = "select * from qna where plevel=1 order by parno desc, plevel asc";
	String SELECT_QNA_BYNO = "select * from qna where no=?";
	String SELECT_Q_BYNO = "select * from qna where plevel=1 and no=?";			//
	String SELECT_A_BYNO = "select * from qna where plevel=2 and parno=? order by no desc";			//
	String DEL_ANSWER = "delete from qna where no=?";
	String DEL_QUESTION = "delete from qna where parno=?";
	String UPD_QNA = "update qna set title=?, content=? where no=?";
	String VISITED_UPD_QNA = "update qna set visited=visited+1 where no=?";
	
	String SELECT_ALL_TRAFFIC = "select * from traffic order by ttype desc, no asc";
	String UPD_TRAFFIC = "update traffic set route=?, coment=? where no=?";
	String DEL_TRAFFIC = "delete from traffic where no=?";
	String SELECT_TRAFFIC_BYNO = "select * from traffic order by ttype asc no desc";
	
	String SELECT_ALL_DATA = "select * from data order by resdate desc";
	String VISITED_UPD_DATA = "update data set visited=visited+1 where no=?";
	String SELECT_DATA_BYNO = "select * from data where no=?";
	String UPD_DATA = "update data set title=?, content=? datafile=? where no=?";
	String DEL_DATA = "delete from data where no=?";
	
	String SELECT_ALL_GUIDE = "select * from guide2 order by pcode desc";
	String SELECT_GUIDE_BYNO = "select * from guide2 where pcode=?";
	String UPD_GUIDE = "update guide2 set pname=?, ptype=?, paddr=?, ptel=?,pcoment=? where pcode=?";
	String DEL_GUIDE = "delete from guide2 where pcode=?";
	

	
	Connection connect();
	void close(Connection con, PreparedStatement pstmt);
	void close(Connection con, PreparedStatement pstmt, ResultSet rs);
}