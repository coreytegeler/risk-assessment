$ ->
  if $('#overview').length
    $('#overview').fullpage
      anchors: ['intro', 'patrons', 'examples', 'luca', 'jo', 'sara', 'xav', 'hygiene', 'recommend'],
      navigation: true,
      navigationTooltips: ['Intro', 'Patrons', 'Examples', 'Luca', 'Jo', 'Sara', 'Xav', 'Hygiene', 'Recommend'],
      slidesNavigation: true,
      scrollingSpeed: 1000
  else if $('#quiz').length
    $('#quiz').fullpage
      anchors: ['intro', 'q1', 'q2', 'q3', 'q4', 'q5', 'q6', 'q7', 'conclusion'],
      navigation: true,
      navigationTooltips: ['Intro', 'One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Conclusion'],
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