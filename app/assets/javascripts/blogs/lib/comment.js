module.exports = () => {
  let comments = $('#comments--show-comments'),
  form = $('#comments--show-form')
  
    comments.click(() => {
      $(this).addClass('active');
      form.removeClass('active');
      $('#comments--content').show();
      $('#comments--form').hide();
    })

    form.click(() => {
      $(this).addClass('active');
      comments.removeClass('active');
      $('#comments--content').hide();
      $('#comments--form').show();
    })
};
