# $Id: Makefile.PL,v 1.1 2002/01/17 14:37:25 rowan Exp $

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
