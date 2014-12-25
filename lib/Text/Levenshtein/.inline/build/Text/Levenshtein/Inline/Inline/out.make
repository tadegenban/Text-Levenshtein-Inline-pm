Running Mkbootstrap for Text::Levenshtein::Inline::Inline ()
chmod 644 "Inline.bs"
"/usr/bin/perl" "/home/tadegenban/perl5/lib/perl5/ExtUtils/xsubpp"  -typemap "/usr/share/perl/5.14/ExtUtils/typemap"   Inline.xs > Inline.xsc && mv Inline.xsc Inline.c
cc -c  -I"/tmp/flycheck2280QRz" -D_REENTRANT -D_GNU_SOURCE -DDEBIAN -fno-strict-aliasing -pipe -fstack-protector -I/usr/local/include -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64 -O2 -g   -DVERSION=\"0.00\" -DXS_VERSION=\"0.00\" -fPIC "-I/usr/lib/perl/5.14/CORE"   Inline.c
rm -f blib/arch/auto/Text/Levenshtein/Inline/Inline/Inline.so
cc  -shared -O2 -g -L/usr/local/lib -fstack-protector Inline.o  -o blib/arch/auto/Text/Levenshtein/Inline/Inline/Inline.so 	\
	     	\
	  
chmod 755 blib/arch/auto/Text/Levenshtein/Inline/Inline/Inline.so
"/usr/bin/perl" -MExtUtils::Command::MM -e 'cp_nonempty' -- Inline.bs blib/arch/auto/Text/Levenshtein/Inline/Inline/Inline.bs 644
