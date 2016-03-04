// $(document).ready(function() {
//   //Comments.create();
//   $(".comment_form").on('ajax:complete', function(_, response) {
//       data = response.responseJSON;
//       if (data.success){
//       	var comment_list = $(this).parent().prev();
//       	var newComment = "<li><a href=/user/" + data.user_id + ">"+ data.username +"</a> " + data.comment +"</li>"
//         comment_list.append(newComment);
//         $(this).find("#comment_comment").val("");
//         $(this).find("#comment_comment").blur();
//       }
//     });
// });

