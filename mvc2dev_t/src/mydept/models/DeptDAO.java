package mydept.models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DeptDAO {
	private static DeptDAO deptDAO = null;
	
	public static DeptDAO getInstance() {
		if (deptDAO == null) {
			deptDAO = new DeptDAO();
		}
		return deptDAO;
	}
	
	private DeptDAO () {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public List<DeptDTO> getDeptList() {
		List<DeptDTO> list = new ArrayList<>();
		
		StringBuffer sql = new StringBuffer();
		sql.append(" select department_id, department_name, location_id");
		sql.append(" from   departments");
		sql.append(" order  by department_id asc");
		
		try (Connection conn = DriverManager.getConnection(
			"jdbc:oracle:thin:@localhost:1521:xe", "n1", "n1");
			 PreparedStatement ps = 
				conn.prepareStatement(sql.toString());
			 ResultSet rs = ps.executeQuery()) {
			
			while(rs.next()) {
				DeptDTO deptDTO = new DeptDTO();
				deptDTO.setDepartment_id(rs.getInt("department_id"));
				deptDTO.setDepartment_name(rs.getString("department_name"));
				deptDTO.setLocation_id(rs.getInt("location_id"));
				list.add(deptDTO);
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
