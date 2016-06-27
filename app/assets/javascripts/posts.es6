if (window.location.hash == '#_=_'){
  history.replaceState
    ? history.replaceState(null, null, window.location.href.split('#')[0])
    : window.location.hash = '';
}

$(document).ready(() => {

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
