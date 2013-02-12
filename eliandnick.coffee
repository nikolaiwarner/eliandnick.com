lovely_couple_hover_timer = undefined

lovely_couple_animate = =>
  lovely_couple_hover_timer = setInterval =>
    $('.the-lovely-couple span').each (index, element) =>
      $(element).css 'color', "rgb(#{Math.floor(Math.random()*255)},#{Math.floor(Math.random()*255)},#{Math.floor(Math.random()*255)})"
  , 200


$ ->
  if $('.homepage').length > 0
    $('.homepage .curtains').delay(1000).fadeOut(4000)
    lovely_couple_animate()

  if $('.page').length > 0
    $('.page .the-lovely-couple').click -> document.location = '/'
    $('.the-lovely-couple').hover ->
      lovely_couple_animate()
    , ->
      clearInterval(lovely_couple_hover_timer)
      $('.the-lovely-couple span').each (index, element) =>
        $(element).css('color', '')
