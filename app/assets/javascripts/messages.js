// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

// App.messages = App.cable.subscriptions.create('MessagesChannel', {  
//   received: function(data) {
//     $("#messages").removeClass('hidden')
//     return $("[data-chatroom='" + data.chatroom_id + "']").append(data.message);
//   }
// });

// function submitNewMessage(){  
//   $('textarea#message_content').keydown(function(event) {
//     if (event.keyCode = = = 13) {
//         var msg = event.target.value
//         var chatroomId = $("[data-chatroom]").data().chatroom
//         App.messages.send({message: msg, chatroom_id: chatroomId})
//         $('[data-textarea="message"]').val(" ")
//         return false;
//      }
//   });
// }
