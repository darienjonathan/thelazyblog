const language = require('./lib/language');
const comment = require('./lib/comment');

$(() => {
  $(document).foundation();

  if (window.matchMedia('(max-width: 600px)').matches) {
    $('.blogs--header').css("height", window.innerHeight);
    $('.blogs--title').css("padding-top", window.innerHeight*0.335);
    $('.columns').css("height", window.innerHeight*0.6);
  }

  language();
  comment();
});
