// Removes facebook link fragment
if (window.location.hash == '#_=_'){
  history.replaceState
    ? history.replaceState(null, null, window.location.href.split('#')[0])
    : window.location.hash = '';
}

$(document).ready(() => {

});

function Comments() {
  this.toggleForm = function(element) {
    $(element).siblings('.comment-form').toggle();
  },
  this.commentTemplate = function() {
    return "<div class='comment-form'><input type='text' size='60'><button onclick='comments.submitComment(this)'>Reply!</button></div>";
  },
  this.submitComment = function(el) {
    console.log(el)
  }
};

let comments = new Comments();
