//= require active_admin/base
const header_new_url = /\/admin\/header_images(\/new)?/;
$(document).ready(function(){

  //header_image
  if(window.location.pathname.match(header_new_url)){
    checkTitle($('#header_image_title:checked'));
    $('#header_image_title').click(function(){
      checkTitle($('#header_image_title:checked'));
    })
  }

  function checkTitle(titleEl){
    if(titleEl.length > 0){
      $('#header_image_bg_pos_pc_input').show();
      $('#header_image_bg_pos_sp_input').show();
    }
    else{
      $('#header_image_bg_pos_pc_input').hide();
      $('#header_image_bg_pos_sp_input').hide();
    }
  }

})
