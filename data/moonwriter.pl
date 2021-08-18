#!/usr/bin/perl

# This program takes the table of approximate satellite orbits
# provided by JPL in its web page, and transforms it into a JavaScript structure
# The table output was striped into the file satellite.data.  Hand editting of the
# provided header lines for each group of orbits which gave Planet, epoch and 
# frame for each group of orbits.  This program read the edited satellite.data file
# and produced the moons.parsed file.
use strict;

my $planet;
my $epoch;
my $frame;

open(INPUT, "satellite.data");

while (<INPUT>) {
    chomp;
    if (/Planet/) {
        my @f = split(":");
        my $planet = $f[1];
        print "\n\n$planet:\n";
    } elsif (/Epoch/) {
        my @f = split(":");
        $epoch = $f[1];
    } elsif (/Frame/) {
        my @f= split(":");
        $frame = $f[1];
        $frame =~ s/ //g;
    } else {
        s/(^\s*|\s*$)//g;
        if ($_) {
            my @flds = split("\t");
            my ($name, $a, $Eccen, $nu, $MA, $i, $Omega, $N0,$Per, $pNu, $pOmega, $ra, $dec, $tilt, $ref);
            if ($frame eq "Laplace") {
               ($name, $a, $Eccen, $nu, $MA, $i, $Omega, $N0,$Per, $pNu, $pOmega, $ra, $dec, $tilt, $ref) = @flds;
            } else {
               ($name, $a, $Eccen, $nu, $MA, $i, $Omega, $N0,$Per, $pNu, $pOmega, $ref) = @flds;
            }
            $name =~ s/(^ *| *$)//g;
            if ($name =~ /\s/) {
                $name = '"'.$name.'"';
            }
            print <<EOT;
$name: {
    elems: {a: $a*1000, Eccen: $Eccen, nu: $nu *dr, 
            MA: $MA *dr, i: $i *dr, Omega: $Omega *dr, N0: $N0 /360},
    prec:  {ep0: $epoch,
            fNu: fq/$pNu, fOmega: fq/$pOmega},
EOT
            if ($frame eq "Laplace") {
                print <<EOT;
    frame: {type: "Laplace", ra: $ra *dr, dec: $dec *dr},
EOT

            } else {
                print <<EOT;
    frame: {type: "$frame"},
EOT
            }
            # Placeholders to be filled from other data.
            print <<EOT;
    render: {frac: 0.15, color: 0xFFFF00},
    size:   100000
},
EOT
        } else {
        }
    }
}