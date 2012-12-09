#!/usr/bin/perl

use strict;
use warnings;

my $response = `amixer -c 0 get Master`;
if( $response =~ /off/ )
{
    `amixer -c 0 set Master unmute`;
    `amixer -D pulse set Master 1+ unmute`;
}
else
{
    `amixer -c 0 set Master mute`;
}
