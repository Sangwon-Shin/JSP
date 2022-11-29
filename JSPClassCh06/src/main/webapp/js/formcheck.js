$(function(){
	$("#writeForm").on("submit", function(e) {
		//e.preventDefault();
		//e.cancelBubble();
		if($("#writer").val().length <= 0) {
			alert("글쓴이가 입력되지 않았습니다.");
			return false;
		}
		if($("#title").val().length <= 0) {
			alert("제목이 입력되지 않았습니다.");
			return false;
		}
	});
});