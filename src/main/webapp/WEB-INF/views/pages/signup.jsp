<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%><!DOCTYPE html>
<!--
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
-->
<html lang="en">
	<!--begin::Head-->
	<head><base href="../../../../">
		<meta charset="utf-8" />
		<title>Sign Up | gangstudy</title>
		<meta name="description" content="Singin page example" />
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
		<link rel="canonical" href="https://keenthemes.com/metronic" />
		<!--begin::Fonts-->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" />
		<!--end::Fonts-->
		<!--begin::Page Custom Styles(used by this page)-->
		<link href="webapp/resources/assets/css/pages/login/login-3.css" rel="stylesheet" type="text/css" />
		<!--end::Page Custom Styles-->
		<!--begin::Global Theme Styles(used by all pages)-->
		<link href="webapp/resources/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
		<link href="webapp/resources/assets/plugins/custom/prismjs/prismjs.bundle.css" rel="stylesheet" type="text/css" />
		<link href="webapp/resources/assets/css/style.bundle.css" rel="stylesheet" type="text/css" />		
		<!--end::Global Theme Styles-->
		<!--begin::Layout Themes(used by all pages)-->
		<!--end::Layout Themes-->
		<link rel="shortcut icon" href="webapp/resources/assets/media/logos/favicon.ico" />
	</head>
	<!--end::Head-->
	<!--begin::Body-->
	<body id="kt_body" class="header-mobile-fixed subheader-enabled aside-enabled aside-fixed aside-secondary-enabled page-loading">
		<!--begin::Main-->
		<div class="d-flex flex-column flex-root">
			<!--begin::Login-->
			<div class="login login-3 wizard d-flex flex-column flex-lg-row flex-column-fluid wizard" id="kt_login">
				<!--begin::Aside-->
				<div class="login-aside d-flex flex-column flex-row-auto">
					<!--begin::Aside Top-->
					<div class="d-flex flex-column-auto flex-column pt-15 px-30">
						<!--begin::Aside header-->
						<a href="#" class="login-logo py-6">
							<img src="webapp/resources/assets/media/logos/logo-g1.png" class="max-h-70px" alt="" />
						</a>   
						<!--end::Aside header-->
						<!--begin: Wizard Nav-->
						<div class="wizard-nav pt-5 pt-lg-30">
							<!--begin::Wizard Steps-->
							<div class="wizard-steps">
								<!--begin::Wizard Step 1 Nav-->
								<div class="wizard-step" data-wizard-type="step" data-wizard-state="current">
									<div class="wizard-wrapper">
										<div class="wizard-icon">
											<i class="wizard-check ki ki-check"></i>
											<span class="wizard-number">1</span>
										</div>
										<div class="wizard-label">
											<h3 class="wizard-title">이용약관</h3>
											<div class="wizard-desc"></div>
										</div>
									</div>
								</div>
								<!--end::Wizard Step 1 Nav-->
								<!--begin::Wizard Step 2 Nav-->
								<div class="wizard-step" data-wizard-type="step">
									<div class="wizard-wrapper">
										<div class="wizard-icon">
											<i class="wizard-check ki ki-check"></i>
											<span class="wizard-number">2</span>
										</div>
										<div class="wizard-label">
											<h3 class="wizard-title">가입하기 </h3>
											<div class="wizard-desc">Setup Your Account Details</div>
										</div>
									</div>
								</div>
								<!--end::Wizard Step 2 Nav-->
								
							</div>
							<!--end::Wizard Steps-->
						</div>
						<!--end: Wizard Nav-->
					</div>
					<!--end::Aside Top-->
					<!--begin::Aside Bottom-->
					<div class="aside-img-wizard d-flex flex-row-fluid bgi-no-repeat bgi-position-y-bottom bgi-position-x-center pt-2 pt-lg-5" style="background-position-y: calc(100% + 3rem); background-image: url(resources/assets/media/svg/illustrations/features.svg)"></div>
					<!--end::Aside Bottom-->
				</div>
				<!--begin::Aside-->
				<!--begin::Content-->
				<div class="login-content flex-column-fluid d-flex flex-column p-10">
					<!--begin::Top-->
					<div class="text-right d-flex justify-content-center">
						<div class="top-signup text-right d-flex justify-content-end pt-5 pb-lg-0 pb-10">
							<span class="font-weight-bold text-muted font-size-h4">문제가 있나요 ?</span>
							<a href="http://pf.kakao.com/_xbgCJxb" class="font-weight-bolder text-primary font-size-h4 ml-2" id="kt_login_signup">문의하기</a>
						</div>
					</div>
					<!--end::Top-->																														
					<!--begin::Wrapper-->
					<div class="d-flex flex-row-fluid flex-center">
						<!--begin::Signin-->
						<div class="login-form login-form-signup">
							<!--begin::Form-->
							<form class="form" novalidate="novalidate" id="kt_login_signup_form">														      																																																									<!--begin: Wizard Step 2-->								<div class="pb-5" data-wizard-type="step-content" data-wizard-state="current">									<!--begin::Title-->									<div class="pt-lg-0 pt-5 pb-15">										<h3 class="font-weight-bolder text-dark font-size-h2 font-size-h1-lg">갱스터디 이용약관</h3>									<!-- 	<div class="text-muted font-weight-bold font-size-h4">Have a Different Address ?										<a href="#" class="text-primary font-weight-bolder">Add Address</a></div> -->									</div>									<!--begin::Title-->									<!--begin::Row-->								<!--	<form action="sign_up.html" method="get" id="form1">									 	<td align="left"><font size="2"> 개인정보 수집 및												이용약관에 모두 동의합니다.</font></td>  										<td><input type="checkbox" name="all" id="all"></td>-->										<div class="form-check pl-0 checkbox-list">									<div class="accordion accordion-toggle-arrow"										id="accordionExample1">										<div class="card">											<div class="card-header">												<div class="card-title" data-toggle="collapse"													data-target="#collapseOne1">갱스터디 이용약관 동의(필수)</div>											</div>											<label class="checkbox checkbox-outline"> <input												type="checkbox" name="checkboxes" class="is-invalid">												<span></span>동의하기											</label>											<div id="collapseOne1" class="collapse "												data-parent="#accordionExample1">												<div class="card-body">													개인정보처리방침 1. 개인정보의 처리 목적													<갱스터디>(‘www.gangstudy.com’이하 ‘갱스터디’) 은(는) 다음의 목적을													위하여 개인정보를 처리하고 있으며, 다음의 목적 이외의 용도로는 이용하지 않습니다. - 고객 가입의사													확인, 고객에 대한 서비스 제공에 따른 본인 식별.인증, 회원자격 유지.관리, 물품 또는 서비스 공급에													따른 금액 결제, 물품 또는 서비스의 공급.배송 등 2. 개인정보의 처리 및 보유 기간 ① <갱스터디>(‘www.gangstudy.com’이하													‘갱스터디’) 은(는) 정보주체로부터 개인정보를 수집할 때 동의 받은 개인정보 보유․이용기간 또는 법령에													따른 개인정보 보유․이용기간 내에서 개인정보를 처리․보유합니다. ② 구체적인 개인정보 처리 및 보유 기간은													다음과 같습니다. ☞ 아래 예시를 참고하여 개인정보 처리업무와 개인정보 처리업무에 대한 보유기간 및 관련													법령, 근거 등을 기재합니다. (예시)- 고객 가입 및 관리 : 서비스 이용계약 또는 회원가입 해지시까지,													다만 채권․채무관계 잔존시에는 해당 채권․채무관계 정산시까지 - 전자상거래에서의 계약․청약철회, 대금결제,													재화 등 공급기록 : 5년 3. 정보주체와 법정대리인의 권리·의무 및 그 행사방법 이용자는 개인정보주체로써													다음과 같은 권리를 행사할 수 있습니다. ① 정보주체는 갱스터디(‘www.gangstudy.com’이하													‘갱스터디) 에 대해 언제든지 다음 각 호의 개인정보 보호 관련 권리를 행사할 수 있습니다. 1. 개인정보													열람요구 2. 오류 등이 있을 경우 정정 요구 3. 삭제요구 4. 처리정지 요구 4. 처리하는 개인정보의													항목 작성 ① <갱스터디>('www.gangstudy.com'이하 '갱스터디')은(는) 다음의													개인정보 항목을 처리하고 있습니다. 1<회원관리를 위한 정보수집> - 필수항목 : 이메일,													휴대전화번호, 비밀번호, 로그인ID, 성별, 생년월일, 이름 - 선택항목 : 5. 개인정보의 파기<갱스터디>('갱스터디')은(는)													원칙적으로 개인정보 처리목적이 달성된 경우에는 지체없이 해당 개인정보를 파기합니다. 파기의 절차, 기한 및													방법은 다음과 같습니다. -파기절차 이용자가 입력한 정보는 목적 달성 후 별도의 DB에 옮겨져(종이의 경우													별도의 서류) 내부 방침 및 기타 관련 법령에 따라 일정기간 저장된 후 혹은 즉시 파기됩니다. 이 때,													DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 다른 목적으로 이용되지 않습니다. -파기기한													이용자의 개인정보는 개인정보의 보유기간이 경과된 경우에는 보유기간의 종료일로부터 5일 이내에, 개인정보의													처리 목적 달성, 해당 서비스의 폐지, 사업의 종료 등 그 개인정보가 불필요하게 되었을 때에는 개인정보의													처리가 불필요한 것으로 인정되는 날로부터 5일 이내에 그 개인정보를 파기합니다. 6. 개인정보 자동 수집													장치의 설치•운영 및 거부에 관한 사항 ① 갱스터디 은 개별적인 맞춤서비스를 제공하기 위해 이용정보를													저장하고 수시로 불러오는 ‘쿠기(cookie)’를 사용합니다. ② 쿠키는 웹사이트를 운영하는데 이용되는													서버(http)가 이용자의 컴퓨터 브라우저에게 보내는 소량의 정보이며 이용자들의 PC 컴퓨터내의													하드디스크에 저장되기도 합니다. 가. 쿠키의 사용 목적 : 이용자가 방문한 각 서비스와 웹 사이트들에 대한													방문 및 이용형태, 인기 검색어, 보안접속 여부, 등을 파악하여 이용자에게 최적화된 정보 제공을 위해													사용됩니다. 나. 쿠키의 설치•운영 및 거부 : 웹브라우저 상단의 도구>인터넷 옵션>개인정보 메뉴의 옵션													설정을 통해 쿠키 저장을 거부 할 수 있습니다. 다. 쿠키 저장을 거부할 경우 맞춤형 서비스 이용에													어려움이 발생할 수 있습니다. 7. 개인정보 보호책임자 작성 ①													갱스터디(‘www.gangstudy.com’이하 ‘갱스터디) 은(는) 개인정보 처리에 관한 업무를 총괄해서													책임지고, 개인정보 처리와 관련한 정보주체의 불만처리 및 피해구제 등을 위하여 아래와 같이 개인정보													보호책임자를 지정하고 있습니다. ▶ 개인정보 보호책임자 성명 :김정훈 직책 :대표 직급 :대표 연락처													:010-9370-5565, neojts@naver.com, ※ 개인정보 보호 담당부서로 연결됩니다. ▶													개인정보 보호 담당부서 부서명 : 담당자 : 연락처 :, , ② 정보주체께서는													갱스터디(‘www.gangstudy.com’이하 ‘갱스터디) 의 서비스(또는 사업)을 이용하시면서 발생한													모든 개인정보 보호 관련 문의, 불만처리, 피해구제 등에 관한 사항을 개인정보 보호책임자 및 담당부서로													문의하실 수 있습니다. 갱스터디(‘www.gangstudy.com’이하 ‘갱스터디) 은(는) 정보주체의													문의에 대해 지체 없이 답변 및 처리해드릴 것입니다. 8. 개인정보 처리방침 변경 ①이 개인정보처리방침은													시행일로부터 적용되며, 법령 및 방침에 따른 변경내용의 추가, 삭제 및 정정이 있는 경우에는 변경사항의													시행 7일 전부터 공지사항을 통하여 고지할 것입니다. 9. 개인정보의 안전성 확보 조치 <갱스터디>('갱스터디')은(는)													개인정보보호법 제29조에 따라 다음과 같이 안전성 확보에 필요한 기술적/관리적 및 물리적 조치를 하고													있습니다. 1. 정기적인 자체 감사 실시 개인정보 취급 관련 안정성 확보를 위해 정기적(분기 1회)으로													자체 감사를 실시하고 있습니다. 2. 개인정보 취급 직원의 최소화 및 교육 개인정보를 취급하는 직원을													지정하고 담당자에 한정시켜 최소화 하여 개인정보를 관리하는 대책을 시행하고 있습니다. 3. 개인정보의													암호화 이용자의 개인정보는 비밀번호는 암호화 되어 저장 및 관리되고 있어, 본인만이 알 수 있으며 중요한													데이터는 파일 및 전송 데이터를 암호화 하거나 파일 잠금 기능을 사용하는 등의 별도 보안기능을 사용하고													있습니다. 4. 개인정보에 대한 접근 제한 개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의													부여,변경,말소를 통하여 개인정보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며 침입차단시스템을													이용하여 외부로부터의 무단 접근을 통제하고 있습니다. 5. 비인가자에 대한 출입 통제 개인정보를 보관하고													있는 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다. 												</div>											</div>										</div>										<div class="card">											<div class="card-header">												<div class="card-title collapsed" data-toggle="collapse"													data-target="#collapseTwo1">개인정보 수집 및 이용에 대한 안내(필수)</div>											</div>											<label class="checkbox checkbox-outline"> <input												type="checkbox" name="checkboxes"> <span></span>동의하기											</label>											<div id="collapseTwo1" class="collapse"												data-parent="#accordionExample1">												<div class="card-body">정보통신망법 규정에 따라 갱스터디 에 회원가입 신청하시는													분께 수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간을 안내 드리오니													자세히 읽은 후 동의하여 주시기 바랍니다. 1. 수집하는 개인정보 이용자가 시설이용을 위하여 회원제													서비스를 이용하기 위해 회원가입을 할 경우, 갱스터디는 서비스 이용을 위해 필요한 최소한의 개인정보를													수집합니다. 회원가입 시점에 갱스터디가 이용자로부터 수집하는 개인정보는 아래와 같습니다. - 회원 가입													시에 ‘아이디, 비밀번호, 이름, 생년월일, 성별, 휴대전화번호’를 필수항목으로 수집합니다. 만약 이용자가													입력하는 생년월일이 만14세 미만 아동일 경우에는 법정대리인 정보(법정대리인의 이름, 생년월일, 성별,													중복가입확인정보(DI), 휴대전화번호)를 추가로 수집합니다. 그리고 선택항목으로 이메일 주소, 프로필													정보를 수집합니다. 서비스 이용 과정에서 이용자로부터 수집하는 개인정보는 아래와 같습니다. 갱스터디 내의													개별 서비스 이용, 이벤트 응모 및 경품 신청 과정에서 해당 서비스의 이용자에 한해 추가 개인정보 수집이													발생할 수 있습니다. 추가로 개인정보를 수집할 경우에는 해당 개인정보 수집 시점에서 이용자에게 ‘수집하는													개인정보 항목, 개인정보의 수집 및 이용목적, 개인정보의 보관기간’에 대해 안내 드리고 동의를 받습니다.													서비스 이용 과정에서 IP 주소, 쿠키, 서비스 이용 기록, 기기정보, 위치정보가 생성되어 수집될 수													있습니다. 또한 이미지 및 음성을 이용한 검색 서비스 등에서 이미지나 음성이 수집될 수 있습니다.													구체적으로 1) 서비스 이용 과정에서 이용자에 관한 정보를 자동화된 방법으로 생성하여 이를													저장(수집)하거나, 2) 이용자 기기의 고유한 정보를 원래의 값을 확인하지 못 하도록 안전하게 변환하여													수집합니다. 이와 같이 수집된 정보는 개인정보와의 연계 여부 등에 따라 개인정보에 해당할 수 있고,													개인정보에 해당하지 않을 수도 있습니다. 2. 수집한 개인정보의 이용 갱스터디 관련 제반 서비스(모바일													웹/앱 포함)의 회원관리, 서비스 개발・제공 및 향상, 안전한 인터넷 이용환경 구축 등 아래의 목적으로만													개인정보를 이용합니다. - 회원 가입 의사의 확인, 연령 확인 및 법정대리인 동의 진행, 이용자 및													법정대리인의 본인 확인, 이용자 식별, 회원탈퇴 의사의 확인 등 회원관리를 위하여 개인정보를 이용합니다.													- 콘텐츠 등 기존 서비스 제공(광고 포함)에 더하여, 인구통계학적 분석, 서비스 방문 및 이용기록의													분석, 개인정보 및 관심에 기반한 이용자간 관계의 형성, 지인 및 관심사 등에 기반한 맞춤형 서비스 제공													등 신규 서비스 요소의 발굴 및 기존 서비스 개선 등을 위하여 개인정보를 이용합니다. - 법령 및													이용약관을 위반하는 회원에 대한 이용 제한 조치, 부정 이용 행위를 포함하여 서비스의 원활한 운영에 지장을													주는 행위에 대한 방지 및 제재, 계정도용 및 부정거래 방지, 약관 개정 등의 고지사항 전달, 분쟁조정을													위한 기록 보존, 민원처리 등 이용자 보호 및 서비스 운영을 위하여 개인정보를 이용합니다. - 유료 서비스													제공에 따르는 본인인증, 구매 및 요금 결제, 상품 및 서비스의 배송을 위하여 개인정보를 이용합니다. -													이벤트 정보 및 참여기회 제공, 광고성 정보 제공 등 마케팅 및 프로모션 목적으로 개인정보를 이용합니다.													- 서비스 이용기록과 접속 빈도 분석, 서비스 이용에 대한 통계, 서비스 분석 및 통계에 따른 맞춤 서비스													제공 및 광고 게재 등에 개인정보를 이용합니다. - 보안, 프라이버시, 안전 측면에서 이용자가 안심하고													이용할 수 있는 서비스 이용환경 구축을 위해 개인정보를 이용합니다. 3. 개인정보의 파기 회사는 원칙적으로													이용자의 개인정보를 회원 탈퇴 시 지체없이 파기하고 있습니다. 단, 이용자에게 개인정보 보관기간에 대해													별도의 동의를 얻은 경우, 또는 법령에서 일정 기간 정보보관 의무를 부과하는 경우에는 해당 기간 동안													개인정보를 안전하게 보관합니다. 이용자에게 개인정보 보관기간에 대해 회원가입 시 또는 서비스 가입 시													동의를 얻은 경우는 아래와 같습니다. 부정가입 및 징계기록 등의 부정이용기록은 부정 가입 및 이용 방지를													위하여 수집 시점으로부터 6개월간 보관하고 파기하고 있습니다. 부정이용기록 내 개인정보는 가입인증 휴대폰													번호(만 14세 미만 회원의 경우 법정대리인 DI)가 있습니다. 부정이용으로 징계를 받기 전에 회원 가입													및 탈퇴를 반복하며 서비스를 부정 이용하는 사례를 막기 위해 탈퇴한 이용자의 휴대전화번호를 복호화가													불가능한 일방향 암호화(해시 처리)하여 6개월간 보관합니다. QR코드 서비스에서 연락처를 등록한 이후													QR코드 삭제 시, 복구 요청 대응을 위해 삭제 시점으로 부터 6개월 보관합니다. 스마트 플레이스													서비스에서 휴대전화번호를 등록한 경우 분쟁 조정 및 고객문의 등을 목적으로 업체 등록/수정 요청시, 또는													등록 이후 업체 삭제 요청 시로부터 최대 1년간 보관 할 수 있습니다. 전자상거래 등에서의 소비자 보호에													관한 법률, 전자금융거래법, 통신비밀보호법 등 법령에서 일정기간 정보의 보관을 규정하는 경우는 아래와													같습니다. 갱스터디는 이 기간 동안 법령의 규정에 따라 개인정보를 보관하며, 본 정보를 다른 목적으로는													절대 이용하지 않습니다. - 전자상거래 등에서 소비자 보호에 관한 법률 계약 또는 청약철회 등에 관한													기록: 5년 보관 대금결제 및 재화 등의 공급에 관한 기록: 5년 보관 소비자의 불만 또는 분쟁처리에 관한													기록: 3년 보관 - 전자금융거래법 전자금융에 관한 기록: 5년 보관 - 통신비밀보호법 로그인 기록:													3개월 회원탈퇴, 서비스 종료, 이용자에게 동의받은 개인정보 보유기간의 도래와 같이 개인정보의 수집 및													이용목적이 달성된 개인정보는 재생이 불가능한 방법으로 파기하고 있습니다. 법령에서 보존의무를 부과한 정보에													대해서도 해당 기간 경과 후 지체없이 재생이 불가능한 방법으로 파기합니다. 전자적 파일 형태의 경우 복구													및 재생이 되지 않도록 기술적인 방법을 이용하여 안전하게 삭제하며, 출력물 등은 분쇄하거나 소각하는 방식													등으로 파기합니다. 참고로 갱스터디는 ‘개인정보 유효기간제’에 따라 1년간 서비스를 이용하지 않은 회원의													개인정보를 별도로 분리 보관하여 관리하고 있습니다.</div>											</div>										</div>										<div class="fv-plugins-message-container"></div>									</div>								</div>								</div>      							         									<!--end::Row-->																<!--end: Wizard Step 2-->																																																	
								<!--begin: Wizard Step 1-->		
								<div class="pb-5" data-wizard-type="step-content" >
									<!--begin::Title-->
									<div class="pb-10 pb-lg-15">
										<h3 class="font-weight-bolder text-dark display5">가입하기</h3>
										<div class="text-muted font-weight-bold font-size-h4">아이디가 이미 있으신가요 ?
										<a href="gangstudy/signin" class="text-primary font-weight-bolder">로그인</a></div>
									</div>
									<!--begin::Title-->									
									<!--begin::Form Group-->
									<div class="form-group">
										<label class="font-size-h6 font-weight-bolder text-dark"> 이름</label>
										<input type="text" class="form-control h-auto py-7 px-6 border-0 rounded-lg font-size-h6" id="name" name="name" placeholder="이름은 최소 2글자 이상 10글자 이내 입니다" value="" />
									</div>
								
									<div class="form-group">
										<label class="font-size-h6 font-weight-bolder text-dark">핸드폰 번호</label>
										<input type="tel" class="form-control h-auto py-7 px-6 border-0 rounded-lg font-size-h6" name="phone" placeholder="-을 제외한 숫자만 입력해주세요" value="" />
									</div> 																																		<div class="form-group">										<label class="font-size-h6 font-weight-bolder text-dark">아이디</label>										<input type="text" class="form-control h-auto py-7 px-6 border-0 rounded-lg required font-size-h6" name="id" placeholder="아이디는 3글자 이상 12글자 이내 입니다" value="" />									</div>																																				<div class="form-group">										<label class="font-size-h6 font-weight-bolder text-dark">비밀번호</label>										<input type="text" class="form-control h-auto py-7 px-6 border-0 rounded-lg required font-size-h6" id="pw" name="pw" placeholder="6~20글자 내외 영어 대소문자, 특수문자, 숫자 사용가능합니다." value="" />									</div>																	<div class="form-group">   										<label class="font-size-h6 font-weight-bolder text-dark">비밀번호 재확인</label>										<input type="text" class="form-control h-auto py-7 px-6 border-0 rounded-lg required font-size-h6" id="pw2" name="pw2" placeholder="위와 동일하게 적어주세요." value="" />									<span class="error"></span>   									</div>																		<div class="form-group">										<label class="font-size-h6 font-weight-bolder text-dark">이메일</label>										<input type="text" class="form-control h-auto py-7 px-6 border-0 rounded-lg required font-size-h6" name="email" placeholder="gangstudy@naver.com" value="" />									</div>																	<div class="form-group ">										<label class="font-size-h6 font-weight-bolder text-dark">생년월일</label>														<input type="text" class="form-control" id="kt_datepicker_1" readonly="readonly" placeholder=" 월/일/년도">									</div>									 									 																									<div class="form-group">										<label class="font-size-h6 font-weight-bolder text-dark">성별</label>										<select class="form-control" id="exampleSelect1" name="bod" >															<option>성별</option>															<option>여성</option>															<option>남성</option>																													</select>									</div>																											 									<!--end::Form Group-->																		
								</div>
								<!--end: Wizard Step 1-->																																																																																								
																																															
								<!--begin: Wizard Step 3-->
								<div class="pb-5" data-wizard-type="step-content">
									<!--begin::Title-->
									<div class="pt-lg-0 pt-5 pb-15">
										<h3 class="font-weight-bolder text-dark font-size-h2 font-size-h1-lg">Support Channels</h3>
										<div class="text-muted font-weight-bold font-size-h4">Specify Your Support Channels</div>
									</div>
									<!--end::Title-->
									<!--begin::Form Group-->
									<div class="form-group">
										<label class="font-size-h6 font-weight-bolder text-dark">Delivery Type:</label>
										<select name="delivery" class="form-control h-auto py-7 px-6 border-0 rounded-lg font-size-h6">
											<option value="">Select a Service Type Option</option>
											<option value="overnight" selected="selected">Overnight Delivery (within 48 hours)</option>
											<option value="express">Express Delivery (within 5 working days)</option>
											<option value="basic">Basic Delivery (within 5 - 10 working days)</option>
										</select>
									</div>
									<!--end::Form Group-->
									<!--begin::Form Group-->
									<div class="form-group">
										<label class="font-size-h6 font-weight-bolder text-dark">Packaging Type:</label>
										<select name="packaging" class="form-control h-auto py-7 px-6 border-0 rounded-lg font-size-h6">
											<option value="">Select a Packaging Type Option</option>
											<option value="regular" selected="selected">Regular Packaging</option>
											<option value="oversized">Oversized Packaging</option>
											<option value="fragile">Fragile Packaging</option>
											<option value="frozen">Frozen Packaging</option>
										</select>
									</div>
									<!--end::Form Group-->
									<!--begin::Form Group-->
									<div class="form-group">
										<label class="font-size-h6 font-weight-bolder text-dark">Preferred Delivery Window:</label>
										<select name="preferreddelivery" class="form-control h-auto py-7 px-6 border-0 rounded-lg font-size-h6">
											<option value="">Select a Preferred Delivery Option</option>
											<option value="morning" selected="selected">Morning Delivery (8:00AM - 11:00AM)</option>
											<option value="afternoon">Afternoon Delivery (11:00AM - 3:00PM)</option>
											<option value="evening">Evening Delivery (3:00PM - 7:00PM)</option>
										</select>
									</div>
									<!--end::Form Group-->
								</div>
								<!--end: Wizard Step 3-->
								<!--begin: Wizard Step 4-->
								<div class="pb-5" data-wizard-type="step-content">
									<!--begin::Title-->
									<div class="pt-lg-0 pt-5 pb-15">
										<h3 class="font-weight-bolder text-dark font-size-h2 font-size-h1-lg">Complete</h3>
										<div class="text-muted font-weight-bold font-size-h4">Complete Your Signup And Become A Member!</div>
									</div>
									<!--end::Title-->
									<!--begin::Section-->
									<h4 class="font-weight-bolder mb-3">Accoun Settings:</h4>
									<div class="text-dark-50 font-weight-bold line-height-lg mb-8">
										<div>Nick Stone</div>
										<div>+12233434-34</div>
										<div>nick.stone@gmail.com</div>
									</div>
									<!--end::Section-->
									<!--begin::Section-->
									<h4 class="font-weight-bolder mb-3">Address Details:</h4>
									<div class="text-dark-50 font-weight-bold line-height-lg mb-8">
										<div>Address Line 1</div>
										<div>Address Line 2</div>
										<div>Melbourne 3000, VIC, Australia</div>
									</div>
									<!--end::Section-->
									<!--begin::Section-->
									<h4 class="font-weight-bolder mb-3">Support Channels:</h4>
									<div class="text-dark-50 font-weight-bold line-height-lg mb-8">
										<div>Overnight Delivery with Regular Packaging</div>
										<div>Preferred Morning (8:00AM - 11:00AM) Delivery</div>
									</div>
									<!--end::Section-->
								</div>
								<!--end: Wizard Step 4-->
								<!--begin: Wizard Actions-->
								<div class="d-flex justify-content-between pt-3">
									<div class="mr-2">
										<button type="button" class="btn btn-light-primary font-weight-bolder font-size-h6 pl-6 pr-8 py-4 my-3 mr-3" data-wizard-type="action-prev">
										<span class="svg-icon svg-icon-md mr-1">
											<!--begin::Svg Icon | path:resources/assets/media/svg/icons/Navigation/Left-2.svg-->
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
												<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
													<polygon points="0 0 24 0 24 24 0 24" />
													<rect fill="#000000" opacity="0.3" transform="translate(15.000000, 12.000000) scale(-1, 1) rotate(-90.000000) translate(-15.000000, -12.000000)" x="14" y="7" width="2" height="10" rx="1" />
													<path d="M3.7071045,15.7071045 C3.3165802,16.0976288 2.68341522,16.0976288 2.29289093,15.7071045 C1.90236664,15.3165802 1.90236664,14.6834152 2.29289093,14.2928909 L8.29289093,8.29289093 C8.67146987,7.914312 9.28105631,7.90106637 9.67572234,8.26284357 L15.6757223,13.7628436 C16.0828413,14.136036 16.1103443,14.7686034 15.7371519,15.1757223 C15.3639594,15.5828413 14.7313921,15.6103443 14.3242731,15.2371519 L9.03007346,10.3841355 L3.7071045,15.7071045 Z" fill="#000000" fill-rule="nonzero" transform="translate(9.000001, 11.999997) scale(-1, -1) rotate(90.000000) translate(-9.000001, -11.999997)" />
												</g>
											</svg>
											<!--end::Svg Icon-->
										</span>Previous</button>
									</div>
									<div>
										<button class="btn btn-primary font-weight-bolder font-size-h6 pl-5 pr-8 py-4 my-3" data-wizard-type="action-submit" type="submit" id="kt_login_signup_form_submit_button">Submit
										<span class="svg-icon svg-icon-md ml-2">
											<!--begin::Svg Icon | path:resources/assets/media/svg/icons/Navigation/Right-2.svg-->
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
												<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
													<polygon points="0 0 24 0 24 24 0 24" />
													<rect fill="#000000" opacity="0.3" transform="translate(8.500000, 12.000000) rotate(-90.000000) translate(-8.500000, -12.000000)" x="7.5" y="7.5" width="2" height="9" rx="1" />
													<path d="M9.70710318,15.7071045 C9.31657888,16.0976288 8.68341391,16.0976288 8.29288961,15.7071045 C7.90236532,15.3165802 7.90236532,14.6834152 8.29288961,14.2928909 L14.2928896,8.29289093 C14.6714686,7.914312 15.281055,7.90106637 15.675721,8.26284357 L21.675721,13.7628436 C22.08284,14.136036 22.1103429,14.7686034 21.7371505,15.1757223 C21.3639581,15.5828413 20.7313908,15.6103443 20.3242718,15.2371519 L15.0300721,10.3841355 L9.70710318,15.7071045 Z" fill="#000000" fill-rule="nonzero" transform="translate(14.999999, 11.999997) scale(1, -1) rotate(90.000000) translate(-14.999999, -11.999997)" />
												</g>
											</svg>     
											<!--end::Svg Icon-->
										</span></button>
										<button type="button" class="btn btn-primary font-weight-bolder font-size-h6 pl-8 pr-4 py-4 my-3" data-wizard-type="action-next">Next Step
										<span class="svg-icon svg-icon-md ml-1">
											<!--begin::Svg Icon | path:resources/assets/media/svg/icons/Navigation/Right-2.svg-->
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
												<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
													<polygon points="0 0 24 0 24 24 0 24" />
													<rect fill="#000000" opacity="0.3" transform="translate(8.500000, 12.000000) rotate(-90.000000) translate(-8.500000, -12.000000)" x="7.5" y="7.5" width="2" height="9" rx="1" />
													<path d="M9.70710318,15.7071045 C9.31657888,16.0976288 8.68341391,16.0976288 8.29288961,15.7071045 C7.90236532,15.3165802 7.90236532,14.6834152 8.29288961,14.2928909 L14.2928896,8.29289093 C14.6714686,7.914312 15.281055,7.90106637 15.675721,8.26284357 L21.675721,13.7628436 C22.08284,14.136036 22.1103429,14.7686034 21.7371505,15.1757223 C21.3639581,15.5828413 20.7313908,15.6103443 20.3242718,15.2371519 L15.0300721,10.3841355 L9.70710318,15.7071045 Z" fill="#000000" fill-rule="nonzero" transform="translate(14.999999, 11.999997) scale(1, -1) rotate(90.000000) translate(-14.999999, -11.999997)" />
												</g>
											</svg>
											<!--end::Svg Icon-->
										</span></button>
									</div>
								</div>
								<!--end: Wizard Actions-->
							</form>
							<!--end::Form--> 
						</div>
						<!--end::Signin-->     
					</div>   
					<!--end::Wrapper-->
				</div>
				<!--end::Content-->  
			</div> 
			<!--end::Login-->           
		</div>
		<!--end::Main-->
		<script>var HOST_URL = "https://preview.keenthemes.com/metronic/theme/html/tools/preview";</script>
		<!--begin::Global Config(global config for global JS scripts)-->
		<script>var KTAppSettings = { "breakpoints": { "sm": 576, "md": 768, "lg": 992, "xl": 1200, "xxl": 1200 }, "colors": { "theme": { "base": { "white": "#ffffff", "primary": "#1BC5BD", "secondary": "#E5EAEE", "success": "#1BC5BD", "info": "#6993FF", "warning": "#FFA800", "danger": "#F64E60", "light": "#F3F6F9", "dark": "#212121" }, "light": { "white": "#ffffff", "primary": "#1BC5BD", "secondary": "#ECF0F3", "success": "#C9F7F5", "info": "#E1E9FF", "warning": "#FFF4DE", "danger": "#FFE2E5", "light": "#F3F6F9", "dark": "#D6D6E0" }, "inverse": { "white": "#ffffff", "primary": "#ffffff", "secondary": "#212121", "success": "#ffffff", "info": "#ffffff", "warning": "#ffffff", "danger": "#ffffff", "light": "#464E5F", "dark": "#ffffff" } }, "gray": { "gray-100": "#F3F6F9", "gray-200": "#ECF0F3", "gray-300": "#E5EAEE", "gray-400": "#D6D6E0", "gray-500": "#B5B5C3", "gray-600": "#80808F", "gray-700": "#464E5F", "gray-800": "#1B283F", "gray-900": "#212121" } }, "font-family": "Poppins" };</script>
		<!--end::Global Config-->
		<!--begin::Global Theme Bundle(used by all pages)-->
		<script src="resources/assets/plugins/global/plugins.bundle.js"></script>
		<script src="resources/assets/plugins/custom/prismjs/prismjs.bundle.js"></script>
		<script src="resources/assets/js/scripts.bundle.js"></script>				 <script src="resources/js/jquery.validate.min.js"></script>
		<!--end::Global Theme Bundle-->
		<!--begin::Page Scripts(used by this page)-->
		<script src="resources/assets/js/pages/custom/login/login-3.js"></script>   
	<!--begin::Page Scripts(used by this page)-->		 <script type="text/javascript" src="../../asset/js/external/moment.min.js"></script>		<script src="resources/assets/js/pages/crud/forms/widgets/ko.js"></script>		<script src="resources/assets/js/pages/crud/forms/widgets/bootstrap-datepicker.js"></script>		<!-- <script src="resources/assets/js/pages/crud/forms/validation/form-controls.js"></script> -->		<!--end::Page Scripts-->
		<!--end::Page Scripts-->
	</body>
	<!--end::Body-->
</html>