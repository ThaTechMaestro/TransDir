#The DIR is set to '.' which means current directory in this case
#This can be set to the required directory to perform the intended scripting operation on it  
opendir my $DIR, '.' or die "Can't open the current directory: $!\n";

#read file/directory names in that directory into @names
my @names = readdir $DIR or die "Unable to read current dir:$!\n";

#Close the directory
closedir $DIR;

#Display those names
foreach my $name (@names){
    #skip the current directory entry
    next if ($name eq '.');

    #skip the parent directory entry
    next if ($name eq '..');

    #Check if the next item is a directory
    if(-d $name){
        print "Found a directory: $name\n";
        next;

    }

    #Check if file name is named "core.txt"
    #name can also be replaced with intended file name to be searched for
    if ($name eq 'core.txt'){
        print "Found the file!\n"
    }
}