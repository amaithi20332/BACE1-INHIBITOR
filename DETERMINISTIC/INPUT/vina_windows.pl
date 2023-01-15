#!/usr/bin/perl
$ligfile="Ligand.txt";
chomp $ligfile;
open (FH,$ligfile)||die "Cannot open file\n";
@arr_file=<FH>;

for($i=0;$i<@arr_file;$i++)
{
print"@arr_file[$i]\n";
@name=split(/\./,@arr_file[$i]);
}
for($i=0;$i<@arr_file;$i++)
{
	chomp @arr_file[$i];
	print"@arr_file[$i]\n";
	system("/disk2/priya/bace1_docking_drugs21/drugs21/autodock_vina_1_1_2_linux_x86/bin --config config.txt --ligand @arr_file[$i] --log @arr_file[$i]_log.log");
}
