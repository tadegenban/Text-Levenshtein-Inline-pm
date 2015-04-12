package Text::Levenshtein::Inline;

our $VERSION = 0.01;


use Text::Levenshtein::Inline::Inline C => Config => ccflagsex => '-std=c99';
use Text::Levenshtein::Inline::Inline C => 'lib/Text/Levenshtein/Inline/Levenshtein.c';

use Exporter 'import';
our @EXPORT = qw( distance dis );


1;
