# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "page:change", ->          # on takes two params (second one function)
  $("#comments-link").click ->            # click takes a param (function)
    $("#comments-section").fadeToggle()   # toggle the convenient
    $("#comment_title").focus()           # rails convention "comment_title"
