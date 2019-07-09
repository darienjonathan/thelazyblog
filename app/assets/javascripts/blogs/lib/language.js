module.exports = () => {
  let id = document.querySelectorAll('.id'),
  en = document.querySelectorAll('.en'),
  jp = document.querySelectorAll('.jp');

  if(id.length > 0){
    document.getElementById('lang_id').addEventListener('click', () => {
      $(this).addClass('active');
      $('#lang_en').removeClass('active');
      $('#lang_jp').removeClass('active');
      for(let i = 0; i < id.length; i++){
        id[i].style.display = "block";
        if(en.length > 0){en[i].style.display = "none";}
        if(jp.length > 0){jp[i].style.display = "none";}
      }
    })
  }
  
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

  if(jp.length > 0){
    document.getElementById('lang_jp').addEventListener('click', () => {
      $(this).addClass('active');
      $('#lang_en').removeClass('active');
      $('#lang_id').removeClass('active');
      for(let i = 0; i < jp.length; i++){
        jp[i].style.display = "block";
        if(en.length > 0){en[i].style.display = "none";}
        if(id.length > 0){id[i].style.display = "none";}
      }
    })
  }    
};
