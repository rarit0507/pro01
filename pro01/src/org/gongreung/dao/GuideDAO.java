package org.gongreung.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.gongreung.ctrl.dto.Guide;

public class GuideDAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public List<Guide> getLatestGuideList(){
		List<Guide> gList = new ArrayList<>();
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(OracleDB.LATEST_GUIDE);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Guide g = new Guide(rs.getInt("pcode"),
						rs.getString("pname"),
						rs.getString("ptype"),
						rs.getString("paddr"),
						rs.getString("ptel"),
						rs.getString("pcoment"));
				gList.add(g);
			}
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt, rs);
		}
		return gList;
	}
	
	public List<Guide> getGuideList(){
		List<Guide> gList = new ArrayList<>();
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_ALL_GUIDE);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Guide g = new Guide(rs.getInt("pcode"),
						rs.getString("pname"),
						rs.getString("ptype"),
						rs.getString("paddr"),
						rs.getString("ptel"),
						rs.getString("pcoment"));
				gList.add(g);
			}
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt, rs);
		}
		return gList;
	}
	
	public Guide getGuide(int pcode) {
		Guide g = new Guide();
		OracleDB oracle = new OracleDB();
		
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_GUIDE_BYNO);
			pstmt.setInt(1, pcode);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				g.setPcode(rs.getInt("pcode"));
				g.setPname(rs.getString("pname"));
				g.setPtype(rs.getString("ptype"));
				g.setPaddr(rs.getString("paddr"));
				g.setPtel(rs.getString("ptel"));
				g.setPcoment(rs.getString("pcoment"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt, rs);
		}
		return g;
	}
	
	public int insGuide(Guide g) {
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(OracleDB.INS_GUIDE);
			pstmt.setString(1, g.getPname());
			pstmt.setString(2, g.getPtype());
			pstmt.setString(3, g.getPaddr());
			pstmt.setString(4, g.getPtel());
			pstmt.setString(5, g.getPcoment());
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt);
		}
		return cnt;
	}
	
	public int editProGuide(Guide g) {
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.UPD_GUIDE);
			pstmt.setString(1, g.getPname());
			pstmt.setString(2, g.getPtype());
			pstmt.setString(3, g.getPaddr());
			pstmt.setString(4, g.getPtel());
			pstmt.setString(5, g.getPcoment());
			pstmt.setInt(6, g.getPcode());
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt);
		}
		return cnt;
	}
	
	public int delGuide(int pcode){
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.DEL_GUIDE);
			pstmt.setInt(1, pcode);
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt);
		}
		return cnt;
	}

	public Guide getGuide2(int pcode) {
		Guide g = new Guide();
		OracleDB oracle = new OracleDB();
		
		try {
			con = oracle.connect();
			pstmt = null;
			pstmt = con.prepareStatement(SqlLang.SELECT_GUIDE_BYNO);
			pstmt.setInt(1, pcode);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				g.setPcode(rs.getInt("pcode"));
				g.setPname(rs.getString("pname"));
				g.setPtype(rs.getString("ptype"));
				g.setPaddr(rs.getString("paddr"));
				g.setPtel(rs.getString("ptel"));
				g.setPcoment(rs.getString("pcoment"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt, rs);
		}
		return g;
	}
}