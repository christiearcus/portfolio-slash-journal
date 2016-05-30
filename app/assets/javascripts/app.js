$(document).ready(function() {
  // build navbar for small viewports
  var $selectList = $('<select></select>')
  $('#menu').append($selectList);
  $('#menu a').each(function() {
    var $anchorLink = $(this);
    var $dropDownOption = $('<option></option>');
      if ($anchorLink.parent().hasClass('selected')) {
        $dropDownOption.prop('selected', true);
      }
    $dropDownOption.text($anchorLink.text());
    $selectList.append($dropDownOption);
    $dropDownOption.val($anchorLink.attr('href'));
  });
  $selectList.change(function() {
    window.location = $selectList.val();
  });
})
