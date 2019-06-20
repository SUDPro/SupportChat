<html>
<head>
    <title>
        Test Page
    </title>
    <link rel="stylesheet" href="/css/test.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script>
        function makeId(length) {
            var result           = '';
            var characters       = 'abcdefghijklmnopqrstuvwxyz';
            var charactersLength = characters.length;
            for ( var i = 0; i < length; i++ ) {
                result += characters.charAt(Math.floor(Math.random() * charactersLength));
            }
            return result;
        }
    </script>
</head>
<body>
<h1> Chat Page</h1>

<!------ Include the above in your HEAD tag ---------->

<div class="msg_box" style="right:50px" rel="skp">
    <div class="msg_head">
        <img src="https://www.tts.ru/bitrix/templates/.default/static/images/fixedlogo@2x.png" width="20" height="20"/>
        Поддержка
    </div>
    <div id="username-page">
        <div class="username-page-container">
            <h1 class="title">Введите имя</h1>
            <form id="usernameForm" name="usernameForm">
                <div class="form-group">
                    <input type="text" id="name" placeholder="Username" autocomplete="off" class="form-control"/>
                </div>
                <div class="form-group">
                    <input type="hidden" id="room-id"  placeholder="Room ID" autocomplete="off"
                           class="form-control"/>
                </div>
                <div class="form-group">
                    <button type="submit" class="accent username-submit">Начать!</button>
                </div>
            </form>
        </div>
    </div>

    <div id="chat-page" class="hidden">
        <div class="chat-container">
            <div class="chat-header">
                <h2>Чат <span id="room-id-display"></span></h2>
            </div>
            <div class="connecting">
                Connecting...
            </div>
            <div class="message-box"
            <ul style="overflow: hidden; width: 300px; height: 200px;" id="messageArea">

            </ul>
             </div>
            <form id="messageForm" name="messageForm" nameForm="messageForm">
                <div class="form-group">
                    <div class="input-group clearfix">
                        <input type="text" id="message" placeholder="Type a message..."
                               autocomplete="off"class="form-control"/>
                        <button type="submit" class="primary">Send</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="/webjars/sockjs-client/1.0.0/sockjs.min.js"></script>
<script src="/webjars/stomp-websocket/stomp.min.js"></script>
<script src="/webjars/js-cookie/js.cookie.js"></script>
<#--<script src="/js/test.js"></script>-->
<script src="/js/main.js"></script>
<script src="/js/test.js"></script>
</body>
</html>