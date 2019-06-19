//동영상 업로드 시 썸네일 보이게하기 

$("#img_change_click").click(function() {
	var val = $('#v_path').val();
	var urlSplit = val.substr(17,11);
	var imgurl = "http://i.ytimg.com/vi/" + urlSplit + "/mqdefault.jpg"
 	$("#img_changer").attr("src", imgurl);
	$("#img_path").val(imgurl);
	
	var youtubePath = "https://www.youtube.com/embed/"
	var realPath = youtubePath + urlSplit;
	$("#getRealvpath").val(realPath);
});