use 5.010001;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'Image::SubImageFind',
    VERSION_FROM      => 'SubImageFind.pm', # finds $VERSION
    PREREQ_PM         => {}, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT  => 'Perl extension for locating a sub-image within an image.',
       AUTHOR         => 'Dennis K. Paulsen <ctrondlp@cpan.org>') : ()),
    OBJECT => '$(O_FILES)',
	LIBS => ['-lfftw3 -lm '. `MagickCore-config --ldflags --libs`],
	INC => '`MagickCore-config --cflags --cppflags` -mpreferred-stack-boundary=8',
);
