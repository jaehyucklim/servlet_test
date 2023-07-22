package _DB_hw;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
public class DAO2 {
	public ArrayList<Emp> selectAll() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Emp> list = new ArrayList<Emp>();
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();

			String select_sql = "select * from emp";

			// prepareStatement 객체 열기
			pstmt = conn.prepareStatement(select_sql.toString());
			rs = pstmt.executeQuery();

			while (rs.next()) { // 더 이상 읽을 데이터가 없을 때까지 반복
				int empno = rs.getInt("empno");
				String ename = rs.getString("ename");
				String job = rs.getString("job");
				String mgr = rs.getString("mgr");
				Date hiredate = rs.getDate("hiredate");
				int sal = rs.getInt("sal");
				int comm = rs.getInt("comm");
				int deptno = rs.getInt("deptno");
				
				Emp Emp = new Emp();
				Emp.setEmpno(empno);
				Emp.setEname(ename);
				Emp.setJob(job);
				Emp.setMgr(mgr);
				Emp.setHiredate(hiredate);
				Emp.setSal(sal);
				Emp.setComm(comm);
				Emp.setDeptno(deptno);
				
				list.add(Emp);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 자원 반환
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return list;
	}
}
