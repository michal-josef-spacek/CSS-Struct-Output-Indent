# Pragmas.
use strict;
use warnings;

# Modules.
use CSS::Struct::Output::Indent;
use Test::More 'tests' => 1;

# Test.
is($CSS::Struct::Output::Indent::VERSION, 0.01, 'Version.');
