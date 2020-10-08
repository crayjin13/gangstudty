/*
package com.jts.gangstudy.controller;
 * package com.jts.gangstudy.controller;
 * 
 * import javax.inject.Inject; import javax.servlet.http.HttpSession;
 * 
 * import org.slf4j.Logger; import org.slf4j.LoggerFactory; import
 * org.springframework.stereotype.Controller; import
 * org.springframework.web.bind.annotation.RequestMapping; import
 * org.springframework.web.servlet.ModelAndView;
 * 
 * import com.jts.gangstudy.domain.Admin; import com.jts.gangstudy.domain.User;
 * import com.jts.gangstudy.service.AdminService;
 * 
 * //@Controller public class AdminController {
 * 
 * @Inject //���񽺸� ȣ���ϱ� ���ؼ� �������� ���� AdminService adminservice;
 * 
 * 
 * private static final Logger logger=
 * LoggerFactory.getLogger(UserController.class); //�α��� ���� ����
 * 
 * 
 * //�޴� ���������� ������ �α��� ��ư�� Ŭ���ϸ� ���εǴ� �޼ҵ� //������ �α��� �������� �̵���Ų��.
 * 
 * @RequestMapping("/admin/admin_login_view.do") public String
 * admin_login_view() {
 * 
 * return "admin/admin_login"; }
 * 
 * 
 * //������ �α��� ���������� ������ ���̵�� �н����带 �Է��� �α��� ��ư�� �����ÿ� ���εǴ� �޼ҵ� //������ �α����� �� �� �ֵ���
 * �Ѵ�.
 * 
 * @RequestMapping("/admin/admin_login.do") public ModelAndView
 * admin_login(String admin_id, String admin_pw,HttpSession session) throws
 * Exception {
 * 
 * //�α��� üũ�� ���� �� //dto�� ������ �ֱ� ���� ��ü�� �����Ѵ�. Admin admin = new Admin();
 * 
 * 
 * admin.setAdmin_id(admin_id); admin.setAdmin_pw(admin_pw);
 * 
 * //�α��� üũ�� �ϱ����� �޼ҵ�, �α��� üũ�� ����� result ������ �ִ´�. boolean result =
 * adminservice.loginCheck(admin, session); ModelAndView mav = new
 * ModelAndView();
 * 
 * 
 * if(result) {//�α����� ���������� ��µǴ� ���� mav.setViewName("home"); //�α����� ���������� �̵��ϰԵǴ�
 * ���� �̸� mav.addObject("admin_id", session.getAttribute(admin_id));
 * 
 * }else if(session.getAttribute(admin_id) == null) { //�α��� ���� ������ ���
 * 
 * //�α����� �������� �ÿ� �ٽ� ������ �α��� �������� �̵���
 * 
 * mav.setViewName("admin/admin_login");
 * 
 * //�信 ������ ��
 * 
 * mav.addObject("message", "�������� ���̵� Ȥ�� ��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
 * 
 * }
 * 
 * return mav; }
 * 
 * 
 * //�����ڷ� �α��� �Ŀ� ȸ���� ���� Ż���Ű�� �������� �����Ű�� �޼ҵ�
 * 
 * @RequestMapping("/admin/admin_member_forced_eviction_view.do") public String
 * admin_member_forced_evction_view() {
 * 
 * 
 * return "admin/admin_member_forced_eviction_view"; }
 * 
 * 
 * //�����ڷ� �α��� �Ŀ� ���� Ż���ų ȸ���� ���̵� �Է��� ����Ż�� ��ư�� ������ ����Ǵ� �޼ҵ�
 * 
 * @RequestMapping("/admin/admin_member_forced_eviction.do") public ModelAndView
 * admin_member_forced_eviction(String id) throws Exception {
 * 
 * //������ ���̵� ���� (����Ż��) ��Ű�����ؼ� dto�� ��´�. User user = new User(); user.setId(id);
 * 
 * //ȸ��Ż�� üũ�� �ϱ����� �޼ҵ�, Ż�� ��Ű���� ȸ���� ���̵� �ִ��� �˻����Ŀ� result ������ �����Ѵ�.
 * adminservice.admin_member_forced_evictionCheck(user);
 * 
 * 
 * ModelAndView mav = new ModelAndView();
 * 
 * if(user.getId() != null) { //ȸ�� ����Ż�� ���������� ��µǴ� ��
 * 
 * mav.setViewName("home");
 * 
 * mav.addObject("message", "ȸ���� ���������� ����Ż�� ó�� �Ǿ����ϴ�.");
 * 
 * }else {
 * 
 * mav.setViewName("admin/admin_member_forced_eviction_view");
 * 
 * mav.addObject("message", "ȸ�� ��Ͽ� ���� ȸ���Դϴ�. �ٽ� Ȯ�����ּ���."); }
 * 
 * 
 * return mav;
 * 
 * }
 * 
 * 
 * }
 */