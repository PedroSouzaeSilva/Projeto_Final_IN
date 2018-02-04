$(document).ready(function(){
   
   /*Função teste constante*/
   
   $(document).click(function(){
      console.log("Behavior funcionando");
   });
   
   /* Função para controlar o sub-menu. Ao clickar, adiciona-se a classe show que põe ele em display block */
   $(document).on("click", ".dropdown", function (e) {
       $(".dropdown-content").removeClass("show");
       $(this).children(".myDropdown").toggleClass("show");
   });
   
  $(document).click(function(event) {
      if(!$(event.target).closest(".dropdown").length){
          $(".dropdown-content").removeClass("show");
      }
  });
  
  /*código copiado para o menu hambúrguer e cascade*/
  
  $(document).on('click', ".bt-menu", function(e) {
    $('body').toggleClass('menu-open');
    $(".cascade-ul").toggleClass( "loading" );
  });
  
});