# $Id: Makefile.PL,v 1.3 2002/05/01 13:20:54 rowan Exp $

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
	'PREREQ_PM'	=> { Mail::IMAPClient => '2.1.4' },
	'dist'		=> { COMPRESS => 'gzip', SUFFIX => 'gz', },
);
