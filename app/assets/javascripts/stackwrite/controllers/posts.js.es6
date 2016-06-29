var posts = new Vue({
  el: '#posts',
  data: {
    posts: [],
    comment: [],
    displayForm: false
  },
  ready: function() {
    var that;
    that = this;
    $.ajax({
      url: '/authors/1/posts.json',
      success: function(res) {
        debugger;
        that.posts = res;
      }
    });
  },
  methods: {
    toggleForm: function() {
      let state = this.$get('displayForm');
      this.$set('displayForm', !state);
    },
    submitComment: function() {
      debugger;
    }
  }
});
