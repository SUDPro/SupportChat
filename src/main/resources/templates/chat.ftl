<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
  <title>Chat Application</title>
  <link rel="stylesheet" href="/css/chat.css" />
</head>
<body>
<noscript>
  <h2>Sorry! Your browser doesn't support Javascript</h2>
</noscript>
<input id="roomId" hidden value="${roomId}">
<input id="name" hidden value="Оператор">
<div id="chat-page">
  <a href="/admin" style="color: white">Назад</a>
  <div class="chat-container">
    <div class="chat-header">
      <h2>Chat <span id="room-id-display"></span></h2>
    </div>
    <div class="connecting">
      Connecting...
    </div>
    <ul id="messageArea">
    <#list messages as message>
      <li class="chat-message">
        <span>${message.getSender()}</span>
        <p> ${message.getContent()} </p>
      </li>
    </#list>
    </ul>
    <form id="messageForm" name="messageForm" nameForm="messageForm">
      <div class="form-group">
        <div class="input-group clearfix">
          <input type="text" id="message" placeholder="Type a message..."
                 autocomplete="off" class="form-control"/>
          <button type="submit" class="primary">Send</button>
        </div>
      </div>
    </form>
  </div>
</div>
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/sockjs-client/sockjs.min.js"></script>
<script src="/webjars/stomp-websocket/stomp.min.js"></script>
<script src="/webjars/js-cookie/js.cookie.js"></script>
<script src="/js/chat.js"></script>
</body>
</html>