// JavaScript Document This will describe the walkthrough procedure for account setup
/*  jQuery ready function. Specify a function to execute when the DOM is fully loaded.  */
$(document).on('page:change', function() {
	  
	  var suggestJobType = function(input){
		  //For this function you will need the following things on your input:
		  //class = "input-jobType" list="jobSuggestions" 
		  //below the input you need this: <datalist id="jobSuggestions"></datalist>
		  //initialize the number of current suggestions to 0
		  var i = 0 
		  //loop through the lexicon array, and grab the first 5 that match what the user is typing
		  $.each(lexiconOfJobs,function(index, value){
			  //if the entered text matches a value in the array of all possible values, suggest it. Don't append it if it already exists
			  if(value.includes(input.toLowerCase()) && $.inArray(value, currentSuggestions) == -1){
				  //append it to the suggestions list
				  $('#jobSuggestions').append("<option value='" + value + "'>");
				  i += 1
				  currentSuggestions.push(value)
				  console.log(currentSuggestions) 
			  }
			  //if there are already 5 suggestions, then stop. Can change this if we want more suggestions
			  if(i > 5){
			  	return false
			  }
		 
		  })
	  }
	  
	  //this needs to be expanded
	  var lexiconOfJobs = ["dog walker", "dog sitter", "pet sitter", "babysitter", "petsitter", "dog groomer", "snow removal"]
	  //Hide all the Divs
	  $('.accountSetupWalkthrough').hide();
	  //The show the first question
	  $('#module-setup-0').show("slow");
	  //initialize an empty array for current suggestions used in determining job type below
	  var currentSuggestions =  []
	  //if User starts typing in the jobType input box, then give him/her up to 5 suggestions. Perhaps these can be sorted in the lexicon by popularity?
	  $(".input-jobType").on("input", function(){
		  //capture the text and store it
		  var enteredjobTypeText = $(this).val()
		  suggestJobType(enteredjobTypeText)
	  })
	  
	  //If you click the next button, hide the current div and show the next one.
	  $('.nextButton').on("click",function(){
		  var thisDParentName = $(this).parent().attr('id')
		  var thisDivNumber = parseInt(thisDParentName.split('-')[2]);
		  var nextDivNumber = thisDivNumber + 1
		  var divToShow = $("#module-setup-" + nextDivNumber)
		  
		  //if any fields are empty, reject it and give an error message
		  var emptyFields = false
		  console.log($(this).parent().children('input[type="text"]'))
		  var allTextInputs = $(this).siblings('.module-container').find('input[type="text"]')
		  console.log(allTextInputs)
		  if(allTextInputs.is('input')){
			  if(allTextInputs.val()==""){
			  	emptyFields = true
			  }
	 	 }
			  

		  if (emptyFields == true){
			  console.log("ERROR")
			  //then add an error message
		  	
		  }
			
		  //if it is the last question then so something special. For now just console log it
		  else if ($(this).hasClass("finalQuestion")){
			  //Eventually I need to pass this to the backend... but here it all is
			  console.log($('form').serialize())
			  console.log($("#input-jobType").val())
			  console.log($("#input-photoFile").val())
		  }else{
		  	$(this).parent().hide(400)
		  	divToShow.show()
		  }
	  });
  }
);