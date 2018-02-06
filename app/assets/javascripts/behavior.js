$(document).ready(function(){

   /*---- Fadeout dos alerts ----*/

   $(document).on('mouseover', ".pop-up-container", function(e) {
       window.setTimeout(function(){
           $(".pop-up-container").fadeOut();
       }, 500);
   });

   /*----- Função teste constante ----*/

   $(document).click(function(){
      console.log("Behavior funcionando");
   });

   // Função para controlar o sub-menu. Ao clickar, adiciona-se a classe show que põe ele em display block

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

  //---------código copiado e editado para o menu hambúrguer e cascade

  $(document).on('click', ".bt-menu", function(e) {
      $('body').toggleClass('menu-open');
      $(".cascade-ul").toggleClass( "loading" );
  });


  //----------- Função de verificação de campo vazio
  /*Basicamente, um botão com a classe verifier inicia uma verificação em todos
  os locais com a classe verify-this que são filhos da verify-father para
  verificar se eles estão não-nulos*/

  $(document).on("click", ".verifier", function(e){
      ($(".verifier").parents(".verify-father")).find(".verify-this").addClass("Teste");
      if(($(".verifier").parents(".verify-father")).find(".verify-this").val().length < 1) {
          e.preventDefault();
          swal("Campo vazio", "", "error");
      }
  });
});
