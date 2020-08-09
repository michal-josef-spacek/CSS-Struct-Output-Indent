# Pragmas.
use strict;
use warnings;

# Modules.
use Test::More 'tests' => 2;

BEGIN {

	# Test.
	use_ok('CSS::Struct::Output::Indent');
}

# Test.
require_ok('CSS::Struct::Output::Indent');
