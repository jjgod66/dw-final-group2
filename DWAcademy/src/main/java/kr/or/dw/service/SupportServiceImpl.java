package kr.or.dw.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;

import kr.or.dw.command.PageMaker;
import kr.or.dw.command.SearchCriteria;
import kr.or.dw.dao.SupportDAO;
import kr.or.dw.vo.AnswerVO;
import kr.or.dw.vo.FaqVO;
import kr.or.dw.vo.QnaAttachVO;
import kr.or.dw.vo.QnaVO;

public class SupportServiceImpl implements SupportService{

	@Autowired
	private SupportDAO supportDAO;

	@Override
	public Map<String, Object> getFaQList(SearchCriteria cri) throws SQLException {
		
		List<FaqVO> faqList = null;
		
		int offset = cri.getPageStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		faqList = supportDAO.selectFaQList(cri, rowBounds);
		
		int totalCount = supportDAO.selectFaQListCount(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);
		Map<String, Object> dataMap = new HashMap<String, Object>();
		dataMap.put("totalCount", totalCount);
		dataMap.put("faqList", faqList);
		dataMap.put("pageMaker", pageMaker);
		
		return dataMap;
	}

	@Override
	public List<FaqVO> getFaQ5() throws SQLException {
		List<FaqVO> faqList = null;
		
		faqList = supportDAO.selectFaQ5();
		
		return faqList;
	}

	@Override
	public String nonMemInqYN(QnaVO qna) throws SQLException {
		String result = "N";
		
		int cnt = 0;
		cnt = supportDAO.selectNonMemInqCount(qna);
		if(cnt > 0) {
			result = "Y";
		}
		
		return result;
	}

	@Override
	public List<QnaVO> getNonMemQnaList(QnaVO qna, String keyword) throws SQLException {
		List<QnaVO> qnaList = null;
		
		Map<String, Object> param = new HashMap<>();
		param.put("writer_name", qna.getWriter_name());
		param.put("writer_email", qna.getWriter_email());
		param.put("writer_pwd", qna.getWriter_pwd());
		param.put("keyword", keyword);
		
		qnaList = supportDAO.selectNonMemQnaList(param);
		return qnaList;
	}

	@Override
	public QnaVO getQnaByQueNo(int que_no) throws SQLException {
		QnaVO qna = null;
		qna = supportDAO.selectQnaByQueNo(que_no);
		
		return qna;
	}

	@Override
	public AnswerVO getAnswerByQueNo(int que_no) throws SQLException {
		AnswerVO answer = null;
		answer = supportDAO.selectAnswerByQueNo(que_no);
		
		return answer;
	}

	@Override
	public void deleteQna(int que_no) throws SQLException {
		supportDAO.deleteQna(que_no);
	}

	@Override
	public List<String> getQueType(String que_sel) throws SQLException {
		List<String> queTypeList = null;
		queTypeList = supportDAO.selectQueTypeList(que_sel);
		
		return queTypeList;
	}

	@Override
	public List<String> getThrList(String thr_loc) throws SQLException {
		List<String> thrList = null;
		
		thrList = supportDAO.selectThrList(thr_loc);
		
		return thrList;
	}

	@Override
	public void registQna(QnaVO qna, QnaAttachVO attach) throws SQLException {
		if(qna.getMem_cd() != null && !"".equals(qna.getMem_cd())) {
			supportDAO.registQnaMem(qna);
			
		}else {
			supportDAO.registQnaNonMem(qna);
			
		}
		
		if(attach.getAttach_path() != null && !"".equals(attach.getAttach_path())) {
			attach.setQue_no(qna.getQue_no());
			supportDAO.registQnaAttach(attach);
		}
		
		
	}
}