package springchat.model;


import jdk.internal.instrumentation.TypeMapping;


import javax.persistence.*;
import java.awt.*;
import java.util.Date;

public class ChatMessage {
    public ChatMessage() {
    }

    public ChatMessage(Long id, MessageType messageType, String content, String sender, String roomId, Date date) {
        this.id = id;
        this.messageType = messageType;
        this.content = content;
        this.sender = sender;
        this.roomId = roomId;
        this.date = date;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public MessageType getMessageType() {
        return messageType;
    }

    public void setMessageType(MessageType messageType) {
        this.messageType = messageType;
    }

    public enum MessageType {
    CHAT, JOIN, LEAVE
  }
  
  private Long id;
  
  private MessageType messageType;

  private String content;
  private String sender;
  private String roomId;

  public Date getDate() {
    return date;
  }

  public void setDate(Date date) {
    this.date = date;
  }

  private Date date;

  public String getRoomId() {
    return roomId;
  }

  public void setRoomId(String roomId) {
    this.roomId = roomId;
  }

  public MessageType getType() {
    return messageType;
  }

  public void setType(MessageType messageType) {
    this.messageType = messageType;
  }

  public String getContent() {
    return content;
  }

  public void setContent(String content) {
    this.content = content;
  }

  public String getSender() {
    return sender;
  }

  public void setSender(String sender) {
    this.sender = sender;
  }
}