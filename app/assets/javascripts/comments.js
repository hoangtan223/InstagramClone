$(document).ready(function() {
  //Comments.create();
  $(".comment_form").on('ajax:complete', function(_, response) {
      data = response.responseJSON;
      if (data.success){
      	var comment_list = $(this).parent().prev();
      	var newComment = "<li class=\"row\"><a href=\"/user/" + data.user_id + "\" class=\"col-xs-2 username\" >"+ data.username +"</a><div class=\"col-xs-8\"> " + data.comment +"</div></li>"
        comment_list.append(newComment);
        $(this).find("#comment_comment").val("");
        $(this).find("#comment_comment").blur();
      }
    });
});

