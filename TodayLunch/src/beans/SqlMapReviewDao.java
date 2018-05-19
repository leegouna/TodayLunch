package beans;

import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import beans.ReviewCommand;

public class SqlMapReviewDao extends SqlSessionDaoSupport implements ReviewDao {

	//�Խñ� ���
	public List<ReviewCommand> getArticles(Map<String, Object> map) {
		// TODO Auto-generated method stub
		List<ReviewCommand> review=getSqlSession().selectList("getArticles",map);
		return review;
	}
	
	//�� �Խñ� ����
	public int getAllArticleCount() {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("getAllArticleCnt");
	}
	
	//�ش� �Ĵ� �� �Խñ�
	public int getArticleCount(String r_name) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("getArticleCnt",r_name);
	}
	
	//�Խñ۹�ȣ �ִ밪
	public int getMaxNum() {
		int re_num=(Integer)getSqlSession().selectOne("getMaxNum");
		System.out.println("getMaxNum�� maxnum "+re_num);
		return re_num;
	}
	
	//�� �Է�
	public List<ReviewCommand> insert(ReviewCommand review) {
		getSqlSession().insert("insertArticle",review);
		return null;
	}

	//������ �� ��������
	public ReviewCommand updateGetArticle(int re_num) {
		return getSqlSession().selectOne("updateGetArticle",re_num);
	}
		
	//����
	public int update(Map<String, Object> map) {
		return getSqlSession().update("updateArticle",map);
	}
	//����
	public void delete(Map<String, Object> map) {
		getSqlSession().delete("deleteArticle",map);
	}
	
	//����¡
	public HashMap<String, Integer> pageList(String pageNum,int count) {
		HashMap<String,Integer> pgList=new HashMap<String,Integer>();
		int pageSize=5;
		int blockSize=10;
		
		if(pageNum==null || pageNum == "") {
			pageNum="1";
		}
		int currentPage=Integer.parseInt(pageNum);
		int startRow=(currentPage-1)*pageSize+1;
		int endRow=currentPage*pageSize;
		int number=0;
		number=count-(currentPage-1)*pageSize;
		
		System.out.println("���� ���� ���ڵ��(count) "+count+",number "+number+",pageNum "+pageNum);
		
		int pageCount=count/pageSize+(count%pageSize==0?0:1);
		int startPage=0;
		if(currentPage%blockSize!=0) {
			startPage=currentPage/blockSize*blockSize+1;
		}else {
			startPage=((currentPage/blockSize)-1)*blockSize+1;
		}
		int endPage=startPage+blockSize-1;
		System.out.println("���� pgList�޼ҵ��� startPage "+startPage+",endPage "+endPage);
		if(endPage>pageCount)
			endPage=pageCount;
			pgList.put("pageSize", pageSize);
			pgList.put("blockSize", blockSize);
	       pgList.put("currentPage", currentPage);
	       pgList.put("startRow", startRow);
	       pgList.put("endRow", endRow);
	       pgList.put("count", count);
	       pgList.put("number", number);
	       pgList.put("startPage", startPage);
	       pgList.put("endPage", endPage);
	       pgList.put("pageCount", pageCount);
	       pgList.put("pageNum", Integer.parseInt(pageNum));
	       System.out.println("pageNum "+pageNum);
	       
	       return pgList;
	}
}
