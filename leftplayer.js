(function($) {

  var PLAYER_URL = 'leftplayer.swf';

  var callback = null;
  window.__video_done = function() {
    callback && callback();
  };

  $.fn.extend({
    leftplayer: function(overrideOptions) {
        var options = { 
            videoDoneCallback: null, 
            clickURL: null, 
            bgcolor: '#FFFFFF',
            showHandCursor: false 
        };
        $.extend(options, overrideOptions);

        var $self = $(this);
        var movie_url = $self.attr('data-video-href');
        var name = ($self.attr('id') || $self.attr('name')) + '_api';
        var url = PLAYER_URL +'?url=' + movie_url;
        for (var key in options) {
             url += '&' + key + '=' + encodeURI(options[key]);
        }

        $('<object name="' + name +'" id="' + name + '" data="' + url + '"' +
          ' width="100%" height="100%" type="application/x-shockwave-flash">' +
          '<param name="movie" value="' + url + '"/>' +
          '<param name="allowfullscreen" value="false"/>' +
          '<param name="allowscriptaccess" value="always"/>' +
          '<param name="quality" value="high"/>' +
          '<param name="cachebusting" value="true"/>' +
          '<param name="bgcolor" value="' + options.bgcolor +'"/>' +
          '<param name="wmode" value="opaque"/>'+ 
          '<embed name="' + name + '"' +
          ' href="' + url + '" quality="high" bgcolor="' + options.bgcolor + '" width="100%" height="100%" align=""' +
          ' pluginspage="http://www.macromedia.com/go/getflashplayer"' +
          ' type="application/x-shockwave-flash"/>' +
          '</object>').appendTo($self);

        callback = options.videoDoneCallback;

        return this;
    }
  });
})(jQuery);
