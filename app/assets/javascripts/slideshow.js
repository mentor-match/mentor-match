setInterval(function () {
	if ($(".pic-one").is(":visible")) {
		$(".pic-one").fadeOut(600);
		setTimeout(function () {
			$(".pic-two").fadeIn(600);
		}, 600);
		$(".pic-three").hide();
	}
	else if ($(".pic-two").is(":visible")) {
		$(".pic-one").hide();
		$(".pic-two").fadeOut(600);
		setTimeout(function () {
			$(".pic-three").fadeIn(600);
		}, 600);
	}
	else if ($(".pic-three").is(":visible")) {
		setTimeout(function () {
			$(".pic-one").fadeIn(600);
		}, 600);
		$(".pic-two").hide();
		$(".pic-three").fadeOut(600);
	}
}, 6000);



// setInterval(function () {
// 	$("li:gt(1)").css("display", "none");
// 	$("li.first").insertAfter("li:last").toggle("clip", 100, function () {
// 		$("li:eq(2)").toggle("scale", 100);
// 	});
// }, 6000);