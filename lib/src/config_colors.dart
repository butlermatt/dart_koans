library colors;

const int RESET = 0;
const int BOLD = 1;
  
const int FG_BLACK = 30;
const int FG_RED = 31;
const int FG_GREEN = 32;
const int FG_YELLOW = 33;
const int FG_BLUE = 34;
const int FG_MAGENTA = 35;
const int FG_CYAN = 36;
const int FG_WHITE = 37;
  
const int BG_BLACK = 40;
const int BG_RED = 41;
const int BG_GREEN = 42;
const int BG_YELLOW = 43;
const int BG_BLUE = 44;
const int BG_MAGENTA = 45;
const int BG_CYAN = 46;
const int BG_WHITE = 47;

/// Determine if ansi colors are generated
var useAnsi = false;
  
String _formatString(String str, int color, bool bold) {
  var strOut;
  if(useAnsi) {
    String stCd = new String.fromCharCodes([27, 91]);
    strOut = '${stCd}${bold ? '01' : ''};${color}m$str${stCd}${RESET}m';
  } else {
    strOut = str; 
  }
  return strOut;
}
  
  /** Returns string [arg] with light (or bold) red text */
String LT_RED(String arg) => _formatString(arg, FG_RED, true);
  /** Returns string [arg] with dark red text */
String DK_RED(String arg) => _formatString(arg, FG_RED, false);
  
  /** Returns string [arg] with light (or bold) green text */
String LT_GREEN(String arg) => _formatString(arg, FG_GREEN, true);
  /** Returns string [arg] with dark green text */
String DK_GREEN(String arg) => _formatString(arg, FG_GREEN, false);
  
  /** Returns string [arg] with light (or bold) yellow text */
String LT_YELLOW(String arg) => _formatString(arg, FG_YELLOW, true);
  /** Returns string [arg] with dark yellow text */
String DK_YELLOW(String arg) => _formatString(arg, FG_YELLOW, false);
  
  /** Returns string [arg] with light (or bold) blue text */
String LT_BLUE(String arg) => _formatString(arg, FG_BLUE, true);
  /** Returns string [arg] with dark blue text */
String DK_BLUE(String arg) => _formatString(arg, FG_BLUE, false);
  
  /** Returns string [arg] with light (or bold) magenta text */
String LT_MAGENTA(String arg) => _formatString(arg, FG_MAGENTA, true);
  /** Returns string [arg] with dark magenta text */
String DK_MAGENTA(String arg) => _formatString(arg, FG_MAGENTA, false);
  
  /** Returns string [arg] with light (or bold) cyan text */
String LT_CYAN(String arg) => _formatString(arg, FG_CYAN, true);
  /** Returns string [arg] with dark cyan (teal) text */
String DK_CYAN(String arg) => _formatString(arg, FG_CYAN, false);
  
  /** Returns string [arg] with light (or bold) white text */
String LT_WHITE(String arg) => _formatString(arg, FG_WHITE, true);
  /** Returns string [arg] with dark white (light gray) text */
String DK_WHITE(String arg) => _formatString(arg, FG_WHITE, false);
  
  /** Returns string [arg] with light (or bold) black (dark grey) text */
String LT_BLACK(String arg) => _formatString(arg, FG_BLACK, true);
  /** Returns string [arg] with dark black text */
String DK_BLACK(String arg) => _formatString(arg, FG_BLACK, false);
