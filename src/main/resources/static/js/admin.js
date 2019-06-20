document.addEventListener("DOMContentLoaded", connect);
var stompClient = null;

function connect() {
    var socket = new SockJS('/ws');
    stompClient = Stomp.over(socket);
    stompClient.connect({}, function (frame) {
        stompClient.subscribe('/channel/admin',
            function (message) {
                update(JSON.parse(message.body));
            }
        );
    });
}

function update(message) {
    var roomId = message.roomId;
    var chat = document.getElementById(roomId);
    var chats = document.getElementById("messages");
    if (chat === null || chat === undefined) {
        var tr = document.createElement("tr");
        tr.id = roomId
        var td1 = document.createElement("td");
        td1.innerHTML = '<form method=get">' +
            '<input type="hidden" name="roomId" value="' + roomId + '"/>' +
            '<button type="submit">' + roomId + '</button>' +
            '</form>';

        var td2 = document.createElement("td");
        td2.innerHTML = message.content;

        var td3 = document.createElement("td");
        var date = new Date(message.date);
        td3.innerHTML = ('0' + date.getDate()).slice(-2) + "."
            + ('0' + (1 + +date.getMonth())).slice(-2) + "."
            + date.getUTCFullYear() + " "
            + date.getHours() + ":" +
            +date.getMinutes() + ":" +
            +date.getSeconds();

        var td4 = document.createElement("td");
        td4.innerHTML = "Последнее сообщ: " + message.sender;

        tr.appendChild(td1);
        tr.appendChild(td2);
        tr.appendChild(td3);
        tr.appendChild(td4);
        chats.insertBefore(tr, chats.firstChild);
    } else {
        var td = chat.getElementsByTagName("TD");
        td[1].innerHTML = message.content;

        var date = new Date(message.date);
        td[2].innerHTML = ('0' + date.getDate()).slice(-2) + "."
            + ('0' + (1 + +date.getMonth())).slice(-2) + "."
            + date.getUTCFullYear() + " "
            + date.getHours() + ":" +
            +date.getMinutes() + ":" +
            +date.getSeconds();

        td[3].innerHTML = "Последнее сообщ: " + message.sender;

        chats.removeChild(chat);
        chats.insertBefore(chat, chats.firstChild);

    }
}


