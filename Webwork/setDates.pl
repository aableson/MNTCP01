#!/usr/bin/perl -w
use File::Copy;
use DateTime;

opendir($dir, ".") or die "Unable to open current directory";

FILE: while($filename = readdir($dir)) {
$first_webwork_due_date_fall = DateTime->new(      
      year       => 2016,
      month      => 9,
      day        => 23,
      hour       => 10, minute     => 00, 
    locale => "en_US", 
    );

$webwork_open_date = DateTime->new(      
      year       => 2016,
      month      => 9,
      day        => 1,
      hour       => 10, minute     => 00, 
    locale => "en_US", 
    );
    if ($filename =~ /setWeek_(\d\d).def/) {
	$unit = $1;
	print "Week $1: $filename\n";
	$unit_text = $unit; # nice text - no leading zeros
	$unit_text =~  s/^0+//;

	# Replace the current header with the default gateway quiz header
	$/ = ''; 	
	open(INPUT_FILE, $filename) or die "Unable to open $filename\n";
	
 	close(INPUT_FILE);
	

	$week_count = ($unit_text+0);
	print "Week count: $week_count\n";
	$webwork_due_date = $first_webwork_due_date_fall;
	$webwork_due_date->add( days => 7*($week_count - 1) );
 	open(OUTPUT_FILE, ">tmpfile") or die "Unable to open tmpfile\n";
 	open(INPUT_FILE, $filename) or die "Unable to open $filename\n";
	@lines = <INPUT_FILE>;
	for ($i = 0; $i < @lines; $i++) {
	    if ($lines[$i] =~ /openDate/) {
		$lines[$i] = "openDate          = " . $webwork_open_date->strftime('%m/%d/%Y at %H:00am EDT') . "\n";
	    }
	    elsif ($lines[$i] =~ /dueDate/) {
		$lines[$i] = "dueDate           = " . $webwork_due_date->strftime('%m/%d/%Y at %H:00am EDT') . "\n";
		
	    } 	
	    elsif ($lines[$i] =~ /answerDate/) {
		$lines[$i] = "answerDate        = " . $webwork_due_date->strftime('%m/%d/%Y at %H:00am EDT') . "\n";
		
	    } 	
	}
	print OUTPUT_FILE @lines;

	close(OUTPUT_FILE);
	close(INPUT_FILE);
	copy("tmpfile", $filename);
	
    }
}

# Package all the .def files into a tar gz archive for uploading
system("tar cvzf AllSets.tgz *.def");
