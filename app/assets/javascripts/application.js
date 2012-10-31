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


var playlist_tracks = [];
for (var i in gon.playlist) {
  var obj = { title: gon.playlist[i]["name"], mp3: gon.playlist[i]["song_file"]["url"] };
  playlist_tracks.push(obj);
}

console.log(playlist_tracks)

	var myPlaylist = new jPlayerPlaylist({
	        jPlayer: "#jquery_jplayer_1",
	        cssSelectorAncestor: "#jp_container_1"
	    }, playlist_tracks,   
	        
	     {
	        playlistOptions: {
	            loopOnPrevious: true
	        },
	        loop: true,
	        swfPath: "/path/to/directory/with/Jplayer",
	        supplied: "mp3"
	    });

});
