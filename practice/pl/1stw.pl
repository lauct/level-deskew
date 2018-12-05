#!/bin/env perl
use utf8;
use warnings;

open FH, ("ln.txt")
	or die "無法開啟檔案：";

while ( <FH> ) {
	if (/c/) {
		s/^w/a/;
		print $_;
		}
	}

close FH;
