const language = require('./lib/language');
const comment = require('./lib/comment');

$(() => {
  const ready = () => {
    $(document).foundation();

    // to circumvent the collapsing searchbox behavior at mobile web browsers, that screws the vh if you put the style at css.
    if (window.matchMedia('(max-width: 600px)').matches) {
      $('.blogs--header').css("height", window.innerHeight);
      $('.blogs--title').css("padding-top", window.innerHeight*0.335);
      $('.columns').css("height", window.innerHeight*0.6);
    }
    language();
    comment();
  }

  $(document).on('turbolinks:load', ready);
});
