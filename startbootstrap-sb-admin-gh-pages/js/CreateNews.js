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


function Send(){
	alert("Click button 'Gửi bài'!");
}

	// KHI CLICK BUTTON CHỈNH SỬA Ở FILE Page-Draft.html
var myData = localStorage['dataPageDraft'];
localStorage.removeItem('dataPageDraft');
if(myData == 1){
    document.getElementById('image-parent').innerHTML += '<img height="150" id="img-child" src="imagesCreateNews/a1.jpeg"/>';
    document.getElementById('image-parent').innerHTML += '<img height="150" id="img-child" src="imagesCreateNews/a2.jpeg"/>';
    document.getElementById('image-parent').innerHTML += '<img height="150" id="img-child" src="imagesCreateNews/a3.jpeg"/>';
    document.getElementById('image-parent').innerHTML += '<img height="150" id="img-child" src="imagesCreateNews/a4.jpeg"/>';
    document.getElementById('close-image').removeAttribute('hidden');

    document.getElementById('TieuDe').value = 'Hòn đảo dệt bằng cỏ trôi nổi trên biển suốt 1000 năm';
    document.getElementById('test08').checked = true;
    document.getElementById('tag-typer').remove();
    var parent = document.getElementById('tags');
    parent.innerHTML += '<span class="tag"><span class="close">&times;</span>Du Lịch</span>';
    parent.innerHTML += '<span class="tag"><span class="close">&times;</span>Lễ Hội</span>';
    parent.innerHTML += '<input id="tag-typer" type="text" placeholder="Add tag..."/>';
    document.getElementById('TomTat').value = 'Hòn đảo dệt bằng cỏ trôi nổi trên biển suốt 1000 năm. Người ta ví von rằng hòn đảo này giống như được dệt bằng cỏ, nhìn rất độc đáo.';

    // Thêm nội dung vào CKEDITOR
    document.getElementById('editor1').innerHTML +='<h1>Hòn đảo dệt bằng cỏ trôi nổi trên biển suốt 1000 năm</h1>';
    document.getElementById('editor1').innerHTML +='<em>Thứ Sáu, ngày 02/02/2019 10:00 AM (GMT+7)</em>';
    document.getElementById('editor1').innerHTML +='<p><strong>Người ta ví von rằng hòn đảo này giống như được dệt bằng cỏ, nhìn rất độc đáo.</strong></p>';
    document.getElementById('editor1').innerHTML +='<p><strong>TAGS: </strong><a href="">Du Lịch</a>, <a href="">Lễ Hội</a></p>';
    document.getElementById('editor1').innerHTML +='<p class = "edt-bold">Như chúng ta đã biết, có rất nhiều hòn đảo trên thế giới và mỗi hòn đảo đều có hình dạng, vị trí, đặc điểm riêng. Nhưng liệu bao nhiêu người đã nghe thấy hòn đảo được làm từ những cây lau sậy và thậm chí đã tồn tại được 1000 năm. Trong thời đại công nghệ hiện nay, những người dân trên đó vẫn miệt mài sinh sống bằng nghề đánh bắt cá và di chuyển từ nơi này sang nơi khác.</p>';
    document.getElementById('editor1').innerHTML +='<img src = "imagesCreateNews/a1.jpeg" width = "100%"></img>';
    document.getElementById('editor1').innerHTML +='<p>Hòn đảo nhân tạo này là một lục địa cỏ được dệt từ lau sậy, nằm trên hồ Titicaca ở cao nguyên của Bolivia và Peru. Vậy làm thế nào mà "đồng cỏ" này được tạo ra? Theo hướng dẫn viên du lịch tại đây, vào thời cổ đại người Urus bản địa bị người Inca tấn công, để tránh tai họa do chiến tranh gây ra, họ chỉ có thể di chuyển bằng thuyền đến hồ "Tikka", sau đó họ sử dụng những cây sậy để dệt nên hòn đảo này. Ý định ban đầu là để bảo vệ nhưng người dân cảm thấy sống trên đảo cũng rất hạnh phúc và hòn đảo ấy tồn tại cho đến ngày nay.</p>';
    document.getElementById('editor1').innerHTML +='<img src = "imagesCreateNews/a2.jpeg" width = "100%"></img>';
    document.getElementById('editor1').innerHTML +='<p>Mặc dù đảo nổi không khó để thực hiện nhưng cũng có một sự bất tiện là những cây sậy được dệt chỉ tồn tại được 1 năm, sau đó người dân sẽ tái tạo và làm lại cái mới. Những người lần đầu tiên đặt chân lên đảo nổi này cảm thấy rất hoang mang, người dân sống trên đây không sợ hòn đảo này bị chìm sao. Trên thực tế, đảo này có độ dày 1.5 mét, có thể nổi hoàn toàn vì thế người dân hoàn toàn không lo lắng về vấn đề này.</p>';
    document.getElementById('editor1').innerHTML +='<img src = "imagesCreateNews/a3.jpeg" width = "100%"></img>';
    document.getElementById('editor1').innerHTML +='<p>Nhiều người ví "đồng cỏ" này như thiên đường, nơi người dân có thể cười vui và sống hạnh phúc mỗi ngày. Hằng ngày, đàn ông thì câu cá, đánh bắt vịt trời trong khi phụ nữ dệt và xay bột. Cuộc sống của họ không lo lắng bất kỳ điều gì, chỉ cần đủ bữa sống qua ngày là đã cảm thấy mãn nguyện.</p>';
    document.getElementById('editor1').innerHTML +='<img src = "imagesCreateNews/a4.jpeg" width = "100%"></img>';
    document.getElementById('editor1').innerHTML +='<p>Hòn đảo nổi nhân tạo này có kích thước khổng lồ, bao gồm các đảo lớn nhỏ, đảo lớn thì có trường học, cửa hàng, nhà thờ...đảo nhỏ thì người dân sinh hoạt. Theo cuộc điều tra dân số năm 1997, "đảo cỏ" này có tổng cộng 2000 người sinh sống, nhưng cùng với sự tiến bộ của xã hội, rất nhiều người đã bỏ nơi này để đến những vùng đất khác sinh sống, thế nên dân số hiện nay chỉ còn khoảng vài trăm người.</p>';
}