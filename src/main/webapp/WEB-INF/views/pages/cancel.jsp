<%@page language="java" import="java.io.*,com.jts.gangstudy.domain.SendMmsMessage" contentType="text/html;charset=euc-kr" %>
<%


/*
 * ��û��
 */
String userid = "malp86";   // [�ʼ�] �Ѹ��� ���̵�
String msgid = "123456789"; // [�ʼ�] �߼� msgid


try {
    SendMmsMessage sendMmsMessage = new SendMmsMessage();

    String response_str = sendMmsMessage.cancel( userid, msgid);
	
	//response 
	System.out.println("=============================");
	System.out.println(response_str);
	System.out.println("=============================");

} catch (IOException localIOException) {
    out.println(localIOException.toString());
}


/*
 * ���䰪
 *
 *  <������>
 *    "ok|1"               - ��Ұ��|��ҰǼ�
 *
 *  <���н�>
 *    "invalid_member"     - �������� ��û�� �� �ưų� ���� ���̵�
 *    "under_maintenance"  - ��û�ð��� ������������ ���
 *    "allow_https_only"   - http ��û�� ���
 *    "invalid_ip"         - ��ϵ� ���Ӱ��� IP�� �ƴ� ���
 *    "invalid_msgid"      - �߼� msgid�� ������ �ִ� ���
 *    "master_not_exist"   - ��� �� �߼ۿ�û�� ���� ���
 *    "not_update_time"    - ����ð��� 1���̳����� ��Ұ� �Ұ����� ���
 *    "ing_master"         - �̹� �������� ���
 *    "server_error"       - ��Ÿ ���� ����
 */

%>