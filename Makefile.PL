# $Id: Makefile.PL,v 1.4 2002/06/14 01:45:07 rowan Exp $

use ExtUtils::MakeMaker;

sub MY::libscan {
	my($self,$path) = @_;
	return '' if $path =~ /RCS/;
	$path;
}

WriteMakefile(
	'NAME'		=> 'Apache::AuthenIMAP',
	'VERSION_FROM'	=> 'AuthenIMAP.pm', 
	'AUTHOR'	=> 'John "Rowan" Littell <littejo@earlham.edu>',
	'ABSTRACT'	=> 'Perform Basic User Authentication against an IMAP server',
	'PREREQ_PM'	=> { 'Apache' => '1.11', 'Mail::IMAPClient' => '2.1.4' },
	'dist'		=> { COMPRESS => 'gzip', SUFFIX => 'gz', },
);
