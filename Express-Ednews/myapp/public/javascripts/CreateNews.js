var arrTag = [];
$(document).ready( function() {
  $("#tag-typer").keypress( function(event) {
    var key = event.which;
    if (key == 13 || key == 44 || key == 32){
     event.preventDefault();
     var tag = $(this).val();
      if(tag.length > 0){
        $("<span class='tag' id = 'tag' style='display:none'>"+tag+"<button id='btnTag' class = 'btnTag' type='button'>&times</button></span>").insertBefore(this).fadeIn(100);
       if(arrTag.indexOf(tag)== -1){
        arrTag.push(tag);
       }
        $('[name=ValueTags]').val(arrTag);
        $(this).val("");
      }
    }
  });
});

  $(document).on("click",".btnTag",function(){
    var index =  $(this).parent().index();
    arrTag.splice(index,1);
    $('[name=ValueTags]').val(arrTag);
    $(this).parent().remove();
  });
 

CKEDITOR.on('instanceReady', function (ev) {
    $('iframe').contents().click(function (e) {
        if (typeof e.target.href !== 'undefined') {
            window.open(e.target.href, 'new' + e.screenX);
        }
        else if (typeof e.currentTarget.activeElement.href !== 'undefined') {
            window.open(e.currentTarget.activeElement.href, 'new' + e.screenX);
        }
    });
    
});
// CKEDITOR.replace('editor1',{
//   height: 500,
// });

$(document).ready(function() { 
  $('#fuMain').change(function() {
    var name = $('#fuMain').val();
    var length = name.length;
    var start = name.lastIndexOf('\\') + 1;
    var filename = name.substring(start, length);
    $('#fileName').val(filename);
  });
});