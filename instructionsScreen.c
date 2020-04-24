
//{{BLOCK(instructionsScreen)

//======================================================================
//
//	instructionsScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 196 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 6272 + 2048 = 8832
//
//	Time-stamp: 2020-04-23, 23:52:03
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

const unsigned short instructionsScreenTiles[3136] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x1133,0x1111,0x1133,0x1111,0x1133,0x1111,
	0x1133,0x1111,0x3333,0x1133,0x3333,0x1133,0x3333,0x1133,
	0x3333,0x3333,0x1111,0x3333,0x1111,0x3331,0x1111,0x3331,
	0x1111,0x3311,0x1111,0x3111,0x1111,0x3111,0x1111,0x1111,

	0x3333,0x3333,0x3333,0x1111,0x3333,0x1111,0x3333,0x1111,
	0x3333,0x1111,0x3333,0x1111,0x3333,0x1111,0x3333,0x1111,
	0x3333,0x3333,0x1133,0x1111,0x1133,0x1111,0x1133,0x1111,
	0x1133,0x1111,0x1133,0x3311,0x1133,0x3311,0x1133,0x3311,
	0x3333,0x3333,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x3333,0x1111,0x3333,0x1111,0x3333,

	0x3333,0x3333,0x1111,0x3111,0x1111,0x3111,0x1111,0x3111,
	0x1111,0x3111,0x1333,0x3111,0x1333,0x3111,0x1333,0x3111,
	0x3333,0x3333,0x1113,0x3331,0x1113,0x3331,0x1113,0x3331,
	0x1113,0x3331,0x1113,0x3331,0x1113,0x3331,0x1113,0x3331,
	0x3333,0x1133,0x3333,0x1133,0x3333,0x1133,0x3333,0x1133,
	0x3333,0x1133,0x3333,0x1133,0x3333,0x1133,0x3333,0x1133,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1113,
	0x1111,0x1113,0x1111,0x1133,0x1111,0x1133,0x1111,0x1333,

	0x3333,0x1111,0x3331,0x1111,0x3331,0x1111,0x3311,0x1111,
	0x3311,0x1111,0x3111,0x1111,0x3111,0x1111,0x1111,0x1111,
	0x1133,0x3311,0x1133,0x3311,0x1133,0x1111,0x1133,0x1111,
	0x1133,0x1111,0x1133,0x1111,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x3333,0x1111,0x3333,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,

	0x1111,0x3111,0x1111,0x3111,0x1111,0x3111,0x1111,0x3111,
	0x3333,0x3333,0x3331,0x3333,0x3311,0x3333,0x3111,0x3333,
	0x1113,0x3331,0x1113,0x3331,0x1113,0x3331,0x1113,0x3331,
	0x1113,0x3331,0x1113,0x3331,0x1113,0x3331,0x1113,0x3331,
	0x3333,0x1111,0x3333,0x1111,0x3333,0x1111,0x3333,0x1111,
	0x3333,0x1111,0x3333,0x1111,0x3333,0x1111,0x3333,0x1111,
	0x1133,0x3311,0x1133,0x3311,0x1133,0x3311,0x1133,0x3311,
	0x1133,0x3311,0x1133,0x3311,0x1133,0x3311,0x1133,0x3311,

	0x1111,0x1333,0x1111,0x3333,0x1111,0x3333,0x1111,0x3333,
	0x1111,0x3333,0x1111,0x3333,0x1111,0x3333,0x3333,0x3333,
	0x1111,0x1111,0x1111,0x1111,0x1113,0x1111,0x1113,0x1111,
	0x1133,0x1111,0x1333,0x1111,0x3333,0x1111,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x1133,0x1111,
	0x1133,0x1111,0x1133,0x1111,0x1133,0x1111,0x3333,0x3333,
	0x3333,0x1133,0x3333,0x1133,0x3333,0x1133,0x3333,0x1133,
	0x3333,0x1133,0x3333,0x1133,0x3333,0x1133,0x3333,0x3333,

	0x1111,0x1113,0x1111,0x1133,0x1111,0x1333,0x1111,0x3333,
	0x1111,0x3333,0x1111,0x3333,0x1111,0x3333,0x3333,0x3333,
	0x1111,0x3333,0x1111,0x3331,0x1111,0x3311,0x1111,0x3111,
	0x1113,0x3111,0x1133,0x3111,0x1333,0x3111,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x2333,0x3333,0x2333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3222,0x3333,0x3211,0x3333,

	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x2222,0x3333,0x2112,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x2333,0x2222,0x2333,0x1111,0x2333,0x1111,0x2333,0x2211,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x2222,0x2332,0x1111,0x2332,0x1111,0x2332,0x2222,0x2332,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x2222,0x2222,0x1111,0x1111,0x1111,0x1111,0x2222,0x2211,

	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3222,0x2223,0x3211,0x1123,0x3211,0x1123,0x3222,0x1123,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x2222,0x2222,0x1111,0x1111,0x1111,0x1111,0x2222,0x1122,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x2332,0x2222,0x2332,0x1111,0x2332,0x1111,0x2332,0x2211,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x2222,0x3222,0x1111,0x3211,0x1111,0x3211,0x2222,0x3211,

	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x2223,0x2222,0x1123,0x1111,0x1123,0x1111,0x2223,0x1122,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x2222,0x3332,0x1111,0x3332,0x1111,0x3332,0x2222,0x3332,
	0x3333,0x3333,0x2333,0x2222,0x2333,0x2222,0x2333,0x1112,
	0x2333,0x1112,0x2333,0x1112,0x2333,0x2222,0x2333,0x2222,
	0x3333,0x3333,0x2222,0x2222,0x2222,0x2222,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x2222,0x2222,0x2222,0x2222,

	0x3333,0x3333,0x2222,0x2222,0x2222,0x2222,0x1111,0x2211,
	0x1111,0x2211,0x1111,0x2211,0x1222,0x2211,0x1222,0x2211,
	0x2223,0x3222,0x2223,0x3222,0x1223,0x3221,0x1223,0x3221,
	0x1223,0x3221,0x1223,0x3221,0x1223,0x3221,0x1223,0x3221,
	0x3333,0x2223,0x3333,0x1123,0x3333,0x1122,0x3333,0x2112,
	0x2333,0x2112,0x2333,0x2211,0x2233,0x3211,0x1233,0x3221,
	0x2211,0x3332,0x1111,0x3332,0x1122,0x3322,0x1222,0x3321,
	0x1233,0x3221,0x2233,0x3211,0x2333,0x2211,0x2333,0x2112,

	0x3333,0x2112,0x3333,0x2112,0x3333,0x1122,0x3333,0x1123,
	0x3333,0x1123,0x3333,0x1223,0x3333,0x1233,0x3333,0x2233,
	0x3333,0x3333,0x3332,0x2333,0x3332,0x2333,0x3332,0x2333,
	0x3322,0x2233,0x3321,0x1233,0x3221,0x1223,0x3211,0x1123,
	0x2333,0x3211,0x2333,0x3211,0x2333,0x3211,0x2333,0x2211,
	0x2333,0x1111,0x2333,0x1111,0x2333,0x2222,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x2222,0x3332,
	0x1111,0x3332,0x1111,0x3332,0x1122,0x3332,0x1123,0x3332,

	0x2333,0x3211,0x2333,0x3211,0x2333,0x3211,0x2333,0x3211,
	0x2333,0x3211,0x2333,0x3211,0x2333,0x3211,0x2333,0x3211,
	0x3333,0x1123,0x3333,0x1123,0x3333,0x1123,0x3333,0x1123,
	0x3333,0x1123,0x3333,0x1123,0x3333,0x1123,0x3333,0x1123,
	0x3332,0x1123,0x3332,0x1123,0x3332,0x1123,0x3332,0x1123,
	0x2222,0x1122,0x1111,0x1111,0x1111,0x1111,0x2222,0x1122,
	0x2332,0x3211,0x2332,0x3211,0x2332,0x3211,0x2332,0x3211,
	0x2332,0x2211,0x2332,0x1111,0x2332,0x1111,0x2332,0x1211,

	0x2333,0x3211,0x2333,0x3211,0x2333,0x3211,0x2333,0x3211,
	0x2222,0x3211,0x1111,0x3211,0x1111,0x3211,0x2211,0x3222,
	0x3332,0x3333,0x3332,0x3333,0x3332,0x3333,0x3332,0x3333,
	0x3332,0x3333,0x3332,0x3333,0x3332,0x3333,0x3332,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x2333,0x2222,
	0x2333,0x2222,0x2333,0x1112,0x2333,0x1112,0x2333,0x1112,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x2222,0x2222,
	0x2222,0x2222,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,

	0x1223,0x2211,0x1223,0x2211,0x1223,0x2211,0x1222,0x2211,
	0x1222,0x2211,0x1111,0x2211,0x1111,0x2211,0x1111,0x2211,
	0x1223,0x3221,0x1223,0x3221,0x1223,0x2221,0x1223,0x2221,
	0x1223,0x1111,0x1223,0x1111,0x1223,0x1111,0x1223,0x2111,
	0x3333,0x3333,0x3333,0x3333,0x2222,0x2222,0x2222,0x2222,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x2222,0x2222,
	0x3333,0x3333,0x3333,0x3333,0x2222,0x2222,0x2222,0x2222,
	0x1111,0x2211,0x1111,0x2211,0x1111,0x2211,0x1222,0x2211,

	0x1233,0x3321,0x1223,0x3321,0x1123,0x3322,0x1123,0x3332,
	0x1123,0x3332,0x2223,0x3332,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x2112,0x3333,0x2112,0x3333,0x1122,0x3333,0x1123,
	0x3333,0x1123,0x3333,0x2223,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x2333,0x3332,0x2333,0x3332,0x3333,0x3332,0x3333,
	0x3332,0x3333,0x3332,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x2211,0x1122,0x2112,0x2112,0x1112,0x2111,0x1222,0x2221,
	0x1233,0x3321,0x2233,0x3322,0x3333,0x3333,0x3333,0x3333,

	0x3333,0x3333,0x3333,0x3333,0x2333,0x2222,0x2333,0x1111,
	0x2333,0x1111,0x2333,0x2222,0x3333,0x3333,0x3333,0x3333,
	0x1123,0x3332,0x1123,0x3332,0x1122,0x3332,0x1111,0x3332,
	0x1111,0x3332,0x2222,0x3332,0x3333,0x3333,0x3333,0x3333,
	0x2333,0x3211,0x2333,0x3211,0x2333,0x3211,0x2333,0x3211,
	0x2333,0x3211,0x2333,0x3222,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x1123,0x3333,0x1123,0x3333,0x1123,0x3333,0x1123,
	0x3333,0x1123,0x3333,0x2223,0x3333,0x3333,0x3333,0x3333,

	0x3332,0x1123,0x3332,0x1123,0x3332,0x1123,0x3332,0x1123,
	0x3332,0x1123,0x3332,0x2223,0x3333,0x3333,0x3333,0x3333,
	0x2332,0x2211,0x2332,0x2211,0x2332,0x3211,0x2332,0x3211,
	0x2332,0x3211,0x2332,0x3222,0x3333,0x3333,0x3333,0x3333,
	0x2111,0x3333,0x1112,0x3322,0x1122,0x3221,0x1223,0x3211,
	0x2233,0x3211,0x2333,0x3222,0x3333,0x3333,0x3333,0x3333,
	0x3332,0x3333,0x3332,0x3333,0x3332,0x3333,0x3332,0x3333,
	0x3332,0x3333,0x3332,0x3333,0x3333,0x3333,0x3333,0x3333,

	0x2333,0x1112,0x2333,0x1112,0x2333,0x1112,0x2333,0x1112,
	0x2333,0x1112,0x2333,0x1112,0x2333,0x1112,0x2333,0x1112,
	0x2222,0x2222,0x2222,0x2222,0x3322,0x3333,0x3322,0x3333,
	0x2222,0x2222,0x2222,0x2222,0x1111,0x1111,0x1111,0x1111,
	0x1222,0x2211,0x1222,0x2211,0x1223,0x2211,0x1223,0x2211,
	0x1222,0x2211,0x1222,0x2211,0x1111,0x2211,0x1111,0x2211,
	0x1223,0x2111,0x1223,0x2111,0x1223,0x2111,0x1223,0x2111,
	0x1223,0x2111,0x1223,0x2111,0x1223,0x2111,0x1223,0x1111,

	0x2222,0x2222,0x3332,0x3333,0x3332,0x3333,0x3332,0x3333,
	0x3332,0x3333,0x2222,0x2222,0x2222,0x2222,0x1111,0x1111,
	0x1222,0x2211,0x1223,0x2211,0x1223,0x2211,0x1223,0x2211,
	0x1223,0x2211,0x1222,0x2211,0x1222,0x2211,0x1111,0x2211,
	0x2223,0x3322,0x1123,0x2221,0x1123,0x1111,0x2223,0x1112,
	0x3333,0x2222,0x3333,0x2333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3332,0x3333,0x3222,0x3333,0x2211,0x3332,
	0x1111,0x3222,0x1122,0x3211,0x2223,0x2211,0x2333,0x1112,

	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x2333,
	0x3333,0x2223,0x3333,0x1123,0x2332,0x1122,0x2332,0x2111,
	0x3333,0x2233,0x2333,0x1222,0x2223,0x1111,0x1122,0x2111,
	0x1111,0x2222,0x2211,0x3332,0x3222,0x3333,0x3332,0x3333,
	0x3222,0x3333,0x3211,0x3333,0x3211,0x3333,0x3222,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x2333,0x1112,0x2333,0x2222,0x2333,0x2222,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,

	0x1111,0x1111,0x2222,0x2222,0x2222,0x2222,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x1111,0x2211,0x2222,0x2222,0x2222,0x2222,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x1223,0x1111,0x1223,0x1111,0x2223,0x2222,0x2223,0x2222,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x1111,0x1111,0x1111,0x1111,0x2222,0x2222,0x2222,0x2222,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,

	0x1111,0x2211,0x1111,0x2211,0x2222,0x2222,0x2222,0x2222,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x2233,0x2222,
	0x2233,0x2222,0x2233,0x2333,0x2233,0x2222,0x2233,0x2222,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x2332,0x2222,
	0x2332,0x2222,0x2332,0x3332,0x2332,0x2222,0x2332,0x2222,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3322,0x3322,
	0x3322,0x3322,0x3322,0x3322,0x3322,0x3322,0x3322,0x3322,

	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3322,0x2222,
	0x3322,0x2222,0x3322,0x3322,0x3322,0x2222,0x3322,0x2222,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3322,0x2222,
	0x3322,0x2222,0x3333,0x3322,0x3322,0x2222,0x3322,0x2222,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3322,0x3333,
	0x3322,0x3333,0x3333,0x3333,0x3332,0x3333,0x3332,0x3333,
	0x3322,0x2233,0x2222,0x2233,0x2232,0x2233,0x2332,0x2232,
	0x2332,0x2232,0x2232,0x2233,0x2222,0x2233,0x3222,0x2233,

	0x3222,0x3223,0x3222,0x3223,0x3333,0x3223,0x3322,0x3223,
	0x3322,0x3223,0x3333,0x3223,0x3222,0x2223,0x3222,0x2223,
	0x3333,0x3322,0x3333,0x3322,0x3333,0x3322,0x3333,0x3322,
	0x3333,0x3322,0x3333,0x3322,0x3222,0x3322,0x3222,0x3322,
	0x3322,0x2233,0x3322,0x2233,0x3223,0x3223,0x3223,0x3223,
	0x2233,0x3322,0x2233,0x3322,0x2333,0x3332,0x2333,0x3332,
	0x2233,0x3222,0x2233,0x3222,0x2233,0x3333,0x2233,0x3322,
	0x2233,0x3322,0x2233,0x3333,0x2233,0x3222,0x2233,0x3222,

	0x2223,0x3222,0x2223,0x3222,0x3223,0x3223,0x2223,0x3222,
	0x2223,0x3222,0x2223,0x3332,0x2223,0x3222,0x3223,0x3223,
	0x3333,0x2233,0x3333,0x2233,0x3333,0x2233,0x3333,0x2233,
	0x3333,0x2233,0x3333,0x2233,0x3333,0x2233,0x3333,0x2233,
	0x3332,0x2223,0x3222,0x2223,0x3223,0x3223,0x2233,0x2223,
	0x2233,0x2223,0x3223,0x3223,0x3222,0x2223,0x3322,0x2223,
	0x3322,0x3322,0x3322,0x3322,0x3333,0x3322,0x3332,0x3322,
	0x3332,0x3322,0x3333,0x3322,0x3322,0x2222,0x3322,0x2222,

	0x2333,0x2332,0x2333,0x2332,0x2333,0x3332,0x2333,0x3332,
	0x2333,0x3332,0x2333,0x3332,0x2322,0x3332,0x2322,0x3332,
	0x3332,0x3223,0x3332,0x3223,0x3322,0x3322,0x3322,0x3322,
	0x2223,0x3332,0x2223,0x3332,0x2233,0x3333,0x2233,0x3333,
	0x2223,0x3322,0x2223,0x3322,0x3223,0x3333,0x2223,0x3332,
	0x2223,0x3332,0x3223,0x3333,0x2223,0x3322,0x2223,0x3322,
	0x2222,0x3322,0x2222,0x3322,0x3322,0x3322,0x2222,0x3322,
	0x2222,0x3322,0x2222,0x3333,0x2222,0x3322,0x3322,0x3322,

	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3223,0x2333,0x2223,0x2233,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x2332,0x2222,0x2332,0x2222,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x2332,0x3332,0x2332,0x3332,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3223,0x2222,0x3223,0x2222,

	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3322,0x3333,0x3322,0x3333,
	0x2233,0x3333,0x2233,0x3333,0x2233,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x2333,0x3332,0x2333,0x3332,0x2333,0x3332,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3322,0x3322,0x3322,0x2222,0x3322,0x2222,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,

	0x3322,0x3333,0x3322,0x2222,0x3322,0x2222,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3322,0x3333,0x3322,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3223,0x3333,0x3223,0x3333,0x3223,0x3333,
	0x3223,0x3333,0x3223,0x3333,0x3223,0x3333,0x2223,0x3222,
	0x3333,0x3333,0x2223,0x3222,0x2223,0x3222,0x3223,0x3333,
	0x2223,0x3332,0x2223,0x3332,0x3223,0x3333,0x2223,0x3222,

	0x3333,0x3333,0x2223,0x2222,0x2223,0x2222,0x3223,0x2233,
	0x2223,0x2222,0x2223,0x2222,0x3223,0x2233,0x3223,0x2233,
	0x3333,0x3333,0x2233,0x2222,0x2233,0x2222,0x2233,0x3333,
	0x2233,0x3222,0x2233,0x3222,0x2233,0x3333,0x2233,0x3333,
	0x3333,0x3333,0x3333,0x2233,0x3333,0x2233,0x3333,0x2233,
	0x3333,0x2233,0x3333,0x2233,0x3333,0x3333,0x3333,0x2233,
	0x3333,0x3333,0x2222,0x2233,0x2222,0x2233,0x3333,0x3333,
	0x2222,0x3333,0x2222,0x3333,0x2233,0x3333,0x2222,0x3333,

	0x3333,0x3333,0x2222,0x2233,0x2222,0x2233,0x3322,0x2233,
	0x3322,0x2233,0x3322,0x2233,0x3322,0x2233,0x3322,0x2233,
	0x3333,0x3333,0x2222,0x2233,0x2222,0x2233,0x3333,0x2233,
	0x3222,0x2233,0x3222,0x2233,0x3333,0x2233,0x2222,0x2233,
	0x3333,0x3333,0x2332,0x3322,0x2222,0x3322,0x3222,0x3322,
	0x3223,0x3322,0x3333,0x3322,0x3333,0x3322,0x3333,0x3322,
	0x2223,0x2222,0x3223,0x2322,0x3223,0x2333,0x3223,0x2333,
	0x3223,0x2333,0x3223,0x2333,0x3333,0x3333,0x3333,0x3333,

	0x2332,0x2332,0x2332,0x2332,0x2332,0x2332,0x2332,0x2332,
	0x2332,0x2222,0x2332,0x2222,0x3333,0x3333,0x3333,0x3333,
	0x3332,0x3322,0x3332,0x3322,0x3332,0x2223,0x3332,0x2223,
	0x3332,0x2233,0x3332,0x2233,0x3333,0x3333,0x3333,0x3333,
	0x3322,0x3322,0x3322,0x2222,0x3332,0x2222,0x3332,0x3322,
	0x3333,0x2222,0x3333,0x2222,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3332,0x3333,0x3332,0x3333,0x3333,0x3333,
	0x3322,0x3333,0x3322,0x3333,0x3333,0x3333,0x3333,0x3333,

	0x2223,0x3222,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3223,0x2233,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x2233,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x2233,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,

	0x2222,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3322,0x2233,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x2222,0x2233,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x2222,0x3333,0x2112,0x3333,0x2112,0x3333,0x2112,0x3333,
	0x2112,0x3333,0x2112,0x3333,0x2112,0x2222,0x1112,0x1111,

	0x2233,0x3322,0x1233,0x3321,0x1233,0x3321,0x1233,0x3321,
	0x1233,0x3321,0x1233,0x3321,0x1222,0x3321,0x1111,0x3321,
	0x2233,0x2222,0x1233,0x1111,0x1233,0x1111,0x1233,0x2221,
	0x1233,0x3321,0x1233,0x3321,0x1233,0x3321,0x1233,0x3321,
	0x2222,0x3333,0x2112,0x3333,0x2112,0x3333,0x2112,0x3333,
	0x2112,0x3333,0x2112,0x2233,0x2112,0x1233,0x2112,0x1233,
	0x2333,0x2222,0x2333,0x1111,0x2333,0x1111,0x2333,0x1222,
	0x3333,0x1233,0x3333,0x1233,0x3333,0x1233,0x3333,0x1233,

	0x2222,0x2222,0x1112,0x1111,0x1112,0x1111,0x2112,0x2222,
	0x2112,0x3333,0x2112,0x3333,0x2112,0x3333,0x2112,0x3333,
	0x2222,0x3333,0x2111,0x3333,0x2111,0x3333,0x2112,0x3333,
	0x2112,0x3333,0x2112,0x3333,0x2112,0x3333,0x2112,0x3333,
	0x3333,0x2222,0x3333,0x1112,0x3333,0x1112,0x3333,0x1222,
	0x3333,0x1233,0x3333,0x1233,0x3333,0x1233,0x3333,0x1233,
	0x2222,0x3333,0x2112,0x3322,0x1112,0x3321,0x1112,0x3221,
	0x2112,0x3211,0x2112,0x2211,0x2112,0x2111,0x2112,0x1112,

	0x2223,0x3332,0x1123,0x3332,0x1123,0x3332,0x1123,0x3332,
	0x1123,0x3332,0x1123,0x3332,0x1122,0x3332,0x1122,0x3332,
	0x2112,0x1233,0x2112,0x1233,0x2112,0x1233,0x2112,0x1233,
	0x2112,0x1222,0x1112,0x1111,0x1112,0x1111,0x2222,0x2222,
	0x3333,0x1233,0x3333,0x1233,0x3333,0x1233,0x3333,0x1233,
	0x3333,0x1233,0x3333,0x1233,0x3333,0x1233,0x3333,0x2233,
	0x2112,0x1122,0x2112,0x1223,0x2112,0x1233,0x2112,0x2233,
	0x2112,0x2333,0x2112,0x2333,0x2112,0x3333,0x2222,0x3333,

	0x1122,0x3332,0x1121,0x3332,0x1121,0x3332,0x1111,0x3332,
	0x1111,0x3332,0x1122,0x3332,0x1123,0x3332,0x2223,0x3332,
	0x3333,0x3222,0x3333,0x2222,0x3333,0x2322,0x3333,0x3322,
	0x3333,0x3322,0x3333,0x2322,0x3333,0x2222,0x3333,0x2222,
	0x2333,0x2222,0x2332,0x2222,0x2332,0x3332,0x2322,0x3222,
	0x2322,0x3222,0x2332,0x3332,0x2332,0x2222,0x2333,0x2222,
	0x2233,0x3333,0x2233,0x3333,0x2233,0x3333,0x2233,0x3333,
	0x2233,0x3333,0x2233,0x3333,0x2233,0x2222,0x2233,0x2222,

	0x3223,0x3223,0x3223,0x3223,0x3223,0x2233,0x3223,0x2233,
	0x3223,0x2333,0x3223,0x2333,0x3223,0x3333,0x3223,0x3333,
	0x2333,0x2332,0x2333,0x2332,0x2233,0x2333,0x2233,0x2333,
	0x3222,0x2333,0x3222,0x2333,0x3322,0x2333,0x3322,0x2333,
	0x2222,0x2233,0x2222,0x2233,0x3332,0x2233,0x3222,0x2233,
	0x3222,0x2233,0x3332,0x2233,0x2222,0x2233,0x2222,0x2233,
	0x2222,0x3333,0x2222,0x3333,0x2233,0x3333,0x2222,0x3333,
	0x2222,0x3333,0x3322,0x3333,0x2222,0x3333,0x2233,0x3333,

	0x3333,0x2222,0x3333,0x2222,0x3333,0x3322,0x3333,0x3322,
	0x3333,0x2222,0x3333,0x2222,0x3333,0x3322,0x3333,0x3322,
	0x3222,0x2223,0x3222,0x2223,0x3333,0x2333,0x3333,0x2333,
	0x3332,0x2333,0x3332,0x2333,0x3333,0x2223,0x3333,0x2223,
	0x3222,0x3322,0x3222,0x3322,0x3332,0x3223,0x3332,0x3223,
	0x3332,0x2233,0x3332,0x2233,0x3222,0x2333,0x3222,0x2333,
	0x2233,0x2233,0x2233,0x2233,0x3223,0x2233,0x3223,0x2233,
	0x3322,0x2233,0x3322,0x2233,0x3332,0x2233,0x3332,0x2233,

	0x2222,0x3333,0x2222,0x3333,0x3333,0x3333,0x3322,0x3333,
	0x3322,0x3333,0x3333,0x3333,0x2222,0x3333,0x2222,0x3333,
	0x3333,0x2222,0x3333,0x2222,0x3333,0x3322,0x3333,0x2222,
	0x3333,0x2222,0x3333,0x3333,0x3333,0x2222,0x3333,0x2222,
	0x3222,0x2223,0x3222,0x2223,0x3333,0x2333,0x3222,0x2333,
	0x3222,0x2333,0x3223,0x2333,0x3222,0x2333,0x3222,0x2333,
	0x3222,0x2223,0x3222,0x2223,0x3332,0x3223,0x3332,0x2223,
	0x3332,0x2223,0x3332,0x3223,0x3332,0x2223,0x3332,0x2223,

	0x3222,0x3322,0x3222,0x3222,0x3333,0x2222,0x3322,0x2322,
	0x3322,0x3322,0x3333,0x3322,0x3222,0x3322,0x3222,0x3322,
	0x2233,0x2223,0x2223,0x2223,0x2222,0x3223,0x2232,0x2223,
	0x2233,0x2223,0x2233,0x3333,0x2233,0x2223,0x2233,0x2223,
	0x3222,0x3333,0x3222,0x3333,0x3333,0x3333,0x3222,0x3333,
	0x3222,0x3333,0x3223,0x3333,0x3222,0x3333,0x3222,0x3333,
	0x3333,0x2222,0x3333,0x2222,0x3333,0x3322,0x3333,0x3322,
	0x3333,0x3322,0x3333,0x3322,0x3333,0x2222,0x3333,0x2222,

	0x3322,0x2222,0x3322,0x2222,0x3322,0x3322,0x3322,0x2222,
	0x3322,0x2222,0x3322,0x2222,0x3322,0x2222,0x3322,0x3322,
	0x3322,0x3333,0x3322,0x3333,0x3322,0x3333,0x3322,0x3333,
	0x3322,0x3333,0x3333,0x3333,0x3322,0x3333,0x3322,0x3333,
	0x3333,0x3322,0x3333,0x3322,0x3333,0x3322,0x3333,0x3322,
	0x3333,0x3322,0x3333,0x3322,0x3333,0x2222,0x3333,0x2222,
	0x3333,0x2222,0x3333,0x2222,0x3333,0x3322,0x3333,0x2222,
	0x3333,0x2222,0x3333,0x3322,0x3322,0x2222,0x3322,0x2222,

	0x3322,0x2222,0x3322,0x2222,0x3333,0x3322,0x3333,0x2222,
	0x3333,0x2222,0x3333,0x3322,0x3322,0x3322,0x3322,0x3322,
	0x3222,0x3322,0x3222,0x3322,0x3223,0x3223,0x3222,0x3223,
	0x3222,0x2233,0x3223,0x2233,0x3223,0x2333,0x3223,0x2333,
	0x2233,0x2223,0x2233,0x2223,0x3223,0x3223,0x3223,0x2223,
	0x3322,0x2223,0x3322,0x3223,0x3332,0x2223,0x3332,0x2223,
	0x3222,0x2223,0x3222,0x2223,0x3333,0x3223,0x3322,0x2223,
	0x3322,0x2223,0x3333,0x3333,0x3222,0x2223,0x3222,0x2223,

	0x3333,0x2222,0x3333,0x2222,0x3333,0x2233,0x3333,0x2233,
	0x3333,0x2233,0x3333,0x2233,0x3333,0x2233,0x3333,0x2233,
	0x3322,0x2223,0x3322,0x2223,0x3333,0x3223,0x3333,0x3223,
	0x3333,0x3223,0x3333,0x3223,0x3333,0x2223,0x3333,0x2223,
	0x3222,0x3333,0x3222,0x3333,0x3223,0x3333,0x3223,0x3333,
	0x3223,0x3333,0x3223,0x3333,0x3222,0x3333,0x3222,0x3333,
	0x2233,0x2222,0x2233,0x2222,0x2233,0x2333,0x2233,0x2222,
	0x2233,0x2222,0x2233,0x2333,0x2233,0x2333,0x2233,0x2333,

	0x3332,0x3322,0x3332,0x3322,0x3332,0x3322,0x3332,0x3322,
	0x3332,0x3322,0x3332,0x3322,0x3332,0x2222,0x3332,0x2222,
	0x3333,0x3223,0x3333,0x3223,0x3333,0x3223,0x3333,0x3223,
	0x3333,0x3223,0x3333,0x3223,0x3322,0x2223,0x3322,0x2223,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3222,0x3333,0x3222,0x3333,
	0x2233,0x2222,0x2233,0x2222,0x3333,0x3322,0x3333,0x3322,
	0x3333,0x3322,0x3333,0x3322,0x3333,0x3322,0x3333,0x3322,

	0x2233,0x2233,0x2233,0x2233,0x2233,0x2233,0x2233,0x2222,
	0x2233,0x2222,0x2233,0x2233,0x2233,0x2233,0x2233,0x2233,
	0x2233,0x2222,0x2233,0x2222,0x2233,0x2233,0x2233,0x2222,
	0x2233,0x2222,0x2233,0x3322,0x2233,0x2222,0x2233,0x2233,
	0x2233,0x2222,0x2233,0x2222,0x2233,0x3333,0x2233,0x3222,
	0x2233,0x3222,0x2233,0x3333,0x2233,0x2222,0x2233,0x2222,
	0x2233,0x2222,0x2233,0x2222,0x2233,0x2233,0x2233,0x2222,
	0x2233,0x2222,0x2233,0x3333,0x2233,0x3333,0x2233,0x3333,

	0x2332,0x2332,0x2332,0x2322,0x2332,0x2322,0x2332,0x2222,
	0x2332,0x2222,0x2332,0x2222,0x2332,0x2232,0x2332,0x2332,
	0x2232,0x3332,0x2232,0x3222,0x2232,0x3223,0x2232,0x2233,
	0x2232,0x2233,0x2232,0x3223,0x2232,0x3222,0x2232,0x3322,
	0x2332,0x2222,0x2332,0x2222,0x2332,0x3332,0x2332,0x2222,
	0x2332,0x2222,0x3332,0x2333,0x2332,0x2222,0x2332,0x2222,
	0x3332,0x3333,0x3332,0x3333,0x3333,0x3333,0x3332,0x3333,
	0x3332,0x3333,0x3332,0x3333,0x3332,0x3333,0x3332,0x3333,
};

