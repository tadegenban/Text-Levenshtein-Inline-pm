package Text::Levenshtein::Inline;

use Text::Levenshtein::Inline::Inline C => 'Inline/Levenshtein.c';
use base 'Exporter';

our @EXPORT_OK = qw( distance );

1;
