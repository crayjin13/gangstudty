<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%><!DOCTYPE html><!--
Template Name: Metronic - Bootstrap 4 HTML, React, Angular 9 & VueJS Admin Dashboard Theme
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Dribbble: www.dribbble.com/keenthemes
Like: www.facebook.com/keenthemes        
Purchase: https://1.envato.market/EA4JP
Renew Support: https://1.envato.market/EA4JP
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
--><html lang="ko"><!--begin::Head--><head><style>  @font-face {     font-family: 'Cafe24Oneprettynight';    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.1/Cafe24Oneprettynight.woff') format('woff');    font-weight: normal;    font-style: normal;}</style><base href="../../../">     <meta charset="utf-8" /><title>회원 정보 수정 | Gangstudy</title><meta name="description" content="Edit user example" /><meta name="viewport"	content="width=device-width, initial-scale=1, shrink-to-fit=no" /><link rel="canonical" href="https://gangstudy.com" /><!--begin::Fonts--><link rel="stylesheet"	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" /><!--end::Fonts--><!--begin::Page Custom Styles(used by this page)--><link	href="${pageContext.request.contextPath}/resources/assets/css/pages/wizard/wizard-4.css"	rel="stylesheet" type="text/css" /><!--end::Page Custom Styles--><!--begin::Global Theme Styles(used by all pages)--><link	href="${pageContext.request.contextPath}/resources/assets/plugins/global/plugins.bundle.css"	rel="stylesheet" type="text/css" /><link	href="${pageContext.request.contextPath}/resources/assets/plugins/custom/prismjs/prismjs.bundle.css"	rel="stylesheet" type="text/css" /><link	href="${pageContext.request.contextPath}/resources/assets/css/style.bundle.css"	rel="stylesheet" type="text/css" /><!--end::Global Theme Styles--><!--begin::Layout Themes(used by all pages)--><!--end::Layout Themes--><link rel="shortcut icon"	href="${pageContext.request.contextPath}/resources/assets/media/logos/logo-g1.png" /></head><!--end::Head--><!--begin::Body--><body id="kt_body"	class="header-mobile-fixed subheader-enabled aside-enabled aside-fixed aside-secondary-enabled page-loading">	<!--begin::Main-->						<!--begin::Header Mobile-->		<div id="kt_header_mobile" class="header-mobile align-items-center header-mobile-fixed">			<!--begin::Logo-->			<a href="/">				<img alt="Logo" src="${pageContext.request.contextPath}/resources/assets/media/logos/logo-g1.png" />			</a>			<!--end::Logo-->			<!--begin::Toolbar-->			<div class="d-flex align-items-center">				<!--begin::Aside Mobile Toggle-->				<button class="btn p-0 burger-icon burger-icon-left" id="kt_aside_mobile_toggle">					<span></span>				</button>				<!--end::Aside Mobile Toggle-->												<!--begin::Topbar Mobile Toggle-->				<button class="btn btn-hover-text-primary p-0 ml-2" id="kt_header_mobile_topbar_toggle">					<span class="svg-icon svg-icon-xl">						<!--begin::Svg Icon | path:${pageContext.request.contextPath}/resources/assets/media/svg/icons/General/User.svg-->												<!--end::Svg Icon-->					</span>				</button>				<!--end::Topbar Mobile Toggle-->			</div>			<!--end::Toolbar-->		</div>		<!--end::Header Mobile-->				<div class="d-flex flex-column flex-root">																								<!--begin::Page-->		<div class="d-flex flex-row flex-column-fluid page">			<!--begin::Aside--><%@ include file="/WEB-INF/views/partials/_aside.jsp"%>      			<!--end::Aside-->			<!--begin::Wrapper-->			<div class="d-flex flex-column flex-row-fluid wrapper"				id="kt_wrapper">				<!--begin::Content-->				<div class="content d-flex flex-column flex-column-fluid"					id="kt_content">					<!--begin::Subheader-->					<div class="subheader py-2 py-lg-4 subheader-transparent"						id="kt_subheader">						<div							class="container d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">							<!--begin::Details-->							<div class="d-flex align-items-center flex-wrap mr-2">								<!--begin::Title-->								<h5 class="text-dark font-weight-bold mt-2 mb-2 mr-5 cafe24">회원									정보 수정</h5>								<!--end::Title-->								<!--begin::Separator-->								<div									class="subheader-separator subheader-separator-ver mt-2 mb-2 mr-5 bg-gray-200"></div>								<!--end::Separator-->								<!--begin::Search Form-->								<div class="d-flex align-items-center" id="kt_subheader_search">									<span class="text-dark-50 font-weight-bold"										id="kt_subheader_total">${sUserId.id} </span>								</div>								<!--end::Search Form-->							</div>							<!--end::Details-->							<!--begin::Toolbar-->							<div class="d-flex align-items-center">								<!--begin::Button-->								<!-- <a href="/gangstudy"									class="btn btn-default font-weight-bold btn-sm px-3 font-size-base">메인으로</a> -->								<!--end::Button-->								<!--begin::Dropdown-->								<!-- <div class="btn-group ml-2">									<button type="button"										class="btn btn-primary font-weight-bold btn-sm px-3 font-size-base">저장										& 수정</button>									<button type="button"										class="btn btn-primary font-weight-bold btn-sm px-3 font-size-base dropdown-toggle dropdown-toggle-split"										data-toggle="dropdown" aria-haspopup="true"										aria-expanded="false"></button>									<div										class="dropdown-menu dropdown-menu-sm p-0 m-0 dropdown-menu-right">										<ul class="navi py-5">											<li class="navi-item"><a href="/edit-user"												class="navi-link"> <span class="navi-icon"> <i														class="flaticon2-writing"></i>												</span> <span class="navi-text">저장 &amp; 수정계속</span>											</a></li>											<li class="navi-item"><a href="/" class="navi-link">													<span class="navi-icon"> <i														class="flaticon2-hourglass-1"></i>												</span> <span class="navi-text">저장 &amp; 나가기</span>											</a></li>										</ul>									</div>								</div> -->								<!--end::Dropdown-->							</div>							<!--end::Toolbar-->						</div>					</div>					<!--end::Subheader-->					<!--begin::Entry-->					<div class="d-flex flex-column-fluid">						<!--begin::Container-->						<div class="container">							<!--begin::Card-->							<div class="card card-custom">								<!--begin::Card header-->								<div class="card-header card-header-tabs-line nav-tabs-line-3x">									<!--begin::Toolbar-->									<div class="card-toolbar">										<ul											class="nav nav-tabs nav-bold nav-tabs-line nav-tabs-line-3x">											<!--begin::Item-->											<li class="nav-item mr-3"><a class="nav-link active"												data-toggle="tab" href="#kt_user_edit_tab_1"> <span													class="nav-icon"> <span class="svg-icon"> <!--begin::Svg Icon | path:${pageContext.request.contextPath}/resources/assets/media/svg/icons/Design/Layers.svg-->															<svg xmlns="http://www.w3.org/2000/svg"																xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"																height="24px" viewBox="0 0 24 24" version="1.1">
																	<g stroke="none" stroke-width="1" fill="none"																	fill-rule="evenodd">
																		<polygon points="0 0 24 0 24 24 0 24" />
																		<path																	d="M12.9336061,16.072447 L19.36,10.9564761 L19.5181585,10.8312381 C20.1676248,10.3169571 20.2772143,9.3735535 19.7629333,8.72408713 C19.6917232,8.63415859 19.6104327,8.55269514 19.5206557,8.48129411 L12.9336854,3.24257445 C12.3871201,2.80788259 11.6128799,2.80788259 11.0663146,3.24257445 L4.47482784,8.48488609 C3.82645598,9.00054628 3.71887192,9.94418071 4.23453211,10.5925526 C4.30500305,10.6811601 4.38527899,10.7615046 4.47382636,10.8320511 L4.63,10.9564761 L11.0659024,16.0730648 C11.6126744,16.5077525 12.3871218,16.5074963 12.9336061,16.072447 Z"																	fill="#000000" fill-rule="nonzero" />
																		<path																	d="M11.0563554,18.6706981 L5.33593024,14.122919 C4.94553994,13.8125559 4.37746707,13.8774308 4.06710397,14.2678211 C4.06471678,14.2708238 4.06234874,14.2738418 4.06,14.2768747 L4.06,14.2768747 C3.75257288,14.6738539 3.82516916,15.244888 4.22214834,15.5523151 C4.22358765,15.5534297 4.2250303,15.55454 4.22647627,15.555646 L11.0872776,20.8031356 C11.6250734,21.2144692 12.371757,21.2145375 12.909628,20.8033023 L19.7677785,15.559828 C20.1693192,15.2528257 20.2459576,14.6784381 19.9389553,14.2768974 C19.9376429,14.2751809 19.9363245,14.2734691 19.935,14.2717619 L19.935,14.2717619 C19.6266937,13.8743807 19.0546209,13.8021712 18.6572397,14.1104775 C18.654352,14.112718 18.6514778,14.1149757 18.6486172,14.1172508 L12.9235044,18.6705218 C12.377022,19.1051477 11.6029199,19.1052208 11.0563554,18.6706981 Z"																	fill="#000000" opacity="0.3" />
																	</g>
																</svg> <!--end::Svg Icon-->													</span>												</span> <span class="nav-text font-size-lg cafe24">프로파일</span>											</a></li>											<!--end::Item-->											<!--begin::Item-->											<li class="nav-item mr-3"><a class="nav-link"												data-toggle="tab" href="#kt_user_edit_tab_3"> <span													class="nav-icon"> <span class="svg-icon">															begin::Svg Icon |															path:${pageContext.request.contextPath}/resources/assets/media/svg/icons/Communication/Delete-user.svg															<svg xmlns="http://www.w3.org/2000/svg"																xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"																height="24px" viewBox="0 0 24 24" version="1.1">
																	<g stroke="none" stroke-width="1" fill="none"																	fill-rule="evenodd">
																		<rect x="0" y="0" width="24" height="24" />
																		<path																	d="M4,4 L11.6314229,2.5691082 C11.8750185,2.52343403 12.1249815,2.52343403 12.3685771,2.5691082 L20,4 L20,13.2830094 C20,16.2173861 18.4883464,18.9447835 16,20.5 L12.5299989,22.6687507 C12.2057287,22.8714196 11.7942713,22.8714196 11.4700011,22.6687507 L8,20.5 C5.51165358,18.9447835 4,16.2173861 4,13.2830094 L4,4 Z"																	fill="#000000" opacity="0.3" />
																		<path																	d="M12,11 C10.8954305,11 10,10.1045695 10,9 C10,7.8954305 10.8954305,7 12,7 C13.1045695,7 14,7.8954305 14,9 C14,10.1045695 13.1045695,11 12,11 Z"																	fill="#000000" opacity="0.3" />
																		<path																	d="M7.00036205,16.4995035 C7.21569918,13.5165724 9.36772908,12 11.9907452,12 C14.6506758,12 16.8360465,13.4332455 16.9988413,16.5 C17.0053266,16.6221713 16.9988413,17 16.5815,17 C14.5228466,17 11.463736,17 7.4041679,17 C7.26484009,17 6.98863236,16.6619875 7.00036205,16.4995035 Z"																	fill="#000000" opacity="0.3" />
																	</g>
																</svg> end::Svg Icon													</span>												</span> <span class="nav-text font-size-lg cafe24">회원탈퇴 </span>											</a></li>											<!--end::Item-->											<!--begin::Item-->											<!-- <li class="nav-item mr-3"><a class="nav-link"												data-toggle="tab" href="#kt_user_edit_tab_3"> <span													class="nav-icon"> <span class="svg-icon"> begin::Svg Icon | path:${pageContext.request.contextPath}/resources/assets/media/svg/icons/Communication/Shield-user.svg															<svg xmlns="http://www.w3.org/2000/svg"																xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"																height="24px" viewBox="0 0 24 24" version="1.1">
																	<g stroke="none" stroke-width="1" fill="none"																	fill-rule="evenodd">
																		<rect x="0" y="0" width="24" height="24" />
																		<path																	d="M4,4 L11.6314229,2.5691082 C11.8750185,2.52343403 12.1249815,2.52343403 12.3685771,2.5691082 L20,4 L20,13.2830094 C20,16.2173861 18.4883464,18.9447835 16,20.5 L12.5299989,22.6687507 C12.2057287,22.8714196 11.7942713,22.8714196 11.4700011,22.6687507 L8,20.5 C5.51165358,18.9447835 4,16.2173861 4,13.2830094 L4,4 Z"																	fill="#000000" opacity="0.3" />
																		<path																	d="M12,11 C10.8954305,11 10,10.1045695 10,9 C10,7.8954305 10.8954305,7 12,7 C13.1045695,7 14,7.8954305 14,9 C14,10.1045695 13.1045695,11 12,11 Z"																	fill="#000000" opacity="0.3" />
																		<path																	d="M7.00036205,16.4995035 C7.21569918,13.5165724 9.36772908,12 11.9907452,12 C14.6506758,12 16.8360465,13.4332455 16.9988413,16.5 C17.0053266,16.6221713 16.9988413,17 16.5815,17 C14.5228466,17 11.463736,17 7.4041679,17 C7.26484009,17 6.98863236,16.6619875 7.00036205,16.4995035 Z"																	fill="#000000" opacity="0.3" />
																	</g>
																</svg> end::Svg Icon													</span>												</span> <span class="nav-text font-size-lg">비밀번호 변경 </span>											</a></li> -->											<!--end::Item-->										</ul>									</div>									<!--end::Toolbar-->								</div>								<!--end::Card header-->      								<!--begin::Card body-->								<div class="card-body">									<form class="form" id="kt_form" method="post" action="/modifyInfo">										<div class="tab-content">											<!--begin::Tab-->											<div class="tab-pane show active px-7"												id="kt_user_edit_tab_1" role="tabpanel">												<!--begin::Row-->												<div class="row">													<div class="col-xl-2"></div>													<div class="col-xl-7 my-2">														<!--begin::Row-->														<div class="row">															<label class="col-3"></label>															<div class="col-9">																<h6 class="text-dark font-weight-bold mb-10 cafe24">회원 정보:</h6>															</div>														</div>														<!--end::Row-->														<!--begin::Group-->														<!--end::Group-->														<!--begin::Group-->  														<div class="form-group row">															<label																class="col-form-label col-3 text-lg-right text-left cafe24">																이름</label>															<div class="col-9">																<input type="text"																	class="form-control form-control-lg form-control-solid"																	id="name" name="name" value="${sUserId.name}" />															</div>														</div>														<!--end::Group-->														<!--begin::Group-->														<div class="form-group row">															<label																class="col-form-label col-3 text-lg-right text-left cafe24">핸드폰</label>															<div class="col-9">																<div																	class="input-group input-group-lg input-group-solid">																	<div class="input-group-prepend">																		<span class="input-group-text"> <i																			class="la la-phone"></i>																		</span>																	</div>																	<input type="text"																		class="form-control form-control-lg form-control-solid"																		value="${sUserId.phone}" placeholder="Phone"																		id="phone" name="phone" />																</div>																<span class="form-text text-muted"></span>															</div>														</div>														<!--end::Group-->														<!--begin::Group-->														<div class="form-group row">															<label																class="col-form-label col-3 text-lg-right text-left cafe24">아이디</label>															<div class="col-9">																<input																	class="form-control form-control-lg form-control-solid"																	type="text" name="id" id="id"																	placeholder=""																	value="${sUserId.id}" readonly /> <span																	class="form-text text-muted"></span>															</div>														</div>														<!--end::Group-->														<!--begin::Group-->														<div class="form-group row">															<label																class="col-form-label col-3 text-lg-right text-left cafe24">비밀번호</label>															<div class="col-9">																<input																	class="form-control form-control-lg form-control-solid"																	type="Password" id="pw" name="pw" value="${sUserId.pw}" />															</div>														</div>														<!--end::Group-->														<!--begin::Group-->														<div class="form-group row">															<label																class="col-form-label col-3 text-lg-right text-left cafe24">비밀번호재확인</label>															<div class="col-9">																<input																	class="form-control form-control-lg form-control-solid"																	type="Password" id="pw2" name="pw2" value="" /><span class="error"></span>															</div>														</div>														<!--end::Group-->														<!--begin::Group-->														<div class="form-group row">															<label																class="col-form-label col-3 text-lg-right text-left cafe24">이메일</label>															<div class="col-9">																<div																	class="input-group input-group-lg input-group-solid">																	<div class="input-group-prepend">																		<span class="input-group-text"> <i																			class="la la-at"></i>																		</span>																	</div>																	<input type="text"																		class="form-control form-control-lg form-control-solid"																		value="${sUserId.email}" name="email" id="email"																		placeholder="Email" />																</div>															</div>														</div>														<!--end::Group-->														<!--begin::Group-->														<div class="form-group row">															<label																class="col-form-label col-3 text-lg-right text-left cafe24">생년월일</label>															<div class="col-9">																<input type="text"																	class="form-control form-control-lg form-control-solid"																	id="bod" name="bod" value="${sUserId.bod}" readonly />															</div>														</div>														<!--end::Group-->														<!--begin::Group-->														<div class="form-group row">															<label																class="col-form-label col-3 text-lg-right text-left cafe24">성별</label>															<div class="col-9">																<div																	class="input-group input-group-lg input-group-solid">																	<select class="form-control" id="gender"																		value="${sUserId.gender}" name="gender">																		<option value="${sUserId.gender}">${sUserId.gender}</option>																		<option value="F">여성</option>																		<option value="M">남성</option>																	</select>																</div>															</div>														</div>														<!--end::Group-->													</div>												</div>												<!--end::Row-->												<!--begin::Footer-->												<div class="card-footer pb-0">													<div class="row">														<div class="col-xl-2"></div>														<div class="col-xl-7">															<div class="row">																<div class="col-3"></div>																<div class="col-9">																	<input class="btn btn-light-primary font-weight-bold"																		type="button" id="modifybtn" value="수정"> <a																		href="/" class="btn btn-clean font-weight-bold ">취소</a>																</div>															</div>														</div>													</div>												</div>												<!--end::Footer-->											</div>											<!--end::Tab-->									</form>									<!--begin::Tab-->									<!--end::Tab-->									<!--begin::Tab-->									<div class="tab-pane px-7" id="kt_user_edit_tab_3"										role="tabpanel">										<!--begin::Body-->										<div class="card-body">											<!--begin::Row-->											<div class="row">												<div class="col-xl-2"></div>												<div class="col-xl-7">													<!--begin::Row-->													<div class="row mb-5">														<label class="col-3"></label>														<div class="col-9">															<!-- <div																		class="alert alert-custom alert-light-danger fade show py-4"																		role="alert">																		<div class="alert-icon">																			<i class="flaticon-warning"></i>																		</div>																		<div class="alert-text font-weight-bold">    																																					</div>																		<div class="alert-close">																			<button type="button" class="close"																				data-dismiss="alert" aria-label="Close">																				<span aria-hidden="true"> <i																					class="la la-close"></i>																				</span>																			</button>																		</div>																	</div> -->														</div>													</div>													<!--end::Row-->													<form id="delete_User" method="POST" >														<!--begin::Row-->														<div class="row">															<label class="col-3"></label>															<div class="col-9">																<h6 class="text-dark font-weight-bold mb-10 cafe24" >탈퇴를																	원하시면 아이디와 비밀번호를 입력해주세요</h6>															</div>														</div>														<!--end::Row-->														<!--begin::Group-->														<div class="form-group row">															<label																class="col-form-label col-3 text-lg-right text-left cafe24">																아이디 </label>															<div class="col-9">																<input																	class="form-control form-control-lg form-control-solid mb-1"																	type="text" value="" name="id" id="id" />															</div>														</div>														<!--begin::Footer-->														<!--begin::Group-->														<div class="form-group row">															<label																class="col-form-label col-3 text-lg-right text-left cafe24">비밀번호															</label>															<div class="col-9">																<input																	class="form-control form-control-lg form-control-solid mb-1"																	type="Password" value="" name="pw" id="pw" /> <a																	href="/forgot" class="font-weight-bold font-size-sm cafe24">비밀번호																	찾기 </a>															</div>														</div>														<!--begin::Footer-->														<div class="card-footer pb-0">															<div class="row">																<div class="col-xl-2"></div>																<div class="col-xl-7">																	<div class="row">																		<div class="col-3"></div>																		<div class="col-9">																			<input class="btn btn-light-primary font-weight-bold"																				type="button" id="deletebtn" value="회원 탈퇴" /> <a																				href="/" class="btn btn-clean font-weight-bold">취소</a>																		</div>																	</div>																</div>															</div>														</div>														<!--end::Footer-->														<!--end::Group-->													</form>												</div>											</div>											<!--end::Row-->										</div>										<!--end::Body-->									</div>									<!--end::Tab-->									<!--begin::Tab-->									<!--end::Tab-->								</div>							</div>							<!--begin::Card body-->						</div>						<!--end::Card-->					</div>					<!--end::Container-->				</div>				<!--end::Entry-->			</div>			<!--end::Content-->			<!--begin::Footer-->			<!--doc: add "bg-white" class to have footer with solod background color-->			<div class="footer py-4 d-flex flex-lg-column" id="kt_footer">				<!--begin::Container-->				<div					class="container d-flex flex-column flex-md-row align-items-center justify-content-between">					<!--begin::Copyright-->					<div class="text-dark order-2 order-md-1">						<a href="/admin"> <span							class="text-muted font-weight-bold mr-2">대표이사 김정훈 </span></a> <a							href="/gangstudy" target="_blank"							class="text-dark-75 text-hover-primary">갱스터디</a>					</div>					<!--end::Copyright-->					<!--begin::Nav-->					<div class="nav nav-dark">						<a href="http://pf.kakao.com/_xbgCJxb" target="_blank"							class="nav-link pl-0 pr-5">카톡으로 문의하기 </a> <a							href="tel:+821021367733" target="_blank"							class="nav-link pl-0 pr-5">전화하기 </a> <a							onclick="window.open('${pageContext.request.contextPath}/resources/images/regit.png','_blank','scrollbars=no,width=564,height=860,top=10,left=20');"							target="_blank" class="nav-link pl-0 pr-0">사업자 등록 번호 :							783-17-01344</a>					</div>					<!--end::Nav-->				</div>				<!--end::Container-->			</div>			<!--end::Footer-->		</div>		<!--end::Wrapper-->	</div>	<!--end::Page-->	</div>	<!--end::Main-->	<!--begin::Quick Actions Panel-->	<!--end::Quick Actions Panel-->	<!-- begin::User Panel-->	<!-- end::User Panel-->	<!--begin::Quick Panel-->	<!--end::Quick Panel-->	<!--begin::Chat Panel-->	<!--end::Chat Panel-->	<!--begin::Scrolltop-->	<div id="kt_scrolltop" class="scrolltop">		<span class="svg-icon"> <!--begin::Svg Icon | path:${pageContext.request.contextPath}/resources/assets/media/svg/icons/Navigation/Up-2.svg-->			<svg xmlns="http://www.w3.org/2000/svg"				xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"				height="24px" viewBox="0 0 24 24" version="1.1">
					<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
						<polygon points="0 0 24 0 24 24 0 24" />
						<rect fill="#000000" opacity="0.3" x="11" y="10" width="2"					height="10" rx="1" />
						<path					d="M6.70710678,12.7071068 C6.31658249,13.0976311 5.68341751,13.0976311 5.29289322,12.7071068 C4.90236893,12.3165825 4.90236893,11.6834175 5.29289322,11.2928932 L11.2928932,5.29289322 C11.6714722,4.91431428 12.2810586,4.90106866 12.6757246,5.26284586 L18.6757246,10.7628459 C19.0828436,11.1360383 19.1103465,11.7686056 18.7371541,12.1757246 C18.3639617,12.5828436 17.7313944,12.6103465 17.3242754,12.2371541 L12.0300757,7.38413782 L6.70710678,12.7071068 Z"					fill="#000000" fill-rule="nonzero" />
					</g>
				</svg> <!--end::Svg Icon-->		</span>	</div>	<!--end::Scrolltop-->	<!--begin::Sticky Toolbar-->	<!--end::Sticky Toolbar-->	<!--begin::Demo Panel--><script></script>	<!--end::Demo Panel-->	<script>		var HOST_URL = "https://preview.keenthemes.com/metronic/theme/html/tools/preview";	</script>	<!--begin::Global Config(global config for global JS scripts)-->	<script>							var KTAppSettings = {			"breakpoints" : {				"sm" : 576,				"md" : 768,				"lg" : 992,				"xl" : 1200,				"xxl" : 1200			},			"colors" : {				"theme" : {					"base" : {						"white" : "#ffffff",						"primary" : "#1BC5BD",						"secondary" : "#E5EAEE",						"success" : "#1BC5BD",						"info" : "#6993FF",						"warning" : "#FFA800",						"danger" : "#F64E60",						"light" : "#F3F6F9",						"dark" : "#212121"					},					"light" : {						"white" : "#ffffff",						"primary" : "#1BC5BD",						"secondary" : "#ECF0F3",						"success" : "#C9F7F5",						"info" : "#E1E9FF",						"warning" : "#FFF4DE",						"danger" : "#FFE2E5",						"light" : "#F3F6F9",						"dark" : "#D6D6E0"					},					"inverse" : {						"white" : "#ffffff",						"primary" : "#ffffff",						"secondary" : "#212121",						"success" : "#ffffff",						"info" : "#ffffff",						"warning" : "#ffffff",						"danger" : "#ffffff",						"light" : "#464E5F",						"dark" : "#ffffff"					}				},				"gray" : {					"gray-100" : "#F3F6F9",					"gray-200" : "#ECF0F3",					"gray-300" : "#E5EAEE",					"gray-400" : "#D6D6E0",					"gray-500" : "#B5B5C3",					"gray-600" : "#80808F",					"gray-700" : "#464E5F",					"gray-800" : "#1B283F",					"gray-900" : "#212121"				}			},         			"font-family" : "Poppins"        		};	</script>         	<!--end::Global Config-->	<!--begin::Global Theme Bundle(used by all pages)-->	<script		src="${pageContext.request.contextPath}/resources/assets/plugins/global/plugins.bundle.js"></script>	<script		src="${pageContext.request.contextPath}/resources/assets/plugins/custom/prismjs/prismjs.bundle.js"></script>	<script		src="${pageContext.request.contextPath}/resources/assets/js/scripts.bundle.js"></script>	<!--end::Global Theme Bundle-->	<!--begin::Page Scripts(used by this page)-->			<script		src="${pageContext.request.contextPath}/resources/assets/js/pages/custom/user/edit-user.js"></script><script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/wUser.js"></script><%-- <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/test.js"></script> --%><script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script><script type="text/javascript" src="http://code.jquery.com/jquery-2.1.4.min.js"></script>  	<!--end::Page Scripts--></body><!--end::Body--></html>