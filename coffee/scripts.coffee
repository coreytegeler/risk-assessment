$ ->
  if $('#overview').length
    $('#overview').fullpage
      anchors: ['intro', 'quiz', 'what', 'patrons', 'meet', 'luca', 'jo', 'sara', 'xav', 'recommend'],
      navigation: true,
      navigationTooltips: ['Intro', 'Quiz', 'What is it?', 'Patrons', 'Meet the Patrons', 'Luca', 'Jo', 'Sara', 'Xav', 'Recommend'],
      slidesNavigation: true,
      scrollingSpeed: 1000
  else if $('#quiz').length
    $('#quiz').fullpage
      anchors: ['intro', 'q1', 'q2', 'q3', 'q4', 'q5', 'q6', 'q7'],
      navigation: true,
      navigationTooltips: ['Intro', 'One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven'],
      slidesNavigation: true,
      scrollingSpeed: 1000

  $('.bhoechie-tab-menu .list-group a').click (e) ->
    e.preventDefault()
    $(this).siblings('a.active').removeClass('active')
    $(this).addClass('active')
    index = $(this).index()
    $container = $(this).parents('.bhoechie-tab-container')
    $content = $container.find('.bhoechie-tab-content')
    $content.removeClass('active');
    $content.eq(index).addClass('active');