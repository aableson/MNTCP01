#!/usr/bin/perl -w 
use XML::Twig;
$mathml_args = " -nodiffs -rep -line -force ";

sub ConvertTextToMathML{
    $text = $_[0];
    
    # Convert the question to MathML, then re-load it into $question
    open(TMP_FILE, ">tmp.xml") or die "Unable to open temporary xml file tmp.xml";
    print TMP_FILE $text;
    close(TMP_FILE);
    $command = "java -jar mathtoweb.jar ${mathml_args}  -df tmp2.xml  tmp.xml";
    `$command`;
    open(TMP2_FILE, "tmp2.xml") or die "Unable to open temporary xml file tmp2.xml";
    $mathml = <TMP2_FILE>;
    close(TMP2_FILE);

    return $mathml;

}

# Look for questions to convert
#@question_files = <Week??.txt>;
@question_files = qw(Week05.txt); # temp for testing
$root_image_url = "http://www.mast.queensu.ca/~apsc171/MNTCP01/CheckIns";

foreach $question_file (@question_files) {
    open(QUESTION_FILE, $question_file) or die "Unable to open $question_file\n";
    
    # open the template files
    my $section_twig=XML::Twig->new(pretty_print => 'indented');
    $section_twig->parsefile('D2L/section.xml');

    # Get the category for these questions
    $question_file =~ /(Week\d\d)/; 
    $category = $1;
    print "Processing $category\n";

#    $topic_filename = "${category}_topics.txt";

    # Load in the question text as a text blob
    local $/; # enable localized slurp mode
    my $content = <QUESTION_FILE>;
    $content =~ s/[\r]+//g;

    # Escape common math symbols in the question
#    $content =~ s#=#\\=#g;
#    $content =~ s#{#\\{#g;
#    $content =~ s#}#\\}#g;

    # UN-escape the equals sign at the start of a line that means 'correct answer'!
#    $content =~ s#\n\\#\n#g;

    # Delete blank lines from the content
    $content =~ s/\n\s*\n/\n/g; 

    # Replace any images with the full URL 
    $content =~ s#([\w_]+.png)#$root_image_url/$category/$1#g;
    
    # Nice unit for printing
    $unit_text = $category;
    $unit_text =~ s/Week/Week /;
    $unit_text =~ s/ 0/ /;

    # Split the content into individual questions, using the ---Question separator
    @questions = split /---Question/, $content;
    $question_number = 0;
    $question_number_text = "Question ${question_number}";
    QUESTION: foreach $question (@questions) {

	if ($question =~ /^[\s\r\n]*$/) {
	    next QUESTION;
	}

	# open the template files
	my $question_twig=XML::Twig->new(pretty_print => 'indented');
	$question_twig->parsefile('D2L/question_item.xml');
	
	my $choice_text_twig=XML::Twig->new(pretty_print => 'indented');
	$choice_text_twig->parsefile('D2L/question_choice_text.xml');
	
	my $scoring_twig=XML::Twig->new(pretty_print => 'indented');
	$scoring_twig->parsefile('D2L/question_scoring.xml');
	
	my $feedback_twig=XML::Twig->new(pretty_print => 'indented');
	$feedback_twig->parsefile('D2L/question_feedback.xml');

	# Increment
	$question_number += 1;
	$cat_ques = "${category}_Q${question_number}";
	$question_number_text = "Question ${question_number}";

	# Identify the parts of the question
	@question_parts = split /---Answers|---Comment|---Type/, $question;
	if (scalar(@question_parts) != 4) {
	    print "Question: ($question)\n";
	    die "$category: ${question_number_text} has " . scalar(@question_parts) . " parts, not 4. Exiting.\n";
	}

	$question = $question_parts[0];
	$question_type = $question_parts[1];
	$answers_textblock = $question_parts[2];
	$feedback = $question_parts[3];

	# Get the question type
	if ($question_type =~ /multichoice/) {
	    $single_answer = "false";
	} else {
	    $single_answer = "true";
	}

	# Remove end-of-lines from the HTML portions: question and feedback
	$question =~ s/[\r\n]+/ /g; 
	$feedback =~ s/[\r\n]+/ /g; 

	# Remove empty lines from any set
	$question =~ s/\n\s*\n/\n/; 
	$answers_textblock =~ s/\n\s*\n/\n/; 
	$feedback =~ s/\n\s*\n/\n/;
	
	# Convert the question to MathML, then re-load it into $question
	$question = ConvertTextToMathML($question);
#	open(TMP_FILE, ">tmp.xml") or die "Unable to open temporary xml file tmp.xml";
#	print TMP_FILE $question;
#	close(TMP_FILE);
#	$command = "java -jar mathtoweb.jar ${mathml_args}  -df tmp2.xml  tmp.xml";
#	`$command`;
#	open(TMP2_FILE, "tmp2.xml") or die "Unable to open temporary xml file tmp2.xml";
#	$question = <TMP2_FILE>;
#	close(TMP2_FILE);

	# Convert the feedback to MathML, then re-load it into $feedback
	$feedback = ConvertTextToMathML($feedback);
#	open(TMP_FILE, ">tmp.xml") or die "Unable to open temporary xml file tmp.xml";
#	print TMP_FILE $feedback;
#	close(TMP_FILE);
#	$command = "java -jar mathtoweb.jar $mathml_args -df tmp2.xml  tmp.xml";
#	`$command`;
#	open(TMP2_FILE, "tmp2.xml") or die "Unable to open temporary xml file tmp2.xml";
#	$feedback = <TMP2_FILE>;
#	close(TMP2_FILE);
	
	# Replace special characters like < and >
	$feedback =~ s/[\r\n]+//g;
#	$feedback =~ s/</&lt;/g;
#	$feedback =~ s/>/&gt;/g;

	# Set the XML entries for the question
	$q = $question_twig->root;
	$q->set_att(title => $cat_ques);
	$q->set_att(label => $cat_ques);
	
	@a = $q->descendants('mattext');
	$a[0]->set_text($question);
	
	@a = $q->descendants('response_lid');
	$a[0]->set_att(ident => "${cat_ques}_LID");


	# Build the answer choices into the XML tree
	@answers = split /\n/, $answers_textblock;
	$answer_count = 1;
	ANSWER: for $answer (@answers) {
	    $cat_ques_ans = "${category}_QUES_${question_number}_ANS_${answer_count}";
	    
	    if ($answer =~ /^[\s\r\n]*$/) {
		next ANSWER;
	    }

	    if ($answer =~ /^\s*=/) {
		$fraction = 100;
	    } elsif ($answer =~ /^\s*\+/) {
		$fraction = 50;
	    } else {
		$fraction = 0;
	    }
	    $answer =~ s/^\s*[=~+]//;
	    $answer = ConvertTextToMathML($answer);
	    
	    #Set the answer text values 
	    $r = $choice_text_twig->root;
	    
	    @v = $r->descendants('response_label');
	    $v[0]->set_att(ident => $cat_ques_ans);
	    
	    @v = $r->descendants('mattext');
	    $v[0]->set_text($answer);
	    
	    @a = $q->descendants('render_choice');
	    my $x = $r->copy();
	    $x->paste(last_child => $a[0]);

	    # Set the scoring and feedback entries
	    $r = $scoring_twig->root;
	    
	    #   root _is_ respcondition
	    $r->set_att(title => "Response Condition ${answer_count}");
	    
	    @v = $r->descendants('varequal');
	    $v[0]->set_text($cat_ques_ans);
	    $v[0]->set_att(respident => "${cat_ques}_LID");
	    
	    @v = $r->descendants('setvar');
	    $v[0]->set_text($fraction);
	    
	    @v = $r->descendants('displayfeedback');
	    $v[0]->set_text("$answer");
	    $v[0]->set_att(linkrefid => "QUES_ANSWER_${answer_count}");
	    
	    $x = $r->copy();
	    @a = $q->descendants('resprocessing');
	    $x->paste(last_child => $a[0]);
	    $answer_count = $answer_count + 1;
	} # next answer
	
	# Add the general feedback
	$r = $feedback_twig->root;
	$r->set_att(ident => $cat_ques);
	
	@v = $r->descendants('mattext');
	$v[0]->set_text($feedback);
	
	my $x = $r->copy();
	$q = $question_twig->root;
	$x->paste(last_child => $q);
	
	
	# Update the label for the section
	$r = $section_twig->root;
	@s = $r->descendants('section');
	$s[0]->set_att(title => $category);
	
	# Add the final question tree to the section
	@s = $section_twig->descendants('section');
	$r = $question_twig->root;
	$x = $r->copy();
	$x->paste(last_child => $s[0]);
	print "Question $question_number\n";
	
    }  # next question
    
    # Output the whole result 
    #	$out_file = "questiondb.xml";
    $out_file = "${category}.xml";
    open (my $fh_out, '>', $out_file) or die "Unable to open $out_file\n";
    $section_twig->print($fh_out);
    close($fh_out);
    
    system("cp $out_file questiondb.xml");
    $zip_file = $out_file;
    $zip_file =~ s/.xml/.zip/;
    system("zip -j $zip_file questiondb.xml D2L/D2LExportSample/imsmanifest.xml");

    close(QUESTION_FILE);

}
