package action.rest;

import java.io.File;
import java.util.HashMap;
import java.util.Iterator;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import beans.RestCommand;
import beans.RestDAO;
import util.StringSecure;

@Controller
public class UpdateInfoProController {

	@Autowired
	RestDAO rda;

	@RequestMapping("/Mypage_r/updateInfoPro.lunch")
	public ModelAndView handleRequest(MultipartHttpServletRequest request, HttpServletResponse response)
			throws Exception {
		RestCommand rest = new RestCommand();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("Mypage_r/updateInfoPro"); // 이동할 페이지 지정

		rest.setR_id(StringSecure.convert(request.getParameter("r_id")));
		rest.setR_passwd(StringSecure.convert(request.getParameter("r_passwd")));
		rest.setR_email(StringSecure.convert(request.getParameter("r_email")));
		rest.setR_phone(StringSecure.convert(request.getParameter("r_phone")));
		// System.out.println("UpdateInfoProAction rest.r_id="+rest.getR_id());

		rest.setR_wi(Double.parseDouble(request.getParameter("r_wi")));
		rest.setR_gy(Double.parseDouble(request.getParameter("r_gy")));
		rest.setR_add(StringSecure.convert(request.getParameter("r_add")));
		rest.setR_name(StringSecure.convert(request.getParameter("r_name")));
		rest.setR_info(StringSecure.convert(request.getParameter("r_info")));
		System.out.println("UpdateInfoProController rest_info.r_wi=" + rest.getR_wi());
		// rest, rest_info 테이블에 들어갈 식당 정보를 페이지로부터 받아오기

		String newFileName = ""; // 업로드 되는 파일명

		// 저장할 경로 지정
		String root_path = request.getSession().getServletContext().getRealPath("/");
		String path = root_path + "img/restaurant/" + rest.getR_id() + "/";
		System.out.println("UpdateInfoProController path:" + path);

		// 경로에 폴더가 있는지 확인
		File dir = new File(path);
		if (!dir.isDirectory()) {
			dir.mkdir();
		}
		
		int index = 0;
		Iterator<String> files = request.getFileNames();
		while (files.hasNext()) {
			String uploadFile = files.next();
			MultipartFile mFile = request.getFile(uploadFile);
			String fileName = mFile.getOriginalFilename();
			System.out.println("실제 파일 이름 : " + fileName);
			if (!fileName.equals("")) {
				newFileName = System.currentTimeMillis() + "_" + index + "."
						+ fileName.substring(fileName.lastIndexOf(".") + 1);
				System.out.println("저장되는 파일 이름 : " + newFileName);
				HashMap<String, String> delImg=new HashMap<String, String>();
				delImg.put("r_id", rest.getR_id());
				
				//rest_info에 파일명 저장/기존 이미지 삭제
				switch(index) {
				case 0:
					rest.setR_img0(path+newFileName);
					delImg.put("r_img", "r_img0");
					rda.deleteRestImg(delImg);
					break;
				case 1:
					rest.setR_img1(path+newFileName);
					delImg.put("r_img", "r_img1");
					rda.deleteRestImg(delImg);
					break;
				case 2:
					rest.setR_img2(path+newFileName);
					delImg.put("r_img", "r_img2");
					rda.deleteRestImg(delImg);
					break;
				}
				try {
					mFile.transferTo(new File(path + newFileName));
				} catch (Exception e) {
					e.printStackTrace();
				}
			}else {
				//이미지를 변경하지 않을 경우 기존 파일명을 DTO에 넣어주기
				HashMap<String, String> getImg=new HashMap<String, String>();
				getImg.put("r_id", rest.getR_id());
				switch(index) {
				case 0:
					getImg.put("r_img", "r_img0");
					rest.setR_img0(rda.getRestImg(getImg));
					break;
				case 1:
					getImg.put("r_img", "r_img1");
					rest.setR_img1(rda.getRestImg(getImg));
					break;
				case 2:
					getImg.put("r_img", "r_img2");
					rest.setR_img2(rda.getRestImg(getImg));
					break;
				}
			}
			index++;
		}
		//rda.deleteRestImg(rest.getR_id());	//기존 식당 이미지 삭제하기
		int check = rda.updateRest(rest); // 식당 정보 수정하기
		System.out.println("UpdateInfoProController check=" + check);

		mav.addObject("check", check); // 이동할 페이지에 식당 정보 수정 성공 여부 삽입
		return mav;
	}

}
