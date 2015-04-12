use Test::More;
use Text::Levenshtein::Inline qw( distance dis );

is(distance('foo', 'for'), 1, 'foo and for distance');

# copied from Text::Levenshtein
is(distance("foo","four"),2,"Correct distance foo four");
is(distance("foo","foo"),0,"Correct distance foo foo");
is(distance("cow","cat"),2,"Correct distance cow cat");
is(distance("cat","moocow"),5,"Correct distance cat moocow");
is(distance("cat","cowmoo"),5,"Correct distance cat cowmoo");
is(distance("sebastian","sebastien"),1,"Correct distance sebastian sebastien");
is(distance("more","cowbell"),5,"Correct distance more cowbell");

done_testing;
