use strict;
use warnings;

use CSS::Struct::Output::Indent;
use Test::More 'tests' => 2;

# Test.
my $obj = CSS::Struct::Output::Indent->new(
	'skip_comments' => 1,
);
$obj->put(
	['i', 'target', 'code'],
);
my $ret = $obj->flush;
is($ret, '');

# Test.
$obj = CSS::Struct::Output::Indent->new(
	'skip_comments' => 0,
);
$obj->put(
	['i', 'target', 'code'],
);
$ret = $obj->flush;
is($ret, "/* targetcode */");
