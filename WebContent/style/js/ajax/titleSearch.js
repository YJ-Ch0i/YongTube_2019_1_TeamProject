
var request = new XMLHttpRequest();
function searchFunction(){
	request.open("post", "./VideoSearch.vd?search_title=" + encodeURIComponent(document.getElementById("search_title").value), true);
	request.onreadystatechange = searchProcess;
	request.send(null);
}

function searchProcess(){
	
}