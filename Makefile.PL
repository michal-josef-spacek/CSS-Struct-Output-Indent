# Pragmas.
use strict;
use warnings;

# Modules.
use ExtUtils::MakeMaker;

# Definition.
WriteMakefile(
	'AUTHOR' => 'Michal Špaček <skim@cpan.org>',
	'NAME' => 'CSS::Structure::Output::Indent',
	'PREREQ_PM' => {
		'CSS::Structure::Output::Core' => 0.01,
		'Indent' => 0,
		'Readonly' => 0,
	},
	'VERSION' => 0.01,
	'test' => {
		'TESTS' => 't/CSS::Structure::Output::Indent/*.t',
	},
);
