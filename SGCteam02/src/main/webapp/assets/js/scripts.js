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

//Função para mostrar erro, caso houver
$(document).ready(function(){
	$("body").mouseenter{
    if($("#mostra_erro").val() !=""){
    	(function(){
            $("#mostra_erro").fadeOut(3000);
    	})};
}});


$(document).ready(function(){
    $("body").mouseenter(function(){
        $("body").fadeOut(3000);
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
        $("#listaEventos tbody tr").each(function(){
        	//alert($("#listaEventos tbody tr td #idConf").text());
            if ($(this).text().search(filter) < 0) {
                $(this).fadeOut();
            }else{
                $(this).show();
                count++;
            }
        });                    
    });

})