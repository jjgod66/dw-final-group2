<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="sysAdminHeader.jsp"%>

<c:set var="cri" value="${pageMaker.cri }" />

<style>
#wrapper {
    background-color: #fff;
    z-index: 5;
    min-width: 1210px;
    zoom: 1;
}
#snb {
    float: left;
    width: 204px;
    background: #fff;
    zoom: 1;
}
#snb .snb_header {
    height: 100px;
    text-align: center;
}
#snb .snb_header h2 {
    padding: 18px 0 10px 0;
    font-size: 20px;
    letter-spacing: -1px;
}
#snb .snb_header h2 i {
    height: 36px;
    font-size: 30px;
    color: #888;
    display: block;
}

.fa-truck:before {
    content: "\f0d1";
}
#snb dl {
    margin-bottom: 100px;
}
#snb dt {
    background: #f6f6f6 url(/admin/img/sflex_icon.png) 174px -302px no-repeat;
    border-top: 1px solid #cfcfcf;
    padding: 0 0 0 17px;
    font-size: 12px;
    line-height: 2.8;
    font-weight: 600;
    vertical-align: middle;
    cursor: pointer;
}
#snb dd {
    display: block;
    position: relative;
}

#snb dd a {
    display: block;
    padding: 7px 0 7px 17px;
    text-decoration: none;
    background: #fff;
    color: #555;
    vertical-align: middle;
}
#snb:after {
    display: block;
    visibility: hidden;
    clear: both;
    content: "";
}
#content {
    margin-left: 204px;
    padding-bottom: 100px;
    border-left: 1px solid #ccc;
}
.breadcrumb {
    padding: 0 0 0 25px;
    color: #000;
    line-height: 34px;
    border-bottom: 1px solid #e9e9e9;
    text-align: left;
}
.breadcrumb span {
    font-weight: 400;
}
.breadcrumb .ionicons {
    margin: 0 7px 1px;
    vertical-align: middle;
}
.ion-ios-arrow-right:before {
    content: "\f3d3";
}
.s_wrap {
    margin: 30px 25px;
}
#content h1 {
    margin: 0 0 20px;
    padding-bottom: 15px;
    border-bottom: 1px solid #888;
    font-size: 20px;
    line-height: 1em;
    letter-spacing: -1px;
}
#content h2 {
    margin: 30px 0 0;
    position: relative;
    font-size: 16px;
    font-weight: 600;
    letter-spacing: -1px;
    line-height: 1em;
    padding: 0 0 10px 10px;
}
#content h2:before {
    display: inline-block;
    position: absolute;
    left: 0;
    top: 0;
    width: 4px;
    height: 16px;
    background: #1a4e99;
    content: '';
}
form {
    margin: 0;
}
input, textarea {
    box-sizing: border-box;
    border-radius: 0;
    background: none;
}
.tbl_frm01 {
    border-top: 1px solid #888;
}
.tbl_frm01 table {
    width: 100%;
}
.w100 {
    width: 100px !important;
}
.tbl_frm01 th {
    font-weight: 600;
}

.tbl_frm01 th, .tbl_frm01 td {
    padding: 8px 14px;
    height: 23px;
    border-bottom: 1px solid #e4e5e7;
    text-align: left;
    vertical-align: middle;
}

select {
    font-size: 12px;
    height: 23px;
    padding: 1px;
    border: 1px solid #ccc;
    background: #fff;
}
.frm_input {
    padding: 0 4px 1px 4px;
    font-size: 12px;
    font-weight: normal;
    border: 1px solid #ddd;
    background-color: #fff;
    border-radius: 0;
    -webkit-border-radius: 0;
    -moz-border-radius: 0;
}
.sound_only {
    display: inline-block !important;
    position: absolute;
    top: 0;
    left: 0;
    margin: 0 !important;
    padding: 0 !important;
    font-size: 0;
    line-height: 0;
    border: 0 !important;
    overflow: hidden !important;
}
.btn_group {
    position: static !important;
    margin: 0;
    padding: 0;
}
.btn_group .btn_small:first-child {
    margin-left: 0 !important;
}
/* .white, .white:active {
    background: #fff;
    border: 1px solid #ccc;
    color: #181c1f !important;
} */
.btn_small {
    padding: 2px 8px;
    font-size: 11px;
    line-height: 1.555;
    font-weight: normal !important;
}
.btn_confirm {
    margin-top: 20px;
    text-align: center;
}
.btn_confirm a, .btn_confirm input, .btn_confirm button {
    margin: 0 1.5px;
}
.btn_ssmall, .btn_small, .btn_lsmall, .btn_medium, .btn_large {
    background: #333;
    border: 1px solid #333;
    color: #fff !important;
}
.btn_medium {
    padding: 8px 15px;
    font-size: 13px;
    line-height: 1.444;
    font-weight: 600;
}
.grey {
    background: #888;
    border: 1px solid #888;
    color: #fff !important;
}
.local_ov {
    margin: 0;
    padding: 10px;
    border-top: 1px solid #aeaeae;
}
.mart30 {
    margin-top: 30px !important;
}
.fc_red {
    color: #ec0e03 !important;
}
.local_frm01 {
    border-top: 1px solid #ececec;
}
.local_frm01, .local_frm02 {
    overflow: hidden;
    margin: 0;
    padding: 7px 10px;
    background: #fcfcfc;
}
.bx-white {
    background: #fff;
    border: 1px solid #ccc;
    color: #222 !important;
}
.btn_lsmall {
    padding: 3px 10px;
    font-size: 12px;
    line-height: 1.666;
    font-weight: normal !important;
}
.tbl_head01 {
    border-top: 1px solid #aeaeae;
    border-bottom: 1px solid #e4e5e7;
}
.tbl_head01 table {
    width: 100%;
}
.w50 {
    width: 50px !important;
}
.w80 {
    width: 80px !important;
}
.w100 {
    width: 100px !important;
}
.w130 {
    width: 130px !important;
}
.w300 {
    width: 300px !important;
}
thead, tfoot {
    font-size: 12px;
    line-height: 1em;
    vertical-align: baseline;
}
.tbl_head01 th {
    padding: 8px 10px;
    line-height: 1em;
    font-weight: 600;
    background: #f1f1f1;
}
.list0 {
    background-color: #ffffff !important;
}
.tbl_head01 td {
    height: 22px;
    padding: 8px 8px;
    line-height: 1.6em;
    border-top: 1px solid #e4e5e7;
}
.tbl_head01 th, .tbl_head01 td {
    border-left: 1px solid #e4e5e7;
    text-align: center;
    vertical-align: middle;
}
#snb dd.active a {
    font-weight: 600;
    color: #fa2828 !important;
    background: #eeeeee !important;
}
</style>

