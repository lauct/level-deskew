#!/usr/bin/env perl

# flickr.pl
# Created by Chun-Ting Liu on 2009-10-17

require 5.008008;
#use warnings;
#use strict;
my $title, $imgurl, $username, $canonical, $tag, $comment;

print "請輸入Flickr頁面網址，以利抽取資訊：\n";
my $url = <STDIN>;
chomp( $url );
print "\n擷取網頁中...\n";
system ("curl $url | head -n 300 > flickr.temp.htm");
print "擷取完畢。\n\n";
open FH, ("flickr.temp.htm")
	or die  "開啟檔案失敗: $!";

while (<FH>) {
	
	chomp;
	if(/meta name="title"/) {
		s/<meta name="title" content="//;
		s/\" \/>//;
	
		$title = $_;
		print "Title:\n$title\n\n";
	}
	
	if(/link rel="image_src"/) {
		s/	<link rel="image_src" href="//;
		s/\" \/>//;
		s/_m.jpg/.jpg/;
	
		$imgurl = $_;
		print "Image:\n$imgurl\n\n";
	}
	
	if(/geo_possessed_username/) {
		s/var geo_possessed_username = '//;
		s/[;]//;
		s/\\'s\'//;
	
		$username = $_;
		print "User:\n$username\n\n";
	}
	
	if(/link rel="canonical"/) {
		s/	<link rel="canonical" href="//;
		s/\" \/>//;
	
		$canonical = $_;
		print "PhotoPageURL:\n$canonical\n\n";
	}
	#<meta name="description" content="galileo09">
	if(/meta name="description"/) {
		s/	<meta name="description" content="//;
		s/">//;
	
		$comment = $_;
		print "Comment:\n$comment\n\n";
	}
	#tag keywords
	if(/meta name="keywords"/) {
		s/	<meta name="keywords" content="//;
		s/\">//;
		
		### 過濾預設無用的標籤 begin ###
		if (/photography, digital photography, cameraphones, camera, hobby photography, photo, digital camera, compactflash, smartmedia, cameras, canon, nikon, olympus, fujifilm, video/) {
			s/photography, digital photography, cameraphones, camera, hobby photography, photo, digital camera, compactflash, smartmedia, cameras, canon, nikon, olympus, fujifilm, video//;
		}
		if (/, photography, photos, photo/) {
			s/, photography, photos, photo//;
		}
		### 過濾預設無用的標籤 end ###		
		$keyword = $_;
	}	
}
close FH;
system ("rm flickr.temp.htm");


print "HTML code:\n\n";
print '<style type="text/css">.flickr-photo { }.flickr-frame {	float: center; text-align: center; margin-left: 15px; margin-bottom: 15px; }.flickr-caption { font-size: 0.8em; margin-top: 0px; }</style><div class="flickr-frame">	<img src="'.$imgurl.'" class="flickr-photo" style="border: solid 6px #fff;"/><br /><span class="flickr-caption"><a href="'.$url.'">'.$title.'</a>, originally uploaded by '.$username.'.<br />This photo was picked by <a href="http://beautypapers.blogspot.com/">beautypapers</a>.</span></div><p class="flickr-yourcomment">'.$comment.'</p>'."\n\n\n";
print "Tag:\n$keyword\n\n";