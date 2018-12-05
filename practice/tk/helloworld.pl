#!/usr/bin/env perl

# untitled.pl
#
# Created by Chun-Ting Liu on 2009-10-28

require 5.008008;
use warnings;
use strict;
use Tk;
my $mw = MainWindow->new;
$mw->title("Hello World");
$mw->Button(-text => "Done!",
			-command => sub { exit })->pack();
MainLoop;