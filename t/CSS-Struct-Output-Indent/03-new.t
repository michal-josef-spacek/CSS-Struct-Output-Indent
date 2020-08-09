use strict;
use warnings;

use CSS::Struct::Output::Indent;
use English qw(-no_match_vars);
use Test::More 'tests' => 8;

# Test.
my $obj = CSS::Struct::Output::Indent->new;
ok(defined $obj);
ok($obj->isa('CSS::Struct::Output::Indent'));

# Test.
eval {
	CSS::Struct::Output::Indent->new('');
};
is($EVAL_ERROR, "Unknown parameter ''.\n");

# Test.
eval {
	CSS::Struct::Output::Indent->new(
		'output_handler' => '',
	);
};
is($EVAL_ERROR, 'Output handler is bad file handler.'."\n");

# Test.
eval {
	CSS::Struct::Output::Indent->new(
		'comment_delimeters' => 'x',
	);
};
is($EVAL_ERROR, "Bad comment delimeters.\n");

# Test.
eval {
	CSS::Struct::Output::Indent->new(
		'comment_delimeters' => [q{/*}, 'x'],
	);
};
is($EVAL_ERROR, "Bad comment delimeters.\n");

# Test.
eval {
	CSS::Struct::Output::Indent->new(
		'comment_delimeters' => ['x', 'x'],
	);
};
is($EVAL_ERROR, "Bad comment delimeters.\n");

# Test.
eval {
	CSS::Struct::Output::Indent->new(
		'auto_flush' => 1,
	);
};
is($EVAL_ERROR, 'Auto-flush can\'t use without output handler.'."\n");
