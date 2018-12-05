#!/usr/bin/env perl

# untitled.pl
#
# Created by Chun-Ting Liu on 2009-10-28

require 5.008008;
use warnings;
use strict;
use Tk;
use utf8;
my $mw = MainWindow->new;

$mw->title("Good Window");
$mw->Label(-text => "這是不好的視窗範例!
\n當你沒有給pack任何option")->pack;


$mw->Checkbutton(-text => "我喜歡！")->pack(-side => 'left',
										-expand => 1,);

$mw->Checkbutton(-text => "我不喜歡！")->pack(-side => 'left',
										 -expand => 1,);
$mw->Checkbutton(-text => "無所謂～")->pack(-side => 'left',
										-expand => 1,);

$mw->Button(-text => "botEXIT",
						-command => sub { exit })->pack(-side => 'bottom',                					
														-expand => 1, 						                                            
														-fill => 'x',
														-pady => '20');
$mw->Button(-text => "topEXIT",-command => sub { exit })->pack(-side => 'top', -expand => 1, -fill => 'both');
$mw->Button(-text => "lefEXIT",-command => sub { exit })->pack(-side => 'left', -expand => 1, -fill => 'both');

#@list = $widget->packInfo (); 
%packinfo = $widget->packInfo; 
print "Side used: ", $packinfo{-side}, "\n"; 

MainLoop;