package beans;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import org.springframework.dao.DataAccessException;


//추상 인터페이스 작성
public interface SikkwonDAO {
	//식권 사용 내역
	public List<SikkwonDTO> usik(String p_id) throws DataAccessException;
	
	//식권 개수 -sik
	public int getSnum(String p_id) throws DataAccessException;

	//충전 개수 -u_sik
	public int addSnum(SikkwonDTO siko) throws DataAccessException;

	//sik 테이블에 식권 충전 - sik
		public  boolean   updateSik(SikkwonDTO siko) throws DataAccessException;

	//레코드 갯수
		public int getArticleCount(String p_id) throws DataAccessException;
		
	//페이징 처리
		public HashMap pageList(String pageNum,int count) throws DataAccessException;

	//가져오기
		public List<SikkwonDTO> useList(Map<String,Object> smap) throws DataAccessException;


	
		
	/* 사용하지 않는 구문들 
	충전후 개수 꺼내기
		public int getAddSnum(String p_id) throws DataAccessException;
	전의 식권
		public int beforeSnum(String p_id) throws DataAccessException;
	*/


	
/*public class SikkwonDAO {
private DBConnectionMgr pool;
	
	public SikkwonDAO() {
		try {
			pool = DBConnectionMgr.getInstance();
			System.out.println("pool");			
		}catch(Exception e) {
			System.out.println("연결실패"+e);
		}
	}// 생성자
	
	public List<SikkwonDTO> u_sik(String p_id) {
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<SikkwonDTO> sik = new ArrayList();
		SikkwonDTO sikd=null;
		String sql="";
		
		try {
			con=pool.getConnection();
			sql="select  * from u_sik where p_id=? order by u_time desc";
			pstmt=con.prepareStatement(sql);  
			pstmt.setString(1, p_id);
			//pstmt.setString(2, r_name);
			rs=pstmt.executeQuery();
			//while문으로 계속 반복해서 배열에 넣어줘야함.
			while(rs.next()) { 
				sikd=new SikkwonDTO();
				sikd.setP_id(rs.getString("p_id"));
				sikd.setR_name(rs.getString("r_name"));
				sikd.setU_time(rs.getString("u_time"));
				sikd.setS_num(rs.getInt("s_num"));
				sik.add(sikd);				
			}
		}catch(Exception e) {
			System.out.println("u_sik() DAO 에러="+e);
		}finally {
			pool.freeConnection(con, pstmt, rs);
		}return sik;
	}

//식권 개수
public int getSnum(String p_id) { 
	Connection con=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	int x=0;
	String sql="";
	
	try {
		con=pool.getConnection();
		sql="select  s_num from sik where p_id=?";
		pstmt=con.prepareStatement(sql);  
		pstmt.setString(1, p_id);
		rs=pstmt.executeQuery();
		if(rs.next()) {
			x=rs.getInt("s_num");
		}
	}catch(Exception  e) {
		System.out.println("u_sik 개수 DAO() 실행 중 에러유발=>"+e);
	}finally {
		pool.freeConnection(con, pstmt, rs);
	}
	return x;
}
//충전 갯수
	public int addSnum(SikkwonDTO siko) { 
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		int a=0;
		String sql="";
		
		try {
			con=pool.getConnection();
			sql="insert into u_sik values(?,'admin',now(),?)";
			pstmt=con.prepareStatement(sql);  
			pstmt.setString(1,siko.getP_id());
			//pstmt.setString(2, p_id);
			//pstmt.setString(2,"now()");
			pstmt.setInt(2,siko.getS_num()*-1);
			a=pstmt.executeUpdate();
		}catch(Exception  e) {
			System.out.println("u_sik 충전 개수 DAO() 실행 중 에러유발=>"+e);
		}finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return a;
	}
// 충전후 개수 꺼내기
	public int getAddSnum(String p_id) { 
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		int get=0;
		String sql="";
		
		try {
			con=pool.getConnection();
			sql="select s_num from u_sik where r_name='admin' and p_id=?";	
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1,p_id);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				get=rs.getInt(1);
			}else {
				get=0;
			}
		}catch(Exception  e) {
			System.out.println("beforeSnum 누적 개수 DAO() 실행 중 에러유발=>"+e);
		}finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return get;
	}
//sik 테이블에 식권 충전
	public  boolean   updateSik(SikkwonDTO siko) {
	
	Connection con=null;
	PreparedStatement pstmt=null;
	boolean s_check=false;
	String sql="";
	
	try {
		con=pool.getConnection();
		//트랜잭션처리 시작구문
		con.setAutoCommit(false);
		//-----입력을 받을때는 DTO->각각의 필드에 값을 저장->Getter Method
		sql="update sik set s_num=s_num+? where p_id=?";
		pstmt=con.prepareStatement(sql);
		pstmt.setInt(1,siko.getS_num());
		pstmt.setString(2,siko.getP_id());
		
		int update=pstmt.executeUpdate();//1->성공, 0->실패->메모리상 저장
		//메모리상에 저장된 값이=>실제 테이블에 저장(동기화)
		con.commit();
		System.out.println("sikkwon dao 식권구매(updateSik)=>"+update);
		if(update > 0) {
			s_check=true;
		}
	}catch(Exception e) {
		System.out.println("sikkwon dao 식권구매(updateSik) 실행 에러유발=>"+e);
	}finally {
		pool.freeConnection(con, pstmt);
	}
	return s_check;
}
//전의 식권
public int beforeSnum(String p_id) { 
	Connection con=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	int before=0;
	String sql="";
	
	try {
		con=pool.getConnection();
		sql="select s_num from u_sik where p_id=? group by u_time order by u_time";	
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1,p_id);
		rs=pstmt.executeQuery();
		while(rs.next()) {
			int i=1;
			before=rs.getInt(i++);		
			else {
			before=0;
		}
		}
	}catch(Exception  e) {
		System.out.println("beforeSnum 누적 개수 DAO() 실행 중 에러유발=>"+e);
	}finally {
		pool.freeConnection(con, pstmt, rs);
	}
	return before;
}
//레코드 갯수
public int getArticleCount() {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	int count = 0;
	String sql = "select count(*) from u_sik";
	System.out.println(sql);
	
	try {
		
		con = pool.getConnection();
		pstmt = con.prepareStatement(sql);
		
		rs = pstmt.executeQuery();
		if(rs.next()) {
		count = rs.getInt(1);
		}
		System.out.println("총 레코드 수 :"+count);
		
	}catch(Exception e) {
		System.out.println("getArticleCount 실패"+e);
	}finally {
		pool.freeConnection(con,pstmt,rs);
	}
	return count;
}
//페이징 처리
public HashMap pageList(String pageNum,int count) {
	
	//페이징 처리 결과를 저장할 HashMap객체 생성
	HashMap<String,Integer> pglist = new HashMap<String,Integer>();
	//==== 페이징 처리 계산부분 복사===================================
	
	//1 현재페이지
	System.out.println("pageNum=>"+pageNum);
	if(pageNum==null)pageNum="1";
	int currentPage = Integer.parseInt(pageNum); // 숫자 현재페이지
	
	//3 보여줄 단위 개수 (레코드 , 페이지 , 블록 ) 설정
			int pageSize = 5;         // 한페이지당 보여주는 레코드갯수    
		    int blockSize = 5;    //한 블록당 보여주는 페이지의 수
	//2 전체 레코드 개수 확인
	//int count = count;
		    System.out.println("pageList count 개수 체크용  "+count);
	// DB상의 레코드 시작 번호 limit 수치
	int startRow = (currentPage-1)*pageSize;
	int endRow = currentPage*pageSize;
	
	//4 전체 레코드 수를 참고하여 전체 페이지, 블록 설정
    // beginPerPage  계산  (페이지별게시물 번호 제일 높은것)
	int beginPerPage = count-(currentPage-1)*pageSize;
	
	System.out.println(count+":count |||"+beginPerPage+":beginPerPage");
	
	int pageCount = count/pageSize+(count%pageSize==0?0:1); // 전체 페이지 개수2 둘다 똑같음  
	//int totalBlock=(int)Math.ceil((double)totalPage/blockSize);		//전체 블록 개수
	int blockCount = 0;
	//시작페이지 , 끝페이지
	int startPage = 0;
	//10의 배수인지
	if(currentPage%blockSize!=0){ // 1~9 , 11~19 , 21~22 
		startPage = currentPage/blockSize*blockSize+1;
	}else{ //10,20,30,40
		startPage=((currentPage/blockSize)-1)*blockSize+1;
	}
	int endPage = startPage+blockSize-1;
	if(endPage>pageCount)	endPage=pageCount;
	
	//-- ListAction(pageNun,count) => pageList를 넘기고,, -> ListAction -> list.jsp
	
	pglist.put("currentPage", currentPage);
	
	pglist.put("pageSize", pageSize);
	pglist.put("blockSize", blockSize);
	
	pglist.put("startRow", startRow);
	pglist.put("endRow", endRow);
	
	pglist.put("pageCount", pageCount);
	pglist.put("blockCount", blockCount);
	
	pglist.put("startPage", startPage);
	pglist.put("endPage", endPage);
	
	pglist.put("beginPerPage", beginPerPage);

	//number=count-(currentPage-1)*pageSize;
	//request.setAttribute(키명,저장할값)// 이용해서 값 공유
    // beginPerPage  계산  (페이지별게시물 번호 제일 높은것)
	//=======================================================
	return pglist;
		 
}
//가져오기
public ArrayList<SikkwonDTO> getPeople(int pageRow, int pageSize){
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	boolean check = false;
	ArrayList<SikkwonDTO> list = new ArrayList(); // 생성자로 초기 공간을 지정
	SikkwonDTO dto ;
	String sql="select * from u_sik limit "+pageRow+","+pageSize;
	
	
	try {
		
		con=pool.getConnection();
		pstmt=con.prepareStatement(sql);
		rs=pstmt.executeQuery();
		while(rs.next()) {
			dto=new SikkwonDTO();
			dto.setP_id(rs.getString("p_id"));
			dto.setU_time(rs.getString("u_time"));
			dto.setR_name(rs.getString("r_name"));
			list.add(dto); 
		}
		
		
	}catch(Exception e) {
		System.out.println("getPeople 오류");
	}
	
	
	return list;
}*/
}
