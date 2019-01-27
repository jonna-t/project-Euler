## problem 19 - counting sundays
#!/usr/bin/perl

#use strict;
#use warnings;

open(FILE, ">>", 'C:\Users\j.turnbull\Desktop\file1.txt');
#flock(FILE,2); ##lock exclusively - prevents data from being overwritten


%week_days = (
0, "Sunday",
1, "Monday",
2, "Tuesday",
3, "Wednesday",
4, "Thursday",
5, "Friday",
6, "Saturday",
);

my $year = 1900;		## start at 1901

while($year<2000){

my $leap;
my $days_year=0;

if ($year%4==0){
$leap = 29;
}else{
$leap = 28;
}

if($year==2000){
$leap = 28;
}

my $days_year = 31+$leap+31+30+31+30+31+31+30+31+30+31;
#print $leap."\n";
$total_days = $total_days + $days_year;


for(my $j=1;$j!=$days_year;$j++){
my $r=$j%7;
if($r==0){
push(@sundays, $week_days{$r});
}
}

$year++;

print FILE "$total_days, \n";

while($december!=$total_days){
$january = 31+$december;
$february = $january+$leap;
$march = $february+31;
$april = $march+30;
$may = $april+31;
$june = $may+30;
$july = $june+31;
$august = $july+31;
$september = $august+30;
$october = $september+31;
$november = $october+30;
$december = $november+31;

@array = ($january+1, $february+1, $march+1, $april+1, $may+1, $june+1, $july+1, $august+1, $september+1, $october+1, $november+1, $december+1);
for(@array){
$remainder = $_%7;
if ($remainder==0){
push(@amount, $week_days{$remainder});
}
}
}
}


my $number = @sundays;
my $amount = @amount;
my $path = 'C:\Users\j.turnbull\Desktop\output.txt';

close(FILE);
