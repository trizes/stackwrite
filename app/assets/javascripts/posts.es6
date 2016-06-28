// Removes facebook link fragment
if (window.location.hash == '#_=_'){
  history.replaceState
    ? history.replaceState(null, null, window.location.href.split('#')[0])
    : window.location.hash = '';
}

$(document).ready(() => {

});

function Comments() {
  this.toggleForm = function(comment_id) {
    console.log(comment_id);
  }
};

let comments = new Comments();
