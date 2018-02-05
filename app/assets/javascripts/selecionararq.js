$(document).ready(function(){

  var $input = $('#avatar');
  var $fileName = $('#file-name');

  $input.change(function(){
      var valor = $(this).val();
      $fileName.text(valor);
  });
});
