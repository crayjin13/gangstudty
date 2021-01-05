package com.jts.gangstudy.handler;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.AsyncHandlerInterceptor;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

public class EchoHandler extends TextWebSocketHandler {
	private List<WebSocketSession> sessionList = new ArrayList<WebSocketSession>();
	protected Log log = LogFactory.getLog(AsyncHandlerInterceptor.class);
	
	// afterConnectionEstablished : 웹소켓이 연결되면 호출되는 함수
    // 웹소켓이 연결 되는 것 = 프론트에서 웹소켓이 정확한 경로를 잡아 생성 되는 것
    @Override
    public void afterConnectionEstablished(WebSocketSession session) 
            throws Exception {
		sessionList.add(session);
		log.info(session.getId() + " 연결됨");
    }

    // 웹소켓 클라이언트가 텍스트 메세지 전송시 호출되는 메소드
    // WebSocketSession session : 전송 주체 정보가 담긴 세션
    // TextMessage message : 전송 받은 메세지 정보
    @Override
    protected void handleTextMessage(
            WebSocketSession session, TextMessage message) throws Exception {
        System.out.printf("%s로부터 [%s] 받음\n", 
                session.getId(), message.getPayload());
        session.sendMessage(new TextMessage("echo: " + message.getPayload()));
    }

    // afterConnectionClosed : 웹소켓이 연결이 종료되면 호출되는 함수
    // 웹소켓이 연결이 종료 = 세션 종료
    @Override
    public void afterConnectionClosed(
            WebSocketSession session, CloseStatus status) throws Exception {
        System.out.printf("%s 연결 끊김\n", session.getId());
    }
}
