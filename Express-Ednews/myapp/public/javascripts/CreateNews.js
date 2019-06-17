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

$(document).ready(function() { 
  $('#fuMain').change(function() {
    var name = $('#fuMain').val();
    var length = name.length;
    var start = name.lastIndexOf('\\') + 1;
    var filename = name.substring(start, length);
    filename = filename.replace('[','_');
    filename = filename.replace(']','_');
    $('#fileName').val(filename);
  });
});
 
$(document).on("click",".btnSend",function(){
  var n = $('#tag').size();
  var Content = tinymce.get("editor1").getContent();
  var tmp = $('#fuMain').val();
  if($('#fileName').val().length == 0){
    $('#exampleModalLabel').text('Bạn phải chọn ảnh đại diện cho bài viết!');
    $('#btnAlert').click();
  }
  else if(tmp.length != 0){
    $('#exampleModalLabel').text('Bạn chưa nhấn Upload ảnh đại diện bài viết!');
    $('#btnAlert').click();
  }
  else if(n == 0){
    $('#exampleModalLabel').text('Bạn phải nhập Tag cho bài viết!');
    $('#btnAlert').click();
  }
  else if(Content.length == 0){
    $('#exampleModalLabel').text('Bạn phải nhập đầy đủ nội dung bài viết!');
    $('#btnAlert').click();
  }
  else{
    $('#frmCreateNews').submit();
  }  
});

////----------------------- CHỈNH SỬA BÀI VIẾT --------------------------------////
$(document).ready(function() { 
  $(window).load(function() { 
    if($('#valueTags').val() != ""){
    arrTag = $('#valueTags').val().split(",") 
    for(var i =0; i < arrTag.length; i++){
      $("<span class='tag' id = 'tag' style='display:none'>"+arrTag[i]+"<button id='btnTag' class = 'btnTag' type='button'>&times</button></span>").insertBefore("#tag-typer").fadeIn(100);
    }
  }
  });
});
