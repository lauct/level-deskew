#!/usr/bin/perl -w

use Tk;
use strict;

my ($main);

$main = MainWindow->new();
$main->{upper} = $main->Frame(-bg=>"green");
$main->{upper}->pack(-side=>"top", -fill=>"both");
$main->{lower} = $main->Frame(-bg=>"blue");
$main->{lower}->pack(-side=>"bottom", -fill=>"both");
$main->{upper}{left} = $main->{upper}->Button(-text=>"ul", -bg=>"red");
$main->{upper}{left}->pack(-side=>"left", -padx=>5, -pady=>5, -fill=>"both");
$main->{upper}{right} = $main->{upper}->Button(-text=>"ur", -bg=>"red");
$main->{upper}{right}->pack(-side=>"right", -padx=>5, -pady=>5, -fill=>"both");
$main->{lower}{left} = $main->{lower}->Button(-text=>"ll", -bg=>"red");
$main->{lower}{left}->pack(-side=>"left", -padx=>5, -pady=>5, -fill=>"both");
$main->{lower}{right} = $main->{lower}->Button(-text=>"lr", -bg=>"red");
$main->{lower}{right}->pack(-side=>"right", -padx=>5, -pady=>5, -fill=>"both");

MainLoop();
