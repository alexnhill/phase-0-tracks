

function clickRed (event) {
	console.log (event);
	event.target.style.backgroundColor = "red";
}

var bul1 = document.getElementById("el1");
bul1.style.border = "2px solid pink";

var bul2 = document.getElementById("el2");
bul2.style.backgroundColor = "blue";

var bul3 = document.getElementById("el3");
bul3.style.fontSize = "50px";
bul3.addEventListener("click", clickRed);

