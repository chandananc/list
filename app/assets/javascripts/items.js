$(document).ready(function(){
  var getSubCategories = function(category_id){
    var $sub1_categories = $('#item_sub1_category_id');
    $($sub1_categories).empty();
    
    $.post('/sub1_categories/find_by_category', { category_id: category_id }, function(data){
      $.each(data.sub1_categories, function(index, sub1_category){
        var option = $('<option />');
        option.attr('value', sub1_category.id);
        option.text(sub1_category.listing_type);
        option.appendTo($sub1_categories);
      });
    })
  };
  
  var getSelectedCategory = function(){
    return $('#item_category_id').val();
  };
  
  $('#item_category_id').change(function(){
    var category_id = getSelectedCategory();
    getSubCategories (category_id);
  });
  
  getSubCategories(getSelectedCategory());
});