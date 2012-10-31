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
//= require "jplayer.playlist.min"
//= require "bootstrap"
//= require_tree .

$(function(){
console.log(gon.playlist);

for (var i in gon.playlist) { 
	console.log(gon.playlist[i]["name"]);
  console.log(gon.playlist[i]["song_file"]["url"]);
 };

	var myPlaylist = new jPlayerPlaylist({
	        jPlayer: "#jquery_jplayer_1",
	        cssSelectorAncestor: "#jp_container_1"
	    }, [
	        {
	            title:"Love Song",
	            m4a:"https://s3.amazonaws.com/Xtunes/uploads/song/song_file/14/01_Verb_Song_1.m4a?AWSAccessKeyId=AKIAJFYFZNFFLLYEWYDA&Signature=2ol8%2F7PcO7YfOUiAI%2BsN5iRmqQc%3D&Expires=1351646877"
	        },    
	        {
	            title:"asdasdasdasd 1",
	            m4a:"https://s3.amazonaws.com/Xtunes/uploads/song/song_file/10/05_Doors_Of_Your_Heart.m4a?AWSAccessKeyId=AKIAJFYFZNFFLLYEWYDA&Signature=RpBa4uiUtBJ0Qtfn5VrlVslBLf4%3D&Expires=1351646877"
	        }
	    ], {
	        playlistOptions: {
	            loopOnPrevious: true
	        },
	        loop: true,
	        swfPath: "/path/to/directory/with/Jplayer",
	        supplied: "m4a"
	    });



});
