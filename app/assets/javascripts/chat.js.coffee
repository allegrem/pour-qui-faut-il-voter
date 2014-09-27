# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


ready = ->
  $('#new_chat').on 'submit', ->
    pseudo = $(this).find('#chat_pseudo').val()
    document.cookie = "pseudo=#{pseudo}"

  pseudo = $.cookie 'pseudo'
  if(pseudo)
    $('#chat_pseudo').val pseudo

  $('#chat_message').focus()


$(document).ready(ready)
$(document).on('page:load', ready)