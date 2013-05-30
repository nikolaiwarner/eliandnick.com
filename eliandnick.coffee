lovely_couple_hover_timer = undefined

sparkle_animate = (container) =>
  setInterval =>
    $(container).find('span').each (index, element) =>
      $(element).css 'color', "rgb(#{Math.floor(Math.random()*255)},#{Math.floor(Math.random()*255)},#{Math.floor(Math.random()*255)})"
  , 200


$ ->
  if $('.homepage').length > 0
    $('.homepage .curtains').delay(1000).fadeOut(4000)
    sparkle_animate $('.the-lovely-couple')

  if $('.page').length > 0
    $('.page .the-lovely-couple').click -> document.location = '/'
    timer = undefined
    $('.the-lovely-couple').hover ->
      timer = sparkle_animate $('.the-lovely-couple')
    , ->
      clearInterval(timer)
      $('.the-lovely-couple span').each (index, element) =>
        $(element).css('color', '')

  if $('.sparkle').length > 0
    text = $('.sparkle').text()
    newtext = ''
    $.each text.split(''), (index, character) =>
      newtext = "#{newtext}<span>#{character}</span>"
    $('.sparkle').html(newtext)
    sparkle_animate $('.sparkle')
