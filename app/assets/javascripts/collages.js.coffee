jQuery ->
  $('#uploader').click ->
    $('#image_uploader').fadeIn(400);

  $('#picker').click ->
    $('#image_picker').fadeIn(400);

  $('.win_close').click ->
    $(this).parent().parent().fadeOut(400);

  $('.win_button').click ->
    $(this).parent().parent().fadeOut(400);
