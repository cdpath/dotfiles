#!/usr/bin/perl
# liujingyi(songlart@gmail.com)
use strict;
use warnings;
use File::Basename;
use Getopt::Long;
use Data::Dumper;
use FindBin '$RealBin';          # absulute path of this script: $RealBin/$0
use Cwd;                         # current working directory

my $current_dir = getcwd();
my ($mode, $input, $help);
GetOptions(
	"mode:i"		=> \$mode,    # integer
	"input:s"		=> \$input,   # string
	"help"			=> \$help,
)or die "Unknown option!\n";

die `pod2text $0` if ( @ARGV == 0 || $help);

<+START_HERE>
####################################################
################### Sub Routines ###################
####################################################
