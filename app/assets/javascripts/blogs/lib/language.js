module.exports = () => {
  let en = document.querySelectorAll('.en'),
  id = document.querySelectorAll('.id'),
  jp = document.querySelectorAll('.jp');
  
  if(en.length > 0){
    document.getElementById('lang_en').addEventListener('click', () => {
      $(this).addClass('active');
      $('#lang_id').removeClass('active');
      $('#lang_jp').removeClass('active');
      for(let i = 0; i < en.length; i++){
        en[i].style.display = "block";
        if(id.length > 0){id[i].style.display = "none";}
        if(jp.length > 0){jp[i].style.display = "none";}
      }
    })
  }

  if(id.length > 0){
    document.getElementById('lang_id').addEventListener('click', () => {
      $(this).addClass('active');
      $('#lang_en').removeClass('active');
      $('#lang_jp').removeClass('active');
      for(let i = 0; i < en.length; i++){
        id[i].style.display = "block";
        if(en.length > 0){en[i].style.display = "none";}
        if(jp.length > 0){jp[i].style.display = "none";}
      }
    })
  }

  if(jp.length > 0){
    document.getElementById('lang_jp').addEventListener('click', () => {
      $(this).addClass('active');
      $('#lang_en').removeClass('active');
      $('#lang_id').removeClass('active');
      for(let i = 0; i < en.length; i++){
        jp[i].style.display = "block";
        if(en.length > 0){en[i].style.display = "none";}
        if(id.length > 0){id[i].style.display = "none";}
      }
    })
  }    
};
