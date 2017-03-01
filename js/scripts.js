(function() {
  $(function() {
    $('#fullpage').fullpage({
      anchors: ['intro', 'quiz', 'patrons', 'meet', 'luca', 'jo', 'sara', 'xav', 'recommend'],
      navigation: true,
      navigationTooltips: ['Intro', 'Quiz', 'Patrons', 'Meet the Patrons', 'Luca', 'Jo', 'Sara', 'Xav', 'Recommend'],
      slidesNavigation: true,
      scrollingSpeed: 1000
    });
    return $('.bhoechie-tab-menu .list-group a').click(function(e) {
      var $container, $content, index;
      e.preventDefault();
      $(this).siblings('a.active').removeClass('active');
      $(this).addClass('active');
      index = $(this).index();
      $container = $(this).parents('.bhoechie-tab-container');
      $content = $container.find('.bhoechie-tab-content');
      $content.removeClass('active');
      return $content.eq(index).addClass('active');
    });
  });

}).call(this);

//# sourceMappingURL=scripts.js.map
