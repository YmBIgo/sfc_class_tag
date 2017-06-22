# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on('show.bs.modal', (event) ->
  button = $(event.relatedTarget)
  recipient = button.data('chref')

  modal = $(this)
  modal.find('.modal-body input#href-area').val(recipient)
)

$(document).on 'ajax:success', '#createComment', (xhr, data, status) ->
  location.reload()

$(document).on 'ajax:error', '#createComment', (xhr, data, status) ->
  form = $('.modal-body')
  div = $('<div id="createCommentErrors" class="alert alert-danger"></div>')
  ul = $('<ul></ul>')
  data.responseJSON.messages.forEach(message, i) ->
    li = $('<li></li>').text(message)
    ul.append(i)

  if $('#createCommentErrors')[0]
    $('createCommentErrors').html(ul)
  else
    div.append(ul)
    form.prepend(div)

$(document).on('click', '.sfc-area', (e) ->
  mouseX = e.pageX
  mouseY = e.pageY
  xposLeng = $('#xpos-area').length
  if xposLeng >= 1
    $('.modal-body input#xpos-area').remove()
    $('.modal-body input#ypos-area').remove()
  $('.modal-body').append('<input id="xpos-area" type="hidden" name="comment[x_pos]" value="' + mouseX + '" >')
  $('.modal-body').append('<input id="ypos-area" type="hidden" name="comment[y_pos]" value="' + mouseY + '" >')
)