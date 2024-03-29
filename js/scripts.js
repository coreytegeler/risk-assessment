(function() {
  $(function() {
    if ($('#overview').length) {
      $('#overview').fullpage({
        anchors: ['intro', 'risks', 'examples', 'luca', 'jo', 'sara', 'xav', 'hygiene', 'recommend'],
        navigation: true,
        navigationTooltips: ['Intro', 'Risks', 'Examples', 'Luca', 'Jo', 'Sara', 'Xav', 'Hygiene', 'Recommend'],
        slidesNavigation: true,
        scrollingSpeed: 1000
      });
    } else if ($('#quiz').length) {
      $('#quiz').fullpage({
        anchors: ['intro', 'q1', 'q2', 'q3', 'q4', 'q5', 'q6', 'q7', 'conclusion'],
        navigation: true,
        navigationTooltips: ['Intro', 'One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Conclusion'],
        slidesNavigation: true,
        scrollingSpeed: 1000
      });
      $('.question a').click(function(e) {
        var $question, a, correct, q;
        $question = $(this).parents('.question');
        if (!$question.is('.submitted')) {
          q = $question.data('q');
          a = $(this).data('a');
          correct = $(this).is('.answer');
          $question.find('a').each(function(i, option) {
            if ($(option).is('.answer')) {
              $(option).addClass('correct');
            } else {
              $(option).addClass('incorrect');
            }
            return setTimeout(function() {
              return $(option).attr('href', '');
            });
          });
          ga('send', 'event', 'quiz', a, q);
          return $question.addClass('submitted');
        }
      });
    }
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
