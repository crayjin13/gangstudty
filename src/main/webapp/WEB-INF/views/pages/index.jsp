<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!--
Template Name: Metronic - Bootstrap 4 HTML, React, Angular 10 & VueJS Admin Dashboard Theme
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
<html>

<!--begin::Head-->
<!-- 
<head profile="http://www.w3.org/2005/10/profile">
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon"> -->




<base href="">
<meta charset="utf-8" />
<title>Gangstudy</title>
<meta name="description"
	content="Metronic admin dashboard live demo. Check out all the features of the admin panel. A large number of settings, additional services and widgets." />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />


<!--begin::Fonts-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" />

<!--end::Fonts-->

<!--begin::Page Vendors Styles(used by this page)-->
<link
	href="resources/assets/plugins/custom/fullcalendar/fullcalendar.bundle.css"
	rel="stylesheet" type="text/css" />

<!--end::Page Vendors Styles-->

<!--begin::Global Theme Styles(used by all pages)-->
<link href="resources/assets/plugins/global/plugins.bundle.css"
	rel="stylesheet" type="text/css" />
<link href="resources/assets/plugins/custom/prismjs/prismjs.bundle.css"
	rel="stylesheet" type="text/css" />
<link href="resources/assets/css/style.bundle.css" rel="stylesheet"
	type="text/css" />

<!--end::Global Theme Styles-->

<!--begin::Layout Themes(used by all pages)-->
<link href="resources/assets/css/themes/layout/header/base/light.css"
	rel="stylesheet" type="text/css" />
<link href="resources/assets/css/themes/layout/header/menu/light.css"
	rel="stylesheet" type="text/css" />
<link href="resources/assets/css/themes/layout/brand/light.css"
	rel="stylesheet" type="text/css" />
<link href="resources/assets/css/themes/layout/aside/light.css"
	rel="stylesheet" type="text/css" />

<!--end::Layout Themes-->
<link rel="shortcut icon" href="assets/media/logos/favicon.ico" />
</head>

<!--end::Head-->



<!--begin::Body-->


<body id="kt_body"
	class="header-fixed header-mobile-fixed subheader-enabled subheader-fixed aside-enabled aside-fixed aside-minimize-hoverable page-loading">

<script src="/js/cbpHorizontalMenu.min.js"></script>


	<jsp:include page="/WEB-INF/views/layout.jsp" flush="true" />

	<jsp:include
		page="/WEB-INF/views/partials/_extras/offcanvas/quick-user.jsp"
		flush="true" />

	<jsp:include
		page="/WEB-INF/views/partials/_extras/offcanvas/quick-cart.jsp"
		flush="true" />

	<jsp:include
		page="/WEB-INF/views/partials/_extras/offcanvas/quick-panel.jsp"
		flush="true" />

	<jsp:include page="/WEB-INF/views/partials/_extras/chat.jsp"
		flush="true" />

	<jsp:include page="/WEB-INF/views/partials/_extras/scrolltop.jsp"
		flush="true" />
	<jsp:include page="/WEB-INF/views/partials/_extras/toolbar.jsp"
		flush="true" />

	<jsp:include
		page="/WEB-INF/views/partials/_extras/offcanvas/demo-panel.jsp"
		flush="true" />
	<script>
		var HOST_URL = "https://gangstudy.com";
	</script>

	<!--begin::Global Config(global config for global JS scripts)-->
	<script>
		var KTAppSettings = {
			"breakpoints" : {
				"sm" : 576,
				"md" : 768,
				"lg" : 992,
				"xl" : 1200,
				"xxl" : 1400
			},
			"colors" : {
				"theme" : {
					"base" : {
						"white" : "#ffffff",
						"primary" : "#3699FF",
						"secondary" : "#E5EAEE",
						"success" : "#1BC5BD",
						"info" : "#8950FC",
						"warning" : "#FFA800",
						"danger" : "#F64E60",
						"light" : "#E4E6EF",
						"dark" : "#181C32"
					},
					"light" : {
						"white" : "#ffffff",
						"primary" : "#E1F0FF",
						"secondary" : "#EBEDF3",
						"success" : "#C9F7F5",
						"info" : "#EEE5FF",
						"warning" : "#FFF4DE",
						"danger" : "#FFE2E5",
						"light" : "#F3F6F9",
						"dark" : "#D6D6E0"
					},
					"inverse" : {
						"white" : "#ffffff",
						"primary" : "#ffffff",
						"secondary" : "#3F4254",
						"success" : "#ffffff",
						"info" : "#ffffff",
						"warning" : "#ffffff",
						"danger" : "#ffffff",
						"light" : "#464E5F",
						"dark" : "#ffffff"
					}
				},
				"gray" : {
					"gray-100" : "#F3F6F9",
					"gray-200" : "#EBEDF3",
					"gray-300" : "#E4E6EF",
					"gray-400" : "#D1D3E0",
					"gray-500" : "#B5B5C3",
					"gray-600" : "#7E8299",
					"gray-700" : "#5E6278",
					"gray-800" : "#3F4254",
					"gray-900" : "#181C32"
				}
			},
			"font-family" : "Poppins"
		};
	</script>

	<!--end::Global Config-->

	<!--begin::Global Theme Bundle(used by all pages)-->
	<script src="resources/assets/plugins/global/plugins.bundle.js"></script>
	<script src="resources/assets/plugins/custom/prismjs/prismjs.bundle.js"></script>
	<script src="resources/assets/js/scripts.bundle.js"></script>

	<!--end::Global Theme Bundle-->

	<!--begin::Page Vendors(used by this page)-->
	<script
		src="resources/assets/plugins/custom/fullcalendar/fullcalendar.bundle.js"></script>

	<!--end::Page Vendors-->

	<!--begin::Page Scripts(used by this page)-->
	<script src="resources/assets/js/pages/widgets.js"></script>

	<!--end::Page Scripts-->
</body>

<!--end::Body-->
</html>