use lib 'inc';
use ExtUtils::MakeMaker;
use Inline::Module;

WriteMakefile(
  NAME => 'Text::Levenshtein::Inline',
  postamble => {
    inline => {
      module => 'Text::Levenshtein::Inline',
    },
  },
);
