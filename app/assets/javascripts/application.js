// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require "jquery.jplayer.min"
//= require "bootstrap"
//= require_tree .

$(function(){
	$("#jquery_jplayer_1").jPlayer({
	        ready: function () {
	          $(this).jPlayer("setMedia", {
	            m4a: "http://www.jplayer.org/audio/m4a/Miaow-07-Bubble.m4a",
	            oga: "http://www.jplayer.org/audio/ogg/Miaow-07-Bubble.ogg"
	          });
	        },
	        swfPath: "/js",
	        supplied: "m4a, oga"
	      });
	
				var myPlaylist = new jPlayerPlaylist({
				        jPlayer: "#jp_player_1",
				        cssSelectorAncestor: "#jp_container_1"
				    }, [
				        {
				            title:"Your Title 1",
				            mp3:"/path/to/music.mp3"
				        },    
				        {
				            title:"Your Title 2",
				            mp3:"/path/to/more-music.mp3"
				        }
				    ], {
				        playlistOptions: {
				            loopOnPrevious: true
				        },
				        loop: true,
				        swfPath: "/path/to/directory/with/Jplayer",
				        supplied: "mp3"
				    });
	


});
