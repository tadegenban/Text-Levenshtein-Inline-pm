package Text::Levenshtein::Inline;

use Text::Levenshtein::Inline::Inline C;
use base 'Exporter';

our @EXPORT_OK = qw( distance );

__DATA__
__C__

int distance(char* s, char* t) {

}
