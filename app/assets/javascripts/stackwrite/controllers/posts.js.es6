var posts = new Vue({
  el: '#posts',
  data: {
    posts: []
  },
  ready: function() {
    var that;
    that = this;
    $.ajax({
      url: '/authors/1/posts.json',
      success: function(res) {
        that.posts = res;
      }
    });
  }
});
