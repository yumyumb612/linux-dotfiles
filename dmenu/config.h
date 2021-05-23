/* See LICENSE file for copyright and license details. */
/* Default settings; can be overriden by command line. */

static int topbar = 1;                      /* -b  option; if 0, dmenu appears at bottom     */
static int centered = 0;                    /* -c option; centers dmenu on screen */
static int min_width = 400;                    /* minimum width when centered */
/* -fn option overrides fonts[0]; default X11 font or font set */
static const char *fonts[] = {
	"JetBrainsMono Nerd Font:size=10"
};
static const char *prompt      = NULL;      /* -p  option; prompt to the left of input field */
static const char col_gray1[]       = "#202027";
static const char col_gray2[]       = "#444444";
static const char col_gray3[]       = "#F0F0F0";
static const char col_gray4[]       = "#FBFBFB";
static const char col_cyan[]        = "#008B8B";
static const char col_red[]         = "#de2f45";
static const char col_yellow[]      = "#ebcb8b";

static const char *colors[SchemeLast][2] = {
	/*     fg         bg       */
//	[SchemeNorm] = { "#bbbbbb", "#222222" },
//	[SchemeSel] = { "#eeeeee", "#005577" },
//	[SchemeSelHighlight] = { "#ffc978", "#005577" },
//	[SchemeNormHighlight] = { "#ffc978", "#222222" },
//	[SchemeOut] = { "#000000", "#00ffff" },

	[SchemeNorm] = { col_yellow, col_gray1 },
	[SchemeSel]  = { col_yellow, col_gray2 },
	[SchemeNormHighlight] = { col_yellow, col_gray1 },
  	[SchemeSelHighlight] = { col_red, col_gray2 },
    
  	[SchemeOut] = { col_cyan, col_gray4 },


};
/* -l option; if nonzero, dmenu uses vertical list with given number of lines */
static unsigned int lines      = 0;
static unsigned int lineheight = 0;         /* -h option; minimum height of a menu line     */

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";

/* Size of the window border */
static const unsigned int border_width = 1;