const unsigned short instructionsScreenMap[1024] __attribute__((aligned(4)))=
{
	0x0001,0x0001,0x0001,0x0002,0x0402,0x0003,0x0004,0x0005,
	0x0006,0x0002,0x0402,0x0007,0x0008,0x0009,0x0004,0x0005,
	0x0006,0x0002,0x0402,0x0002,0x0402,0x0007,0x0405,0x0003,
	0x0004,0x0005,0x0006,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x000A,0x040A,0x000B,0x000C,0x000D,
	0x000E,0x000A,0x040A,0x000F,0x0010,0x0011,0x0012,0x0013,
	0x0001,0x000A,0x040A,0x000A,0x040A,0x0412,0x0013,0x000B,
	0x000C,0x000D,0x000E,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0802,0x0C02,0x0014,0x0015,0x0016,
	0x0C07,0x0017,0x0417,0x0018,0x0019,0x0C08,0x0C07,0x0805,
	0x0806,0x0017,0x0417,0x0802,0x0C02,0x0807,0x0C05,0x0014,
	0x0015,0x0016,0x0C07,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x001A,0x001B,0x001C,0x0001,0x041C,0x0000,0x0000,

	0x001D,0x001E,0x001F,0x0020,0x0021,0x0022,0x0023,0x0024,
	0x0025,0x0001,0x0026,0x0027,0x0028,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0029,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x002A,0x002B,0x002C,0x002D,0x042C,0x0000,0x0000,
	0x002E,0x002F,0x0030,0x0031,0x0032,0x0033,0x0034,0x0031,
	0x0035,0x0001,0x0036,0x0037,0x0038,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0039,0x003A,0x003B,0x0001,0x0001,0x0001,
	0x0001,0x003C,0x003D,0x003E,0x003F,0x0C1A,0x0000,0x0000,

	0x0040,0x0041,0x0042,0x0043,0x0044,0x0045,0x0046,0x0043,
	0x0047,0x0001,0x0048,0x0049,0x004A,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x004B,0x004C,0x004D,0x0001,0x0001,0x0001,
	0x0001,0x004E,0x004F,0x0050,0x0051,0x0052,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0053,0x0054,0x0055,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0056,0x0057,0x0058,0x0001,0x0001,0x0001,
	0x0001,0x084E,0x084F,0x0850,0x0851,0x0852,0x0000,0x0000,

	0x0001,0x0059,0x005A,0x005B,0x005C,0x005D,0x005E,0x0001,
	0x0435,0x005F,0x0060,0x0061,0x0062,0x0063,0x0064,0x0001,
	0x0065,0x0066,0x0067,0x0068,0x0069,0x006A,0x006B,0x0001,
	0x0001,0x006C,0x006D,0x006E,0x006F,0x0070,0x0000,0x0000,
	0x0001,0x0071,0x0072,0x0073,0x0074,0x0073,0x0075,0x0001,
	0x0001,0x0001,0x0076,0x0077,0x0078,0x0079,0x0001,0x0001,
	0x0001,0x007A,0x007B,0x007C,0x007D,0x007E,0x0001,0x0001,
	0x0001,0x007F,0x0080,0x0081,0x0082,0x0083,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0084,0x0084,0x0085,0x0086,0x0001,0x0001,
	0x0001,0x0087,0x0088,0x0089,0x008A,0x0486,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x008B,0x008C,
	0x008D,0x048D,0x008E,0x048E,0x0001,0x008F,0x048F,0x0090,
	0x0091,0x0001,0x008E,0x048E,0x0092,0x0492,0x0093,0x0094,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x088B,0x088C,
	0x088D,0x0C8D,0x0095,0x0495,0x0001,0x0096,0x0496,0x0890,
	0x0891,0x0001,0x0095,0x0495,0x0892,0x0C92,0x0097,0x0098,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0099,0x009A,0x009B,0x009C,0x009D,0x009E,0x009F,
	0x00A0,0x00A1,0x00A2,0x00A3,0x00A4,0x00A5,0x00A6,0x00A7,
	0x00A8,0x00A9,0x00AA,0x00AB,0x00AC,0x00AD,0x00AE,0x00AF,
	0x00B0,0x00B1,0x00B2,0x00B3,0x00AA,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x00B4,0x00B5,0x00B6,0x00B7,
	0x00B8,0x00B9,0x00BA,0x00BB,0x00BC,0x00BD,0x00BE,0x00BE,
	0x0001,0x00BF,0x00B7,0x00C0,0x00C1,0x00B7,0x00C2,0x00C3,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

const unsigned short instructionsScreenPal[256] __attribute__((aligned(4)))=
{
	0x7C1F,0x7FFF,0x4188,0x7EF2,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

//}}BLOCK(instructionsScreen)
