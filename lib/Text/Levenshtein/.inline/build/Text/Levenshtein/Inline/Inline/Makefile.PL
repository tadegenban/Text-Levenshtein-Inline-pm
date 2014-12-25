use ExtUtils::MakeMaker;
my %options = %{
{
  'TYPEMAPS' => [
    '/usr/share/perl/5.14/ExtUtils/typemap'
  ],
  'NAME' => 'Text::Levenshtein::Inline::Inline',
  'INC' => '-I"/tmp/flycheck2280QRz"',
  'VERSION' => '0.00'
}
};
WriteMakefile(%options);

# Remove the Makefile dependency. Causes problems on a few systems.
sub MY::makefile { '' }
