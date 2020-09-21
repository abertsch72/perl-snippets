print "original string:\n\t@ARGV\n";

@copyARGV = @ARGV; # copy ARGV before modifying

# remove all vowels
foreach $w (@ARGV) {
	$w =~ s/[aeiou]//gi;
	$w = undef if($w eq ""); # set elem to undef if word is now empty
}
@ARGV = grep { defined($_) } @ARGV; # remove all undef elems from array

print "without any vowels:\n\t@ARGV\n";

# remove all vowels except leading vowels
foreach $w (@copyARGV) {
	$w =~ s/.{1}\K[aeiou]+//gi;
}
print "with only leading vowels:\n\t@copyARGV\n";
