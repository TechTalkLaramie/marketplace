$(document).on('turbolinks:load', function() {
	//element.offsetWidth < element.scrollWidth
	
	var jobDescDiv = $(".moduleServiceOfferedTitle")
	
	$(".moduleServiceOfferedTitle").each(function(){
		var thisDiv = $(this)
		if(thisDiv.prop('scrollWidth') > thisDiv.prop('clientWidth')){
			//console.log(thisDiv)
			var textToEdit = thisDiv.text()
			var textToPutIn = textToEdit.substring(0,25)+"..."
			thisDiv.text(textToPutIn)
		}
})
	
	
	
	
})
