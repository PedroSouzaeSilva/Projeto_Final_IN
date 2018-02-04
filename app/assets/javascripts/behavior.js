$(document).ready(function(){
   
   /*Função teste constante*/
   
   $(document).click(function(){
      console.log("Behavior funcionando");
   });
   
   /* Função para controlar o sub-menu. Ao clickar, adiciona-se a classe show que põe ele em display block */
   $(".dropdown").click(function(e){
       $(".dropdown-content").removeClass("show");
       $(this).children(".myDropdown").toggleClass("show");
   });
   
  $(document).click(function(event) {
      if(!$(event.target).closest(".dropdown").length){
      console.log("Porra");
          $(".dropdown-content").removeClass("show");
      }
  });
  
  /*código copiado para o menu hambúrguer*/
  
  $('.bt-menu').on('click', function(e) {
    e.preventDefault();
    $('body').toggleClass('menu-open');
  });
  
});