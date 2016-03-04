# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).ready ->
  #Comments.create();
  $('.comment_form').on 'ajax:complete', (_, response) ->
    data = response.responseJSON
    if data.success
      comment_list = $(this).parent().prev()
      newComment = '<li><a class="username" href=/user/' + data.user_id + '>' + data.username + '</a> ' + data.comment + '</li>'
      comment_list.append newComment
      $(this).find('#comment_comment').val ''
      $(this).find('#comment_comment').blur()
    return
  return
