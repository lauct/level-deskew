#!/bin/env perl

use LWP::Simple qw(get);

my $html = get("http://blog.lauct.org/");
print $html."\n";
