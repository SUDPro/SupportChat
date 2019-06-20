package springchat.service;

import springchat.model.ChatMessage;

import java.util.List;
import java.util.Optional;
import java.util.Set;

public interface MessageService {

    List<ChatMessage> findAllByRoomId(String roomId);

    void save(ChatMessage chatMessage);

    List<ChatMessage> findAll();

    List<ChatMessage> findAllRoomIdUnique();

    List<ChatMessage> findChatMessageByRoomsId(List<String> roomId);

    List<String> findAllRoomId();
}
