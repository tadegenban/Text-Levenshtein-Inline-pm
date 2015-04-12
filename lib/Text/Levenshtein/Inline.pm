package Text::Levenshtein::Inline;

our $VERSION = 0.02;


use Text::Levenshtein::Inline::Inline C => Config => ccflagsex => '-std=c99';
use Text::Levenshtein::Inline::Inline C => 'lib/Text/Levenshtein/Inline/Levenshtein.c';

use Exporter 'import';
our @EXPORT = qw( distance dis );


1;

__END__

=pod

=head1 NAME

Text::Levenshtein::Inline - Yet Another Way to implement Levenshtein edit distance

=head1 SYNOPSIS

use Text::Levenshtein::Inline qw( distance );

print distance("foo","four");
# prints "2"

=head1 DESCRIPTION

This module implements the Levenshtein edit distance, using Inline::C and Inline::Module.
I write this modulde for 2 purpose:

1. learn how to use C language to write a perl Module

2. learn how to use Inline::Module to release a Inline based module

which measures the difference between two strings,
in terms of the I<edit distance>.
This distance is the number of substitutions, deletions or insertions ("edits")
needed to transform one string into the other one (and vice versa).
When two strings have distance 0, they are the same.

To learn more about the Levenshtein metric,
have a look at the
L<wikipedia page|http://en.wikipedia.org/wiki/Levenshtein_distance>.


=cut
