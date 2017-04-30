$(document).on('turbolinks:load', function() {
	
	$("#container-newServiceToggle").on("click", function(){
		var widthOfSwitch = $(this).width()
		var distanceToMove = $(this).width()/2+"px"
		var currentOffset = $("#module-toggleCover").css("right")
		//console.log(currentOffset)
		if(currentOffset == "0px"){
			//$("#module-toggleCover").css("right", distanceToMove)
			$("#module-toggleCover").animate({"right": distanceToMove})
			$("#priceInputPerText").text("/job")
			$("#fixedRateCheckboxNewService").attr('checked', true)
		}
		else{
			//$("#module-toggleCover").css("right", "0px")
			$("#module-toggleCover").animate({"right": "0px"})
			$("#priceInputPerText").text("/hour")
			$("#fixedRateCheckboxNewService").attr('checked', false)
		}
		
	})
	
	
	
	
});