jQuery(document).ready(function() {
	$("#file").on('change', function(event) {
		var files = $(this)[0].files;
		if(files.length>0){
			for(var i = 0; i<files.length; i++){			
				var obj = new FileReader();
				obj.readAsDataURL(this.files[i]);
				obj.onload = function(data){
					var parent = document.getElementById('image-parent');
					parent.innerHTML += '<img height="150" id="img-child" src="'+data.target.result+'" />';
				}
			}
			var count_img = $('#image-parent').length;
			if(count_img>0){
				var btn = document.getElementById('close-image');
       			btn.removeAttribute('hidden');
			}
		}
	});
});

$(document).ready(function(){
  $("#close-image").click(function(){
    $("img").remove("#img-child");
	var btn = document.getElementById('close-image');
    btn.setAttribute('hidden','true');
  });
});

$(document).ready( function() {
  $("#tag-typer").keypress( function(event) {
    var key = event.which;
    if (key == 13 || key == 44){
     event.preventDefault();
     var tag = $(this).val();
      if(tag.length > 0){
        $("<span class='tag' style='display:none'><span class='close'>&times;</span>"+tag+" </span>").insertBefore(this).fadeIn(100);
        $(this).val("");
      }
    }
  });
  
  $("#tags").on("click", ".close", function() {
    $(this).parent("span").fadeOut(100);
  });
});


(function($){
	$(document).ready(function (){
		$('#link-video').click(function() {
			$(this).addClass("active");
       $(this).attr('placeholder','Embed URL/Link of a Youtube Video');
			$('#subscribe-button').addClass("show");
		});

		$('#subscribe-button').click(function() {
			$('#subscribe-button').removeClass("show");
			$('#link-video').removeClass("active");
			$('#link-video').val('');
       $('#link-video').attr('placeholder','Add Video');
		});
	
	});

})(window.jQuery);


function Split_Str(str){
	var array = str.split(" ");
	if(array.length<4 && str!=""){
		alert("Link nhập vào không đúng!");
		return "";
	}
	var res = array[3].substring(5,array[3].length-1);
	return res;
}
var count_video = 0;
function AddVideo(){
	var x = document.getElementById('link-video').value;
	var link = Split_Str(x);
	console.log(link);
	if(link!=""){
		count_video++;
		var parent = document.getElementById('parent');
		var ifrm = document.createElement("iframe");
		ifrm.setAttribute('id', 'child');
       	ifrm.setAttribute('src', link);
       	ifrm.setAttribute('width','350');
       	ifrm.setAttribute('height','275');
       	parent.appendChild(ifrm);
    }
    if(count_video>0){
       	var btn = document.getElementById('close-video');
       	btn.removeAttribute('hidden');
    }
}

$(document).ready(function(){
  $("#close-video").click(function(){
    $("iframe").remove("#child");
    count_video = 0;
	var btn = document.getElementById('close-video');
    btn.setAttribute('hidden','true');
  });
});


function Send(){
	alert("Click button 'Gửi bài'!");
}