<div id="wrapper">
	<div id="snb">
		<div class="snb_header ico_config">
			<h2>
				<i class="fa fa-truck"></i>지점관리
			</h2>
		</div>
		<dl>
			<dt class="s10 menu_toggle">지점 리스트 </dt>
			<dd class="s10">
				<a href="<%= request.getContextPath() %>/sysAdmin/placeAdmin.do">지점 목록
				</a>
			</dd>
			<dd class="s10">
				<a href="<%=request.getContextPath() %>/sysAdmin/placeRegistAdmin.do">지점신규등록</a>
			</dd>
		</dl>
	</div>
	<div id="content">
		<div class="breadcrumb">
			<span>HOME</span> <i class="ionicons ion-ios-arrow-right"></i> 지점관리
		</div>










		<div class="s_wrap">
			<h1>지점목록</h1>
			<script type="text/javascript"
				src="//ajax.googleapis.com/ajax/libs/jqueryui/1.8.17/jquery-ui.min.js"></script>
			<h2>지점검색</h2>
			<form name="fsearch" id="fsearch" method="get">
				<input type="hidden" name="code" value="list">
				<div class="tbl_frm01">
					<table>
						<colgroup>
							<col class="w100">
							<col>
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">검색어</th>
								<td><select name="searchType">
										<option value="">지역구분</option>
										<option value="서울">서울</option>
										<option value="경기">경기</option>
										<option value="강원">강원</option>
										<option value="충청">대전/충청</option>
										<option value="경상">부산/대구/경상</option>
										<option value="전라">광주/전라 </option>
										<option value="제주">제주</option>
								</select> <input type="text" name="keyword" value="${cri.keyword }" class="frm_input"
									size="30"></td>
							</tr>
							
						</tbody>
					</table>
				</div>
				<div class="btn_confirm">
					<input type="submit" value="검색" class="btn_medium"> <input
						type="button" value="초기화" id="frmRest" class="btn_medium grey">
				</div>
			</form>
				<div class="local_ov mart30">
					전체 : <b class="fc_red">${pageMaker.totalCount }</b> 건 조회
				</div>
				<div class="local_frm01 mt-3" style="float: right;">
					<button class="btn_lsmall bx-white" id="theaterRegistFormBtn">지점 등록</button>
				</div>
				<div class="tbl_head01">
					<table>
						<colgroup>
							<col class="w100">
							<col class="w100">
							<col class="w150">
							<col class="w80">
							<col class="w80">
							<col class="w100">
							<col class="w80">
							<col class="w100">
							<col class="w80">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">영화관명 </th>
								<th scope="col">지역구분</th>
								<th scope="col">주소 </th>
								<th scope="col">지점관리자아이디</th>
								<th scope="col">지점관리자비밀번호 </th>
								<th scope="col">전화번호</th>
								<th scope="col">상영관 수</th>
								<th scope="col">등록일시</th>
								<th scope="col">비활성화여부</th>
							</tr>
						</thead>
						<tbody class="list">
							<c:if test="${empty theaterList }">
								<tr>
									<td colspan="12">
										<strong>해당 내용이 없습니다.</strong>
									</td>
								</tr>
							</c:if>
							<c:forEach items="${theaterList }" var="thr">
								<tr class="list0">
									<td><a href="theaterRegistForm.do?thr_name=${thr.thr_name }">${thr.thr_name }</a></td>
									<td>${thr.thr_loc }</td>
									<td>${thr.thr_addr } ${thr.thr_addr_detail }</td>
									<td>${thr.admin_id }</td>
									<td>${thr.admin_pwd }</td>
									<td>${thr.thr_tel }</td>
									<td>1234</td>
									<td><fmt:formatDate value='${thr.regdate }' pattern='yyyy-MM-dd'/></td>
									<td>${thr.gb_del }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div>
					<%@ include file="../common/pagination.jsp" %>
				</div>
			

			<script>
				$(function() {
					
				});
			</script>
		</div>

	</div>
</div>

<script>
	$(function(){
		$('#theaterRegistFormBtn').on('click', function(){
			location.href="theaterRegistForm.do";
		});
	});
</script>

<%@ include file="sysAdminFooter.jsp" %>