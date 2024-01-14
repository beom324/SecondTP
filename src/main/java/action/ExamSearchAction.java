package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import dao.ExamDAO;

public class ExamSearchAction implements SistAction {

	@Override
	public String pro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String viewPage="examSearch.jsp";
		int pageNum=1;
		if(request.getAttribute("pageNum")!=null) {
			pageNum = Integer.parseInt(request.getParameter("pageNum"));
		}
		ExamDAO dao = new ExamDAO();
		Gson gson = new Gson();
		request.setAttribute("cnt", dao.totalExamCount());//전체 시험 수를 유지
		request.setAttribute("list", dao.pagingExam(pageNum));//전체 자격증 정보 출력
		request.setAttribute("totalPage", dao.totalPage);
		request.setAttribute("sCate", gson.toJson(dao.mdobligfldnmList()));//중직무분야명 목록출력
		request.setAttribute("bCate", gson.toJson(dao.obligfldnmList()));
		return viewPage;
	}

}