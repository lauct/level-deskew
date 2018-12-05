#!/usr/bin/perl -w 
use Tk; 
$mw = MainWindow->new; 
# Create necessary widgets 
$f = $mw->Frame->pack(-side => 'top', -fill => 'x'); 
$f->Label(-text => "Filename:")->pack(-side => 'left', -anchor => 'w'); 
$f->Entry(-textvariable => \$filename)->pack(-side => 'left', 
   -anchor => 'w', -fill => 'x', -expand => 1); 
$f->Button(-text => "Exit", -command => sub { exit; } )-> 
  pack(-side => 'right'); 
$f->Button(-text => "Save", -command => \&save_file)-> 
  pack(-side => 'right', -anchor => 'e'); 
$f->Button(-text => "Load", -command => \&load_file)-> 
  pack(-side => 'right', -anchor => 'e'); 
$mw->Label(-textvariable => \$info, -relief => 'ridge')-> 
  pack(-side => 'bottom', -fill => 'x'); 
$t = $mw->Scrolled("Text")->pack(-side => 'bottom', 
  -fill => 'both', -expand => 1); 
MainLoop;