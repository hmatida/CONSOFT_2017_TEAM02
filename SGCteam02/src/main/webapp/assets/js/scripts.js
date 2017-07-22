// Empty JS for your own code to be here
$(document).ready(function(){
    $("#tp_cobranca").mouseenter(function(){

        if($("#tp_cobranca").val() != "in"){
        	$("#preco").prop("disabled", false);
        }
        else{
        	$("#preco").prop("disabled", true);
        	$("#preco").val(0);
        	
        }
     });
});

