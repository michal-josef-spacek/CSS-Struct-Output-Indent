# Pragmas.
use strict;
use warnings;

# Modules.
use CSS::Struct::Output::Indent;
use English qw(-no_match_vars);
use Test::More 'tests' => 2;

# Test.
my $obj = CSS::Struct::Output::Indent->new;
eval {
	$obj->put(
		['e'],
	);
};
is($EVAL_ERROR, "No opened selector.\n");

# Test.
$obj->reset;
$obj->put(
	['s', 'body'],
	['e'],
);
my $ret = $obj->flush;
my $right_ret = <<'END';
body {
}
END
chomp $right_ret;
is($ret, $right_ret);