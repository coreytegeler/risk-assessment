$ ->
  $('#fullpage').fullpage
    anchors: ['intro', 'overview', 'quiz', 'hygiene', 'recommend', 'risk', 'patrons', 'luca', 'jo', 'sara', 'xav'],
    navigation: true,
    navigationTooltips: ['Intro', 'Overview', 'Quiz', 'Hygiene', 'Recommend', 'Risk', 'Patrons', 'Luca', 'Jo', 'Sara', 'Xav'],
    slidesNavigation: true,
    scrollingSpeed: 1000

  $('div.bhoechie-tab-menu>div.list-group>a').click (e) ->
    e.preventDefault()
    $(this).siblings('a.active').removeClass('active')
    $(this).addClass('active')
    index = $(this).index()
    $('div.bhoechie-tab>div.bhoechie-tab-content').removeClass('active')
    $('div.bhoechie-tab>div.bhoechie-tab-content').eq(index).addClass('active')

  $('div.bhoechie-tab-menu2>div.list-group>a').click (e) ->
    e.preventDefault()
    $(this).siblings('a.active').removeClass('active')
    $(this).addClass('active')
    index = $(this).index()
    $('div.bhoechie-tab2>div.bhoechie-tab-content2').removeClass('active')
    $('div.bhoechie-tab2>div.bhoechie-tab-content2').eq(index).addClass('active')

 $('div.bhoechie-tab-menu3>div.list-group>a').click () ->
    e.preventDefault()
    $(this).siblings('a.active').removeClass('active')
    $(this).addClass('active')
    index = $(this).index()
    $('div.bhoechie-tab3>div.bhoechie-tab-content3').removeClass('active')
    $('div.bhoechie-tab3>div.bhoechie-tab-content3').eq(index).addClass('active')

 $('div.bhoechie-tab-menu4>div.list-group>a').click () ->
    e.preventDefault()
    $(this).siblings('a.active').removeClass('active')
    $(this).addClass('active')
    index = $(this).index()
    $('div.bhoechie-tab4>div.bhoechie-tab-content4').removeClass('active')
    $('div.bhoechie-tab4>div.bhoechie-tab-content4').eq(index).addClass('active')