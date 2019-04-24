#!/usr/bin/perl -w
use File::Copy;
use DateTime;

# Read in the gateway template information
$gateway_header_filename = "gateway_template.txt";
open(GATEWAY_HEADER_FILE, $gateway_header_filename) or die "Unable to open $gateway_header_filename\n"; 
@gateway_header = <GATEWAY_HEADER_FILE>;
close(GATEWAY_HEADER_FILE);

opendir($dir, ".") or die "Unable to open current directory";
FILE: while($filename = readdir($dir)) {
$first_webwork_due_date_fall = DateTime->new(      
      year       => 2019,
      month      => 5,
      day        => 15,
      hour       => 10, minute     => 00, 
    locale => "en_US", 
    );

$webwork_open_date = DateTime->new(      
      year       => 2019,
      month      => 4,
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
	@updated_file_lines = @gateway_header;
	open(INPUT_FILE, $filename) or die "Unable to open $filename\n";
	$in_header = 1;
      LINE: while ($line = <INPUT_FILE>) {
	  if ($line =~ /^problemList/) {
	      $in_header = 0;
	  }
	  if ($in_header == 0) {
	      push(@updated_file_lines, $line);
	  }
	  
      }
 	close(INPUT_FILE);
	map(s/[\r\n]$//, @updated_file_lines);
	map(s/[\r\n]$//, @updated_file_lines);
	open(OUTPUT_FILE, ">$filename");
	print OUTPUT_FILE join("\n", @updated_file_lines) . "\n";
	close(OUTPUT_FILE);

	$week_count = ($unit_text+0);
	print "Week count: $week_count\n";
	$webwork_due_date = $first_webwork_due_date_fall->clone;
	$webwork_due_date->add( days => 7*($week_count - 1) );
 	open(OUTPUT_FILE, ">tmpfile") or die "Unable to open tmpfile\n";
 	open(INPUT_FILE, $filename) or die "Unable to open $filename\n";
	@lines = <INPUT_FILE>;
	for ($i = 0; $i < @lines; $i++) {
	    if ($lines[$i] =~ /openDate/) {
		$lines[$i] = "openDate          = " . $webwork_open_date->strftime('%m/%d/%Y at %H:00%P EDT') . "\n";
	    }
	    elsif ($lines[$i] =~ /dueDate/) {
		$lines[$i] = "dueDate           = " . $webwork_due_date->strftime('%m/%d/%Y at %H:00%P EDT') . "\n";
		
	    } 	
	    elsif ($lines[$i] =~ /answerDate/) {
		$lines[$i] = "answerDate        = " . $webwork_due_date->strftime('%m/%d/%Y at %H:00%P EDT') . "\n";
		
	    } 	
	}
	print OUTPUT_FILE @lines;

	close(OUTPUT_FILE);
	close(INPUT_FILE);
	copy("tmpfile", $filename);
	
    }
}

# Package all the .def files into a tar gz archive for uploading
print "Creating the tar file AllSets.tgz\n";
system("tar cvzf AllSets.tgz *.def");
