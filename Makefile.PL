use strict;
use warnings;

use inc::Module::Install;

# Definition.
abstract 'Indent printing \'CSS::Struct\' structure to CSS code.';
author 'Michal Spacek <skim@cpan.org>';
license 'bsd';
name 'CSS-Struct-Output-Indent';
requires 'CSS::Struct::Output' => 0.01;
requires 'Indent' => 0.01;
requires 'Readonly' => 0;
resources 'bugtracker' => 'https://rt.cpan.org/Public/Dist/Display.html'.
	'?Name=CSS-Struct-Output-Indent';
resources 'homepage' => 'https://github.com/tupinek/'.
	'CSS-Struct-Output-Indent';
resources 'repository' => 'git://github.com/tupinek/'.
	'CSS-Struct-Output-Indent';
test_requires 'English' => 0;
test_requires 'File::Object' => 0.05;
test_requires 'Test::More' => 0;
test_requires 'Test::Pod' => 0;
test_requires 'Test::Pod::Coverage' => 0;
tests_recursive;
version '0.01';

# Run.
WriteAll();
