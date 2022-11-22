<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.jspstudy.ch03.vo.LottoNum" %>    
<%
	ArrayList<LottoNum> arrLotto = new ArrayList<LottoNum>();
	arrLotto.add(new LottoNum("907회", 21, 27, 29, 38, 40, 44, 37)); 	
	arrLotto.add(new LottoNum("908회", 3, 16, 21, 22, 23, 44, 30)); 	
	arrLotto.add(new LottoNum("909회", 7, 24, 29, 30, 34, 35, 33)); 	
	arrLotto.add(new LottoNum("910회", 1, 11, 17, 27, 35, 39, 31)); 	
	arrLotto.add(new LottoNum("911회", 4, 5, 12, 14, 32, 42, 35)); 	
	arrLotto.add(new LottoNum("912회", 5, 8, 18, 21, 22, 38, 10)); 	
	arrLotto.add(new LottoNum("913회", 6, 14, 16, 21, 27, 37, 40)); 	
	arrLotto.add(new LottoNum("914회", 16, 19, 24, 33, 42, 44, 27)); 	
	arrLotto.add(new LottoNum("915회", 2, 6, 11, 13, 22, 37, 14)); 	
	arrLotto.add(new LottoNum("916회", 9, 21, 22, 32, 35, 36, 17)); 	

	request.setAttribute("arrLotto", arrLotto);
	pageContext.forward("lottoNumList.jsp");
%>
