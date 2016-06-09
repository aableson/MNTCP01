#!/usr/bin/perl -w

@file_list = ( 
#	       "Week01",
#	       "Week02",
#	       "Week03",
#	       "Week04",
#	       "Week05",
#	       "Week06",
	       "Week07",
#	       "Week08",
#	       "Week09",
#	       "Week10",
#	       "Week11",
#	       "Week12",
);


foreach $file_root (@file_list) {

    # *** Generate Questions only file ***
    system("cp Format_QuestionsOnly.tex DocumentFormat.tex");
    system("pdflatex -enable-write18 $file_root");
    system("pdflatex -enable-write18 $file_root");
    system("chmod a+r $file_root.pdf");
    system("mv $file_root.pdf ${file_root}_questions.pdf");

    # *** Generate Solutions file ***
    system("cp Format_Solutions.tex DocumentFormat.tex");
    system("pdflatex -enable-write18 $file_root");
    system("pdflatex -enable-write18 $file_root");
    system("chmod a+r $file_root.pdf");
    system("mv $file_root.pdf ${file_root}_solutions.pdf");

    # *** And move the questions back to the base filename
    system("mv ${file_root}_questions.pdf $file_root.pdf");

    # *** Clean up ***
   system("chmod a+r $file_root.pdf");
}

system("rm *.aux");
system("rm *.log");
#system("rm Unit??.ps");
#system("rm *.dvi");
system("rm *~");

