
<%@page language="java" import="java.io.*,com.jts.gangstudy.domain.SendMmsMessage" contentType="text/html;charset=euc-kr" %>
<%     

  
/*
 * ��û��    
 */        
String userid = "malp86";           // [�ʼ�] �Ѹ��� ���̵�             
String callback = "01058093031";    // [�ʼ�] �߽Ź�ȣ - ���ڸ�
String phone = "01021367733";       // [�ʼ�] ���Ź�ȣ - �������� ��� |�� ���� "010********|010********|010********"
String msg = "[* �����͵� *] ħ���� �߰� !  ��� ���� �ٶ��ϴ�. ";   // [�ʼ�] ���ڳ��� - �̸�(names)���� �ִٸ� [*�̸�*]�� ġȯ�Ǽ� �߼۵�
String names = "";            // [����] �̸� - �������� ��� |�� ���� "ȫ�浿|�̼���|��ö��"
String appdate = "";  // [����] ����߼� (����ð� ���� 10������ ���డ��)
String subject = "�Ѹ��� ���� api �׽�Ʈ";          // [����] ���� (30byte)
String file1Path = "";    // [����]  ����߼� (jpg, jpeg�� ����  300 K  ����) 

try {
	     
    SendMmsMessage sendMmsMessage = new SendMmsMessage();

    // filePath�� null Ȥ�� blank("")�� ��� �Ϲ� ��/�幮 �߼�. 
	String response_str = sendMmsMessage.send( userid,  callback,  phone,  msg, names, appdate, subject, file1Path );
	
	  
	//response 
	System.out.println("=============================");
	System.out.println(response_str);
	System.out.println("=============================");

} catch (IOException localIOException) {
    out.println(localIOException.toString());
} catch (Exception ex ){
	ex.printStackTrace();
}

    
/*
 * ���䰪
 *
 *  <������>
 *    "ok|sms|123456789|1"           - ���۰��|�߼�����(�ܹ��� sms �幮�� lms ���乮�ڴ� mms)|�߼� msgid (������ҽ� �ʿ�)|�߼۰Ǽ�
 *
 *  <���н�>
 *    "invalid_member"               - �������� ��û�� �� �ưų� ���� ���̵�
 *    "under_maintenance"            - ��û�ð��� ������������ ���
 *    "allow_https_only"             - http ��û�� ���
 *    "invalid_ip"                   - ��ϵ� ���Ӱ��� IP�� �ƴ� ���
 *    "invalid_msg"                  - ���ڳ��뿡 ������ �ִ� ���
 *    "invalid_names"                - �̸��� ������ �ִ� ���
 *    "invalid_subject"              - ���� ������ �ִ� ���
 *    "invalid_sendtime"             - ����߼� �ð��� ������ �ִ� ��� (10�����ĺ��� �����ظ����� ����)
 *    "invalid_sendtime_maintenance" - ����߼� �ð��� �������� ������ ���
 *    "invalid_phone"                - ���Ź�ȣ�� ������ �ִ� ���
 *    "invalid_msg_over_max"         - ���ڳ����� �ʹ� �� ���
 *    "invalid_callback"             - �߽Ź�ȣ�� ������ �ִ� ���
 *    "once_limit_over"              - 1ȸ �ִ� �߼۰Ǽ� �ʰ��� ���
 *    "daily_limit_over"             - 1�� �ִ� �߼۰Ǽ� �ʰ��� ���
 *    "not_enough_point"             - �ܾ��� ������ ���
 *    "over_use_limit"               - �Ѵ� ���ݾ��� �ʰ��� ���
 *    "server_error"                 - ��Ÿ ���� ����
 */

%>