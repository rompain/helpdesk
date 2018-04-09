// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){
    $('a[href*="#"]').click(function(){
        $($(this).attr("href")).effect("highlight", {}, 1500);
    });
});

(function() {
  $(function() {
    return $('.chosen-select').chosen({
      allow_single_deselect: true,
      placeholder_text: 'Wybierz',
      no_results_text: 'Nie znaleziono pasujÄcych',
      width: '220px'
    });
  });

}).call(this)
