#!/usr/local/bin/perl -w



use strict;

use Tk;



my $main = new MainWindow;

$main->Label(-text => 'Hello World!'

		)->pack;

$main->Button(-text => 'Quit',

			  -command => sub{exit}

		)->pack;

MainLoop;
