#!/usr/bin/perl 
use Tk; 
$mw = MainWindow->new; 
$mw->title("Entry"); 
$e_txt = "Entry Text";    # Create entry with initial text 
$e = $mw->Entry(-textvariable => \$e_txt
			   )->pack(-expand => 1, 
                       -fill => 'x'); 
$mw->Button(-text => "Exit", 
            -command => 
			sub { exit }
			)->pack(-side => 'bottom'); 
# Create a Button that will insert a counter at the cursor 
$i = 1; 
$mw->Button(-text => "Insert #", 
			-command => 
            sub { 
             if ($e->selectionPresent() ) { 
               $e->insert('sel.last', "$i"); $i++; 
              } 
  			})->pack; 
MainLoop; 
