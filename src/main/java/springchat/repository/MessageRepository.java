package springchat.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import springchat.model.ChatMessage;

import java.util.List;
import java.util.Optional;
import java.util.Set;

public interface MessageRepository extends JpaRepository<ChatMessage, Long> {

    List<ChatMessage> findAllByRoomIdOrderByDate(String roomId);

    List<ChatMessage> findAll();

    @Query(value = "select distinct room_id  from chat_message", nativeQuery = true)
    List<String> findAllRoomId();

    Optional<ChatMessage> findFirstByRoomIdOrderByDateDesc(String roomId);

}
