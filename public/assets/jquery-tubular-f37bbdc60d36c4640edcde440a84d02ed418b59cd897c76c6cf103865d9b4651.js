!function(e,t){var a={ratio:16/9,videoId:"ZCAnLxRvNNc",mute:!0,repeat:!0,width:e(t).width(),wrapperZIndex:99,playButtonClass:"tubular-play",pauseButtonClass:"tubular-pause",muteButtonClass:"tubular-mute",volumeUpClass:"tubular-volume-up",volumeDownClass:"tubular-volume-down",increaseVolumeBy:10,start:0},n=function(n,i){var i=e.extend({},a,i),o=e(".youtube");$node=e(n);var u='<div id="tubular-container" style="overflow: hidden; position: fixed; z-index: 99; width: 100%; height: 100%"><div id="tubular-player" style="position: absolute"></div></div><div id="tubular-shield" style="width: 100%; height: 100%; z-index: 2; position: absolute; left: 0; top: 0;"></div>';o.prepend(u),$node.css({position:"relative","z-index":i.wrapperZIndex}),t.player,t.onYouTubeIframeAPIReady=function(){player=new YT.Player("tubular-player",{width:i.width,height:Math.ceil(i.width/i.ratio),videoId:i.videoId,playerVars:{controls:0,showinfo:0,modestbranding:1,wmode:"transparent"},events:{onReady:onPlayerReady,onStateChange:onPlayerStateChange}})},t.onPlayerReady=function(e){l(),i.mute&&e.target.mute(),e.target.seekTo(i.start),e.target.playVideo()},t.onPlayerStateChange=function(e){0===e.data&&i.repeat&&player.seekTo(i.start)};var l=function(){var a,n,o=e(t).width(),u=e(t).height(),l=e("#tubular-player");o/i.ratio<u?(a=Math.ceil(u*i.ratio),l.width(a).height(u).css({left:(o-a)/2,top:0})):(n=Math.ceil(o/i.ratio),l.width(o).height(n).css({left:0,top:(u-n)/2}))};e(t).on("resize.tubular",function(){l()}),e("body").on("click","."+i.playButtonClass,function(e){e.preventDefault(),player.playVideo()}).on("click","."+i.pauseButtonClass,function(e){e.preventDefault(),player.pauseVideo()}).on("click","."+i.muteButtonClass,function(e){e.preventDefault(),player.isMuted()?player.unMute():player.mute()}).on("click","."+i.volumeDownClass,function(e){e.preventDefault();var t=player.getVolume();t<i.increaseVolumeBy&&(t=i.increaseVolumeBy),player.setVolume(t-i.increaseVolumeBy)}).on("click","."+i.volumeUpClass,function(e){e.preventDefault(),player.isMuted()&&player.unMute();var t=player.getVolume();t>100-i.increaseVolumeBy&&(t=100-i.increaseVolumeBy),player.setVolume(t+i.increaseVolumeBy)})},i=document.createElement("script");i.src="//www.youtube.com/iframe_api";var o=document.getElementsByTagName("script")[0];o.parentNode.insertBefore(i,o),e.fn.tubular=function(t){return this.each(function(){e.data(this,"tubular_instantiated")||e.data(this,"tubular_instantiated",n(this,t))})}}(jQuery,window);