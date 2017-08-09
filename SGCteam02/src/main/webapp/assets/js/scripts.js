// Empty JS for your own code to be here

//Função para bloquear o campo "preco" dentro do form-input
//de cadastro de eventos.
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

//Função para buscar dentro da list 
//$(document).ready(function(){
//	$("#teste1").mouseenter(function(){
//		$("#teste1").hide();
//	});
//});

$(function(){
	 
    $("#idConfBusca").change(function(){
        var filter = $(this).val();
        var count = 0;
        $("#listaEventos tbody tr #captar").each(function(){
            //alert("HTML: " + $(this).text());
            if ($(this).text().search(filter) < 0) {
                $("#listaEventos tbody tr").fadeOut();
            }else{
                $("#listaEventos tbody tr").fadeIn();
                count++;
            }
        });                    
    });

})