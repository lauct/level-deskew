#!/usr/bin/perl 
use Tk; 
my $mw = MainWindow->new; 
$mw->title("Hello World"); 
$mw->Button(-text => "Done",
			-command => 
			sub { exit })->pack; 
MainLoop; 
