Simple Flash video player with no controls. To install:

    leftplayer <js_target_directory> <swf_target_directory>

Example:

    leftplayer public/javascripts/lib public/videos/lib

To use it in your app:

    var options = { 
      playerUrl: '/javascripts/lib/leftplayer.swf',
      videoDoneCallback: function() { alert('hi'); }, 
      clickURL: 'https://github.com/pkang/leftplayer', 
      bgcolor: '#FFFFFF',
      showHandCursor: true
    };
    $('.something').leftplayer(options);

Requires jQuery.
