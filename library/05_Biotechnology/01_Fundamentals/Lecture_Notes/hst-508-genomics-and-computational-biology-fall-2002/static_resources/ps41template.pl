#!/usr/bin/perl -w
use strict;

################################################################################
## Main program
################################################################################

# reads commend line arguments
my ($input_file, $cluster_number, $out_file) = @ARGV;
die("Usage: cluster.pl [INPUT_FILE] [CLUSTER_NUMBER] [OUTPUT_FILE]\n")
    unless ($#ARGV == 2);

################################################################################
# Read input data

open(FH, "< $input_file") or die("Can't open input file $input_file: $!\n");
my @header = split("\t", <FH>);
my @sample = @header[2..$#header];
my @data;
while (<FH>) {
    chomp;

}
close FH;

################################################################################
# Construct initial distance matrix

my @distance; # distance matrix array
my @min_dist = (10e20, -1, -1); # minimum distance, index i, inex j
for (my $i = 1; $i <= $#data; $i++) {
    for (my $j = 0; $j < $i; $j++) {

    
    }
}

################################################################################
# Cluster

my $clustered = 0;	# count clustered groups
my $distArrRef = \@distance; # distance matrix array reference
my ($c1, $c2) = ($min_dist[1], $min_dist[2]);   # closest pair index
my @clusters;	# cluster list array

# initialize clusters
foreach my $i (0..$#data) {
    push @clusters, $i;
}

while ($clustered < @data - $cluster_number) {

	my $group_number = @data - $clustered;

	####################################
	# print distance matrix and clusters
	####################################



	##############################
	#fuse the two closest clusters
	##############################



	################################################################
	#compute the new distance matrix and identify closest pair in it
	################################################################
	($distArrRef, $c1, $c2) = &new_dist_array($distArrRef, $group_number - 1, $c1, $c2);

	$clustered++;
}


################################################################################
# output result

open(OUT, "> $out_file") || die "Can't open output file $out_file: $!\n";



close OUT;

################################################################################
## Subroutines
################################################################################

# Euclidean distance
sub e_distance {
    my ($x, $y) = @_;
    my $sum = 0;
    for (my $i = 0; $i < @$x; $i++) {
        my $diff = $x->[$i] - $y->[$i]; 
        $sum += $diff ** 2;
    }
    return sqrt($sum);  #the Euclidian distance 
}

# update distance matrix
sub new_dist_array {
	my $dar = shift;	# distance array reference
	my $group_number = shift;	# group number
	my $cidx1 = shift;	# closest pair index 1
	my $cidx2 = shift;	# closest pair index 2


	my @distance;	# new distance matrix array
	my @minDist = (10e20, -1, -1);	# array keeping minimum distance and its index

    # reconstruct distance matrix with unaffected elements



    # reconstruct distance matrix with affected elements



	return \@distance, $minDist[1], $minDist[2];
}

