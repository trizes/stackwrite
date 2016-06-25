$(document).ready(() => {
  getFacebookPic();
});

function getFacebookPic() {
  let picture = $('.profile-img');
  let src = picture.data('src');
  if (/facebook/.test(src)) {
    let fb_cdn_src = src + '?redirect=false';
    $.get(fb_cdn_src).done((data) => {
      picture.attr('src', data.data.url);
    });
  } else {
    picture.attr('src', src);
  }
}
