use strict;
use warnings;

use CSS::Struct::Output::Indent;
use Test::More 'tests' => 1;

# Test.
my $obj = CSS::Struct::Output::Indent->new;
$obj->put(
	['a', '@import', 'file.css'],
);
my $ret = $obj->flush;
is($ret, '@import "file.css";');
