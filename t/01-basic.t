use Test::More;
use Text::Levenshtein::Inline qw( distance );

is(distance('foo', 'for'), 1, 'foo and for distance');
