package beans;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import beans.ReviewCommand;

public interface ReviewDao {

	//1.�ѱ۰���
	public int getAllArticleCount();
	//2.�Ĵ纰 �Ѱ���
	public int getArticleCount(String r_name);
	//3.�Խ��� ����
	public List<ReviewCommand> getArticles(Map<String,Object> map);
	//4.�Խ����� �۾���
	public List<ReviewCommand> insert(ReviewCommand review);
	//5.�Խù���ȣ ã��
	public int getMaxNum();
	//6.�ۼ����ϱ�
	public int update(Map<String,Object> map);
	//7.�ۻ����ϱ�
	public void delete(Map<String,Object> map);
	
	public ReviewCommand updateGetArticle(int re_num);
	
	public HashMap<String, Integer> pageList(String pageNum,int count);
}
