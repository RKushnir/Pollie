# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $("input[name='answer']").click ()->
    $("button.continue").removeAttr("disabled")

  $('button.continue').click ()->
    e = jQuery.Event("question_answered")
    e.answer_id = $("input:checked[name='answer']").val()
    $("body").trigger(e)

  $("body").on 'question_answered', (e)->
    alert('Olé!')
