//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{" ", "ln=$(date +%d | sed -r 's/.*(.)/\\1/'); [[ $ln = 1 ]] && suf=st ; [[ $ln = 2 ]] && suf=nd ; [[ $ln = 3 ]] && suf=rd; [[ -z $suf ]] && suf=th; date \"+%a, %b %-d$suf %R ;\"",  60, 0},
//  {"", "~/.SYSTEM/scripts/bar_funcs/datetime.sh",   60,   0},
  {"", "~/.SYSTEM/scripts/bar_funcs/network.sh",   1,   0},
  {"", "~/.SYSTEM/scripts/bar_funcs/bar.sh",    1,   0},
  {"", "~/.SYSTEM/scripts/bar_funcs/spotify.sh",    1,   0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
