const language = require('./lib/language');
const comment = require('./lib/comment');

$(() => {
  $(document).foundation();
  language();
  comment();
});
