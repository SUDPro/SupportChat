package springchat.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import springchat.model.ChatMessage;
import springchat.repository.MessageRepository;

import java.util.*;

@Service
public class MessageServiceImpl implements MessageService {

    @Autowired
    MessageRepository repository;

    @Override
    public List<ChatMessage> findAllByRoomId(String roomId) {
        return repository.findAllByRoomIdOrderByDate(roomId);
    }

    @Override
    public void save(ChatMessage chatMessage) {
        repository.save(chatMessage);
    }

    @Override
    public List<ChatMessage> findAll() {
        return repository.findAll();
    }

    @Override
    public List<ChatMessage> findAllRoomIdUnique() {
        for (String cht :
                repository.findAllRoomId()) {
            System.out.println(cht);
        }
        List<ChatMessage> list = new ArrayList<>();
        return list;
    }

    @Override
    public List<ChatMessage> findChatMessageByRoomsId(List<String> roomId) {
        List<ChatMessage> messages = new ArrayList<>();
        for (String room :
                roomId) {
            messages.add(repository.findFirstByRoomIdOrderByDateDesc(room).get());
        }
        return messages;
    }

    @Override
    public List<String> findAllRoomId() {
        return repository.findAllRoomId();
    }
}
