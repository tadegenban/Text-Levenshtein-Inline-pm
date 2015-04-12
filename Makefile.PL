use 5.008001; use strict; use warnings; use utf8;

use lib 'inc';
use ExtUtils::MakeMaker;
use Inline::Module;

WriteMakefile(
    NAME => 'Text::Levenshtein::Inline',
    ABSTRACT => 'Levenshtein distance implement by Inline::C',
    VERSION_FROM => 'lib/Text/Levenshtein/Inline.pm',
    AUTHOR => 'tadegenban <tadegenban@gmail.com>',
    LICENSE => 'perl',
    MIN_PERL_VERSION => '5.008001',
    test => { TESTS => 't/*.t' },
    postamble => {
        inline => {
            module => 'Text::Levenshtein::Inline',
        },
    },
);

