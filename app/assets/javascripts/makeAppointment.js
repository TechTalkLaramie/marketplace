$(document).on('turbolinks:load', function() {
	
	var now = new Date();
	var day = ("0" + now.getDate()).slice(-2);
	var month = ("0" + (now.getMonth() + 1)).slice(-2);
	
	function addZero(i) {
	    if (i < 10) {
	        i = "0" + i;
	    }
	    return i;
	}
	
	
	var hour = now.getHours()
	hour = addZero(hour)
	var min = now.getMinutes()
	min = addZero(min)
	var time = hour + ":" + min + ":00"
	var today = now.getFullYear()+"-"+(month)+"-"+(day) ;

	
	$("#createApointmentDate").val(today)

	$("#createApointmentTime").val(time)
	
	
	
	$("#createNewServiceExpirationDate").val(today)

	$("#createNewServiceExpirationTime").val(time)
	
	var setFormDateTime = function(){
		
		dateToSet = $("#createApointmentDate").val()
		timeToSet = $("#createApointmentTime").val()
		dateToSetExpire = $("#createNewServiceExpirationDate").val()
		timeToSetExpire = $("#createNewServiceExpirationTime").val()
		var dateTimeFormValue = dateToSet + "T" + timeToSet
		var dateTimeFormValueExpire = dateToSetExpire + "T" + timeToSetExpire
		$("#formDateTimeFieldNewAppointment").val(dateTimeFormValue)
		$("#formDateTimeFieldNewServiceExpiration").val(dateTimeFormValueExpire)
	
	}
	
	
	setFormDateTime()
	
	$("#createApointmentTime").on("change", function(){
		setFormDateTime()
	})
	$("#createApointmentDate").on("change", function(){
		setFormDateTime()
	})
	
	$("#createNewServiceExpirationDate").on("change", function(){
		setFormDateTime()
	})
	$("#createNewServiceExpirationTime").on("change", function(){
		setFormDateTime()
	})
	
})