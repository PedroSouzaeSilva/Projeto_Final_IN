$(document).ready(function(){
   
   /*---- Fadeout dos alerts ----*/

   $(document).on('mouseover', ".pop-up-container", function(e) {
       window.setTimeout(function(){
           $(".pop-up-container").fadeOut();
       }, 300);
   });
   
   
   /*----- Função teste constante ----*/
   
   $(document).click(function(){
      console.log("Behavior funcionando");
   });
   
   /* Função para controlar o sub-menu. Ao clickar, adiciona-se a classe show que põe ele em display block */
   
   $(document).on("click", ".dropdown", function (e) {
       $(".dropdown-content").removeClass("show");
       $(".dropdown").children("a").css("background-color", "");
       $(this).children("a").css("background-color", "#222222");
       $(this).children(".myDropdown").toggleClass("show");
   });
   
  $(document).click(function(event) {
      if(!$(event.target).closest(".dropdown").length){
          $(".dropdown").children("a").css("background-color", "");
          $(".dropdown-content").removeClass("show");
      }
  });
  
  /*código copiado para o menu hambúrguer e cascade*/
  
  $(document).on('click', ".bt-menu", function(e) {
    $('body').toggleClass('menu-open');
    $(".cascade-ul").toggleClass( "loading" );
  });
  
});
