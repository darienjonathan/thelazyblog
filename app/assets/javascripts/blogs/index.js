const language = require('./lib/language');
const comment = require('./lib/comment');

$(() => {
  $(document).foundation();

  if (window.matchMedia('(max-width: 600px)').matches) {
    $('.index-header').css("height", window.innerHeight*0.8);
    $('.blog-title').css("padding-top", window.innerHeight*0.225);
    $('.columns').css("height", window.innerHeight*0.6);
  }

  language();
  comment();
});
