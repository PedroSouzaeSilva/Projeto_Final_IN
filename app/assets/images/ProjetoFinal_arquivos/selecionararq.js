$(document).ready(function(){

  var $input = $('#input-file');
  var $fileName = $('#file-name');

  $input.change(function(){
      var valor = $(this).val();
      $fileName.text(valor);
  });
});
