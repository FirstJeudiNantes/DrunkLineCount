#!/usr/bin/perl -w

for (my $i=1;$i<5000;$i=int($i*1.01)+1)
{
	if ($i > 500)
	{
		$i += 19;
	}
	system("head -n $i < /var/log/pacman.log > /tmp/test");
	my $exec=`./run.sh /tmp/test`;
	$exec =~ /Temps : (.*) ms/m or die;
	my $duration=$1;
	$duration =~ s/,/./;
	print "$i $duration\n";
}
