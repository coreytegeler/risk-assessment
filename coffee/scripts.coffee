$ ->
  if $('#overview').length
    $('#overview').fullpage
      anchors: ['intro', 'risks', 'examples', 'luca', 'jo', 'sara', 'xav', 'hygiene', 'recommend'],
      navigation: true,
      navigationTooltips: ['Intro', 'Risks', 'Examples', 'Luca', 'Jo', 'Sara', 'Xav', 'Hygiene', 'Recommend'],
      slidesNavigation: true,
      scrollingSpeed: 1000
  else if $('#quiz').length
    $('#quiz').fullpage
      anchors: ['intro', 'q1', 'q2', 'q3', 'q4', 'q5', 'q6', 'q7', 'conclusion'],
      navigation: true,
      navigationTooltips: ['Intro', 'One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Conclusion'],
      slidesNavigation: true,
      scrollingSpeed: 1000

    $('.question a').click (e) ->
      $question = $(this).parents('.question')
      i = $question.data('i')
      q = $question.data('q')
      a = $(this).data('a')
      correct = $(this).is('.answer')
      $question.find('a').each (i, option) ->
        if $(option).is('.answer')
          $(option).addClass('correct')
        else
          $(option).addClass('incorrect')
      ga('send', 'event', 'quiz', a, q)


  $('.bhoechie-tab-menu .list-group a').click (e) ->
    e.preventDefault()
    $(this).siblings('a.active').removeClass('active')
    $(this).addClass('active')
    index = $(this).index()
    $container = $(this).parents('.bhoechie-tab-container')
    $content = $container.find('.bhoechie-tab-content')
    $content.removeClass('active');
    $content.eq(index).addClass('active');