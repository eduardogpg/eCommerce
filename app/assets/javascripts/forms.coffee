$(document).on "ajax:beforeSend", "#emails-Form", ()->
	console.log "Se esta enviando el formulario"
	$("#email-info").html "Se esta enviando tu petición"

$(document).on "ajax:success", "#emails-Form", (e, data, estado, xhr)->
	$(this).slideUp()
	$("#email-info").html "La operación a finalizado correctamente"
	
$(document).on "ajax:error", "#emails-Form", (e, data, estado, xhr)->
	$("#email-info").html data.responseJSON.email[0]	
