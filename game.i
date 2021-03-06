# 1 "game.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "game.c"
# 1 "game.h" 1







    typedef struct {
        int row;
        int col;
        int worldRow;
        int worldCol;
        int rdel;
        int cdel;
        int width;
        int height;
        int aniCounter;
        int aniState;
        int prevAniState;
        int leavesCollected;
        int stemsCollected;
        int leavesDelivered;
        int stemsDelivered;
        int curFrame;
        int numFrames;
    } PANDASPRITE;


    typedef struct {
        int row;
        int col;
        int worldRow;
        int worldCol;
        int rdel;
        int cdel;
        int width;
        int height;
        int aniState;
        int active;
        int isSpecial;
    } SPRITE;


    PANDASPRITE panda;


    SPRITE food[35];



    SPRITE enemies[34];



    SPRITE baskets[3];



    PANDASPRITE pandas[3];



    SPRITE door;


    enum { PANDANEUTRAL, PANDASAD, PANDAHAPPY, STEM, LEAF, BLACKBACKGROUND, PANDAIDLE};
    enum { BASKET = 6, FRIENDLYPANDA};


    extern int hasLost;
    extern int hasWon;


    extern int hOff;
    extern int vOff;
    extern int screenBlock;
    extern int playerHOff;
    extern int totalHOff;


    extern int goToMaze;
    extern int goToChina;


    extern int count;



    void initGame();
    void initPanda();
    void initFood();
    void initEnemies();
    void initBaskets();
    void initPandas();
    void initDoor();


    void updatePanda();
    void updatePanda2();


    void checkFoodCollected();
    void checkFoodDelivered();
    void checkEnemyCollision();


    void drawPanda();
    void drawFood();
    void drawEnemies();
    void drawEnemiesLeft();
    void drawEnemiesRight();
    void drawFoodDelivered();
    void drawFoodCollected();
    void drawBaskets();
    void drawFriendlyPandas();
    void drawDoor();
    void drawPandaScore();
    void drawWordStems();
    void drawWordLeaves();
    void hideBaskets();
    void hidePandas();
    void hideDoor();
    void hideFood();
    void hidePandaScore();
    void hideWordStemsAndLeaves();


    void updateGame();
    void updateGame2();


    void checkCheatActivation();
    void resetAnimationFriendly();
# 2 "game.c" 2
# 1 "myLib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 64 "myLib.h"
extern unsigned short *videoBuffer;
# 85 "myLib.h"
typedef struct {
 u16 tileimg[8192];
} charblock;


typedef struct {
 u16 tilemap[1024];
} screenblock;



void setPixel3(int col, int row, unsigned short color);
void drawRect3(int col, int row, int width, int height, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int col, int row, unsigned char colorIndex);
void drawRect4(int col, int row, int width, int height, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();





typedef struct {
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 157 "myLib.h"
void hideSprites();






typedef struct {
    int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int hide;
} ANISPRITE;
# 200 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 211 "myLib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 251 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 342 "myLib.h"
typedef struct{
    const unsigned char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
    int vBlankCount;
} SOUND;




int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 3 "game.c" 2
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 1 3
# 10 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 11 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 1 3
# 10 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/newlib.h" 1 3
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/newlib.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/newlib.h" 2 3
# 11 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/config.h" 1 3



# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 5 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/config.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 1 3
# 6 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/config.h" 2 3
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 2 3
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3




# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 209 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4

# 209 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 321 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 17 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3

# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 1 3
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 1 3
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 143 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 1 3
# 24 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_types.h" 1 3



# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 5 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_types.h" 2 3


typedef __int64_t _off_t;


typedef __int64_t _fpos_t;


typedef __uint32_t __ino_t;


typedef __uint32_t __dev_t;
# 25 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/lock.h" 1 3




# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 1 3 4
# 9 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 2 3 4
# 6 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/lock.h" 2 3

typedef int32_t _LOCK_T;

struct __lock_t {
 _LOCK_T lock;
 uint32_t thread_tag;
 uint32_t counter;
};

typedef struct __lock_t _LOCK_RECURSIVE_T;

extern void __libc_lock_init(_LOCK_T *lock);
extern void __libc_lock_init_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_close(_LOCK_T *lock);
extern void __libc_lock_close_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_acquire(_LOCK_T *lock);
extern void __libc_lock_acquire_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_release(_LOCK_T *lock);
extern void __libc_lock_release_recursive(_LOCK_RECURSIVE_T *lock);


extern int __libc_lock_try_acquire(_LOCK_T *lock);
extern int __libc_lock_try_acquire_recursive(_LOCK_RECURSIVE_T *lock);
# 26 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3


typedef long __blkcnt_t;



typedef long __blksize_t;



typedef __uint64_t __fsblkcnt_t;



typedef __uint32_t __fsfilcnt_t;
# 50 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef int __pid_t;







typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



typedef __uint32_t __id_t;
# 88 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;
# 129 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef unsigned int __size_t;
# 145 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef signed int _ssize_t;
# 156 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef _ssize_t __ssize_t;


# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 350 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;






typedef unsigned long __clock_t;






typedef __int_least64_t __time_t;





typedef unsigned long __clockid_t;


typedef unsigned long __timer_t;


typedef __uint8_t __sa_family_t;



typedef __uint32_t __socklen_t;


typedef int __nl_item;
typedef unsigned short __nlink_t;
typedef long __suseconds_t;
typedef unsigned long __useconds_t;




typedef char * __va_list;
# 16 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 38 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _reent;

struct __locale_t;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 93 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 117 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 181 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (*_read) (struct _reent *, void *,
        char *, int);
  int (*_write) (struct _reent *, void *,
         const char *,
         int);
  _fpos_t (*_seek) (struct _reent *, void *, _fpos_t, int);
  int (*_close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 287 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 319 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 610 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];


  int _unspecified_locale_info;
  struct __locale_t *_locale;

  int __sdidinit;

  void (*__cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;



  struct _atexit *_atexit;
  struct _atexit _atexit0;



  void (**(_sig_func))(int);




  struct _glue __sglue;

  __FILE __sf[3];

  void *deviceData;
};
# 817 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);





  struct _reent * __getreent (void);
# 19 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h" 1 3
# 47 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h" 3
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 48 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h" 2 3
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/stdlib.h" 1 3
# 21 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 33 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3


typedef struct
{
  int quot;
  int rem;
} div_t;

typedef struct
{
  long quot;
  long rem;
} ldiv_t;


typedef struct
{
  long long int quot;
  long long int rem;
} lldiv_t;




typedef int (*__compar_fn_t) (const void *, const void *);







int __locale_mb_cur_max (void);



void abort (void) __attribute__ ((__noreturn__));
int abs (int);





int atexit (void (*__func)(void));
double atof (const char *__nptr);



int atoi (const char *__nptr);
int _atoi_r (struct _reent *, const char *__nptr);
long atol (const char *__nptr);
long _atol_r (struct _reent *, const char *__nptr);
void * bsearch (const void *__key,
         const void *__base,
         size_t __nmemb,
         size_t __size,
         __compar_fn_t _compar);
void *calloc(size_t, size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__))
      __attribute__((__alloc_size__(1, 2))) ;
div_t div (int __numer, int __denom);
void exit (int __status) __attribute__ ((__noreturn__));
void free (void *) ;
char * getenv (const char *__string);
char * _getenv_r (struct _reent *, const char *__string);
char * _findenv (const char *, int *);
char * _findenv_r (struct _reent *, const char *, int *);




long labs (long);
ldiv_t ldiv (long __numer, long __denom);
void *malloc(size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(1))) ;
int mblen (const char *, size_t);
int _mblen_r (struct _reent *, const char *, size_t, _mbstate_t *);
int mbtowc (wchar_t *restrict, const char *restrict, size_t);
int _mbtowc_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
int wctomb (char *, wchar_t);
int _wctomb_r (struct _reent *, char *, wchar_t, _mbstate_t *);
size_t mbstowcs (wchar_t *restrict, const char *restrict, size_t);
size_t _mbstowcs_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
size_t wcstombs (char *restrict, const wchar_t *restrict, size_t);
size_t _wcstombs_r (struct _reent *, char *restrict, const wchar_t *restrict, size_t, _mbstate_t *);
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
char * _mkdtemp_r (struct _reent *, char *);
int _mkostemp_r (struct _reent *, char *, int);
int _mkostemps_r (struct _reent *, char *, int, int);
int _mkstemp_r (struct _reent *, char *);
int _mkstemps_r (struct _reent *, char *, int);
char * _mktemp_r (struct _reent *, char *) __attribute__ ((__deprecated__("the use of `mktemp' is dangerous; use `mkstemp' instead")));
void qsort (void *__base, size_t __nmemb, size_t __size, __compar_fn_t _compar);
int rand (void);
void *realloc(void *, size_t) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(2))) ;
# 156 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
void srand (unsigned __seed);
double strtod (const char *restrict __n, char **restrict __end_PTR);
double _strtod_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR);

float strtof (const char *restrict __n, char **restrict __end_PTR);







long strtol (const char *restrict __n, char **restrict __end_PTR, int __base);
long _strtol_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long strtoul (const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long _strtoul_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
# 188 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
int system (const char *__string);
# 199 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
void _Exit (int __status) __attribute__ ((__noreturn__));




int _putenv_r (struct _reent *, char *__string);
void * _reallocf_r (struct _reent *, void *, size_t);



int _setenv_r (struct _reent *, const char *__string, const char *__value, int __overwrite);
# 221 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
char * __itoa (int, char *, int);
char * __utoa (unsigned, char *, int);
# 260 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
long long atoll (const char *__nptr);

long long _atoll_r (struct _reent *, const char *__nptr);

long long llabs (long long);
lldiv_t lldiv (long long __numer, long long __denom);
long long strtoll (const char *restrict __n, char **restrict __end_PTR, int __base);

long long _strtoll_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long strtoull (const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long _strtoull_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);
# 281 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
int _unsetenv_r (struct _reent *, const char *__string);







char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);

void * _malloc_r (struct _reent *, size_t) ;
void * _calloc_r (struct _reent *, size_t, size_t) ;
void _free_r (struct _reent *, void *) ;
void * _realloc_r (struct _reent *, void *, size_t) ;
void _mstats_r (struct _reent *, char *);

int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);
# 319 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
extern long double _strtold_r (struct _reent *, const char *restrict, char **restrict);

extern long double strtold (const char *restrict, char **restrict);
# 336 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3

# 4 "game.c" 2
# 1 "chew.h" 1





# 5 "chew.h"
extern const signed char chewSound[21312];
# 5 "game.c" 2
# 1 "collisionmap.h" 1
# 20 "collisionmap.h"
extern const unsigned short collisionmapBitmap[196608];
# 6 "game.c" 2
# 1 "collisionmap2.h" 1
# 20 "collisionmap2.h"
extern const unsigned short collisionmap2Bitmap[65536];
# 7 "game.c" 2
# 1 "sound.h" 1
SOUND soundA;
SOUND soundB;



void setupSounds();
void playSoundA(const signed char* sound, int length, int loops);
void playSoundB(const signed char* sound, int length, int loops);

void setupInterrupts();
void interruptHandler();

void pauseSound();
void unpauseSound();
void stopSound();
# 8 "game.c" 2




int hasLost;
int hasWon;


int totalStemsDelivered;
int totalLeavesDelivered;


int hOff = 0;
int vOff = 0;
int screenBlock;
int playerHOff;
int totalHOff;


int goToMaze;
int goToChina;


int cheatMode;
int randomIndex;


int count;




void initGame()
{
    vOff = 0;
    hOff = 0;
    playerHOff = 0;
    screenBlock = 28;
    cheatMode = 0;
    initPanda();
    initFood();
    initEnemies();
    initPandas();
    initBaskets();
    initDoor();
}


void initPanda()
{
    panda.width = 8;
    panda.height = 8;
    panda.cdel = 1;
    panda.rdel = 1;
    panda.aniCounter = 0;
    panda.aniState = PANDANEUTRAL;
    panda.leavesCollected = 0;
    panda.stemsCollected = 0;
    panda.curFrame = 0;
    panda.numFrames = 3;
}


void initFood()
{
    for (int i = 0; i < 35; i++)
    {
        food[i].active = 1;
        food[i].width = 8;
        food[i].height = 8;
        food[i].cdel = 2;
        food[i].rdel = 2;
        if (i < 4)
        {
            food[i].col = 31;
            food[i].row = (i*30) + 15;
        }
        if (i >= 4 && i < 9)
        {
            food[i].col = 64;
            food[i].row = ((i-4)*30);
        }

        if (i >= 9 && i < 14)
        {
            food[i].col = 101;
            food[i].row = (i-9)*25 + 12;
        }
        if (i >= 14 && i < 20)
        {
            food[i].col = 141;
            food[i].row = ((i-14)*25);
        }
        if (i >= 20 && i < 27)
        {
            food[i].col = 181;
            food[i].row = (i-20)*20 + 10;
        }
        if (i >= 27 && i < 35)
        {
            food[i].col = 214;
            food[i].row = 1 + ((i-27)*18);
        }
        if (i % 2)
        {
            food[i].aniState = STEM;
        } else
        {
            food[i].aniState = LEAF;

        }
    }
    food[26].row = food[26].row - 1;
}


void initEnemies()
{
    for (int i = 0; i < 34; i++)
    {
        enemies[i].active = 1;
        enemies[i].width = 9;
        enemies[i].height = 9;
        enemies[i].cdel = 2;
        enemies[i].rdel = 2;
        enemies[i].aniState = 7;

        if (i < 5)
        {
            enemies[i].col = 28;
            enemies[i].row = i*30;
        }
        if (i >= 5 && i < 9)
        {
            enemies[i].col = 60;
            enemies[i].row = 16 + (i-5)*30;
        }

        if (i >= 9 && i < 15)
        {
            enemies[i].col = 97;
            enemies[i].row = (i-9)*25;
        }
        if (i >= 15 && i < 20)
        {
            enemies[i].col = 137;
            enemies[i].row = 13 + (i-15)*25;
        }
        if (i >= 20 && i < 27)
        {
            enemies[i].col = 177;
            enemies[i].row = (i-20)*20;
        }
        if (i >= 27 && i < 34)
        {
            enemies[i].col = 209;
            enemies[i].row = 10 + (i-27)*18;
        }
    }
}


void initBaskets()
{
    for (int i = 0; i < 3; i++)
    {
        baskets[i].active = 1;
        baskets[i].width = 16;
        baskets[i].height = 16;
        baskets[i].worldRow = 105;
        baskets[i].worldCol = 155 + 20*i;
        baskets[i].aniState = 4;

    }
}


void initPandas()
{
    for (int i = 0; i < 3; i++)
    {
        pandas[i].width = 16;
        pandas[i].height = 16;
        pandas[i].worldCol = 155 + 20*i;
        pandas[i].worldRow = 121;
        pandas[i].aniState = 6;
        pandas[i].leavesCollected = 0;
        pandas[i].stemsCollected = 0;
        pandas[i].curFrame = 6;
        pandas[i].numFrames = 2;

    }
}


void initDoor()
{
    door.active = 1;
    door.width = 16;
    door.height = 16;
    door.worldRow = 0;
    door.worldCol = 225;

}




void updatePanda()
{
    if (panda.aniState != PANDAIDLE)
    {
        panda.prevAniState = panda.aniState;
        panda.aniState = PANDANEUTRAL;
    }

    if (panda.aniCounter % 25 == 0)
    {
        panda.curFrame = (panda.curFrame + 1) % panda.numFrames;
 } else
    {
        panda.aniCounter++;
    }

    if (!cheatMode)
    {
        if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<6))))
        {
            if (collisionmapBitmap[((panda.worldRow - panda.rdel)*(768)+(panda.worldCol))]
                && collisionmapBitmap[((panda.worldRow - panda.rdel)*(768)+(panda.worldCol + panda.width - panda.cdel))])
            {
                if (panda.worldRow > 0)
                {
                    panda.aniState = PANDAHAPPY;
                    panda.worldRow-=panda.rdel;

                    if (vOff > 0 && panda.row + panda.height/2 == 160/2)
                    {
                        vOff--;
                    }
                }
            } else
            {
                panda.col = 73;
                panda.row = 64;
                panda.worldCol = 73;
                panda.worldRow = 64;
                hOff = 0;
                vOff = 0;
                playerHOff = 0;
                totalHOff = 0;
                screenBlock = 28;
            }
        }

        if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<7))))
        {
            if (panda.worldRow + panda.height < 256 - 20)
            {
                if (collisionmapBitmap[((panda.worldRow + panda.height)*(768)+(panda.worldCol))]
                    && collisionmapBitmap[((panda.worldRow + panda.height)*(768)+(panda.worldCol + panda.width - panda.cdel))])
                {
                    panda.aniState = PANDAHAPPY;
                    panda.worldRow+=panda.rdel;

                    if (vOff + 160 < 256 && panda.row + panda.height/2 == 160/2)
                    {
                        vOff++;
                    }

                } else
                {
                    panda.col = 73;
                    panda.row = 64;
                    panda.worldCol = 73;
                    panda.worldRow = 64;
                    hOff = 0;
                    vOff = 0;
                    playerHOff = 0;
                    totalHOff = 0;
                    screenBlock = 28;
                }
            }
        }

        if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<4))))
        {
            if (panda.worldCol + panda.width < 768 - 20)
            {
                if ((collisionmapBitmap[((panda.worldRow)*(768)+((panda.worldCol + panda.width)))] == 0x7FFF)
                    && (collisionmapBitmap[(((panda.worldRow + panda.height - panda.rdel))*(768)+((panda.worldCol + panda.width)))] == 0x7FFF))
                {
                    panda.worldCol++;
                    panda.aniState = PANDASAD;

                    if (screenBlock < 30 && hOff < (768 - 240 -1) && panda.col > 240 / 2)
                    {
                        hOff++;
                        playerHOff++;
                        totalHOff++;
                    }

                } else
                {
                    panda.col = 73;
                    panda.row = 64;
                    panda.worldCol = 73;
                    panda.worldRow = 64;
                    hOff = 0;
                    vOff = 0;
                    playerHOff = 0;
                    totalHOff = 0;
                    screenBlock = 28;
                }
            }
        }
    } else
    {
        if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<6))) && collisionmapBitmap[((panda.worldRow - panda.rdel)*(768)+(panda.worldCol))]
            && collisionmapBitmap[((panda.worldRow - panda.rdel)*(768)+(panda.worldCol + panda.width - panda.cdel))])
        {
            if (panda.worldRow > 0)
            {
                panda.aniState = PANDAHAPPY;
                panda.worldRow-=panda.rdel;

                if (vOff > 0 && panda.row + panda.height/2 == 160/2)
                {
                     vOff--;
                }
            }
        }

        if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<7))))
        {
            if (panda.worldRow + panda.height < 256 - 20 && collisionmapBitmap[((panda.worldRow + panda.height)*(768)+(panda.worldCol))]
                && collisionmapBitmap[((panda.worldRow + panda.height)*(768)+(panda.worldCol + panda.width - panda.cdel))])
            {
                panda.aniState = PANDAHAPPY;
                panda.worldRow+=panda.rdel;

                if (vOff + 160 < 256 && panda.row + panda.height/2 == 160/2)
                {
                    vOff++;
                }
            }

        }

        if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<4))))
        {
            if (panda.worldCol + panda.width < 768 - 20 && (collisionmapBitmap[((panda.worldRow)*(768)+((panda.worldCol + panda.width)))] == 0x7FFF)
                && (collisionmapBitmap[(((panda.worldRow + panda.height - panda.rdel))*(768)+((panda.worldCol + panda.width)))] == 0x7FFF))
            {
                panda.worldCol++;
                panda.aniState = PANDASAD;

                if (screenBlock < 30 && hOff < (768 - 240 -1) && panda.col > 240 / 2)
                {
                    hOff++;
                    playerHOff++;
                    totalHOff++;
                }
            }
        }
    }

    if (panda.aniState == PANDAIDLE)
    {
            panda.curFrame = 0;
            panda.aniState = panda.prevAniState;
    } else
    {
        panda.aniCounter++;
    }

    panda.col = panda.worldCol - playerHOff;
    panda.row = panda.worldRow - vOff;
}


void updatePanda2()
{
    if (panda.aniState != PANDAIDLE)
    {
        panda.prevAniState = panda.aniState;
        panda.aniState = PANDANEUTRAL;
    }

    if(panda.aniCounter % 25 == 0)
    {
        panda.curFrame = (panda.curFrame + 1) % panda.numFrames;
 } else
    {
        panda.aniCounter++;
    }

    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<6))))
    {
        if (panda.worldRow > 0 && collisionmap2Bitmap[((panda.worldRow - panda.rdel)*(256)+(panda.worldCol))]
            && collisionmap2Bitmap[((panda.worldRow - panda.rdel)*(256)+(panda.worldCol + panda.width - panda.cdel))])
        {
                panda.aniState = PANDAHAPPY;
                panda.worldRow-=panda.rdel;
        }

    }

    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<7))) && panda.row < 128)
    {
        if (panda.worldRow + panda.height < 256 && collisionmap2Bitmap[((panda.worldRow + panda.height)*(256)+(panda.worldCol))]
            && collisionmap2Bitmap[((panda.worldRow + panda.height)*(256)+(panda.worldCol + panda.width - panda.cdel))])
        {
                panda.aniState = PANDAHAPPY;
                panda.worldRow+=panda.rdel;
        }
    }

    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<5))))
    {
        if (panda.worldCol > 0 && (collisionmap2Bitmap[((panda.worldRow)*(256)+((panda.worldCol - panda.cdel)))])
            && (collisionmap2Bitmap[(((panda.worldRow + panda.height - panda.rdel))*(256)+((panda.worldCol - panda.cdel)))]))
        {
            panda.worldCol-=panda.cdel;
            panda.aniState = PANDASAD;
        }
    }

    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<4))))
    {
        if (panda.worldCol + panda.width < 240 && (collisionmap2Bitmap[((panda.worldRow)*(256)+((panda.worldCol + panda.width)))] == 0x7FFF)
            && (collisionmap2Bitmap[(((panda.worldRow + panda.height - panda.rdel))*(256)+((panda.worldCol + panda.width)))] == 0x7FFF))
        {
            panda.worldCol+=panda.cdel;
            panda.aniState = PANDASAD;
        }
    }

    if (panda.aniState == PANDAIDLE)
    {
        panda.curFrame = 0;
        panda.aniState = panda.prevAniState;
    } else
    {
        panda.aniCounter++;
    }

    panda.col = panda.worldCol;
    panda.row = panda.worldRow;
}




void checkFoodCollected()
{
    for (int i = 0; i < 35; i++)
    {
        if (food[i].active && collision(panda.col, panda.row, panda.width, panda.height, food[i].col, food[i].row, food[i].width, food[i].height))
        {
            food[i].active = 0;
            shadowOAM[i+1].attr0 = food[i].row | (0<<13) | (0<<14);
            shadowOAM[i+1].attr1 = food[i].col | (0<<14);
            shadowOAM[i+1].attr2 = ((0)*32+(BLACKBACKGROUND));
            DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);

            if (food[i].aniState == LEAF) {
                panda.leavesCollected++;
            } else
            {
                panda.stemsCollected++;
            }
        }
    }
}


void checkFoodDelivered()
{
    for (int i = 0; i < 3; i++)
    {
        if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0)))) && collision(panda.worldCol - totalHOff, panda.row, panda.width, panda.height, baskets[i].col, baskets[i].row, baskets[i].width, baskets[i].height) && panda.leavesCollected > 0)
        {
            pandas[i].leavesCollected++;
            panda.leavesCollected--;
            pandas[i].curFrame = 8;
            playSoundB(chewSound, 21312, 0);
        }

        if ((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1)))) && collision(panda.worldCol - totalHOff, panda.row, panda.width, panda.height, baskets[i].col, baskets[i].row, baskets[i].width, baskets[i].height) && panda.stemsCollected > 0)
        {
            pandas[i].stemsCollected++;
            panda.stemsCollected--;
            pandas[i].curFrame = 8;
            playSoundB(chewSound, 21312, 0);
        }
    }
}


void checkEnemyCollision()
{
     for (int i = 0; i < 34; i++)
     {
        if (enemies[i].active && collision(panda.col, panda.row, panda.width, panda.height, enemies[i].col, enemies[i].row, enemies[i].width, enemies[i].height) && !enemies[i].isSpecial)
        {
            hasLost = 1;
        }
    }
}




void drawPanda()
{
    shadowOAM[0].attr0 = (0xFF & panda.row) | (0<<13) | (0<<14);
    shadowOAM[0].attr1 = (0x1FF & panda.col) | (0<<14);
    shadowOAM[0].attr2 = ((0)<<12) | ((panda.curFrame)*32+(panda.aniState));
}


void drawFood()
{
    for (int i = 0; i < 35; i++)
    {
        if (food[i].active)
        {
            shadowOAM[i+1].attr0 = food[i].row | (0<<13) | (0<<14);
            shadowOAM[i+1].attr1 = food[i].col | (0<<14);
            shadowOAM[i+1].attr2 = ((0)*32+(food[i].aniState));
        }
    }
}


void drawEnemies()
{
    for (int i = 0; i < 34; i++)
    {
        enemies[i].col+=4;

        if (enemies[i].active)
        {
            shadowOAM[i+45].attr0 = enemies[i].row | (0<<13) | (0<<14);
            shadowOAM[i+45].attr1 = enemies[i].col | (0<<14);
            shadowOAM[i+45].attr2 = ((2)*32+(enemies[i].aniState));
        }
    }
}


void drawEnemiesLeft()
{
    for (int i = 0; i < 34; i++)
    {
        if (enemies[i].active)
        {
            shadowOAM[i+45].attr0 = (enemies[i].row) | (0<<13) | (0<<14);
            shadowOAM[i+45].attr1 = (enemies[i].col) | (0<<14);
            shadowOAM[i+45].attr2 = ((3)*32+(enemies[i].aniState));
        }
    }
}


void drawEnemiesRight()
{
    for (int i = 0; i < 34; i++)
    {
        enemies[i].col+=4;

        if (enemies[i].active)
        {
            shadowOAM[i+45].attr0 = (enemies[i].row) | (0<<13) | (0<<14);
            shadowOAM[i+45].attr1 = (enemies[i].col) | (0<<14);
            shadowOAM[i+45].attr2 = ((4)*32+(enemies[i].aniState));
        }
    }
}


void drawFoodDelivered()
{
    totalStemsDelivered = pandas[0].stemsCollected + pandas[1].stemsCollected + pandas[2].stemsCollected;
    totalLeavesDelivered = pandas[0].leavesCollected + pandas[1].leavesCollected + pandas[2].leavesCollected;

    shadowOAM[40].attr0 = 142 | (0<<13) | (0<<14);
    shadowOAM[40].attr1 = 110 | (0<<14);
    shadowOAM[40].attr2 = ((0)*32+(totalStemsDelivered + 8));

    shadowOAM[41].attr0 = 142 | (0<<13) | (0<<14);
    shadowOAM[41].attr1 = 216 | (0<<14);
    shadowOAM[41].attr2 = ((0)*32+(totalLeavesDelivered + 8));
}


void drawFoodCollected()
{
    if (panda.stemsCollected < 16) {
        shadowOAM[40].attr0 = 140 | (0<<13) | (0<<14);
        shadowOAM[40].attr1 = 96 | (1<<14);
        shadowOAM[40].attr2 = ((18)*32+(panda.stemsCollected * 2));
    }
    if (panda.stemsCollected >= 16) {
        shadowOAM[40].attr0 = 140 | (0<<13) | (0<<14);
        shadowOAM[40].attr1 = 96 | (1<<14);
        shadowOAM[40].attr2 = ((20)*32+((panda.stemsCollected - 16) * 2));
    }

    if (panda.leavesCollected < 16) {
        shadowOAM[41].attr0 = 140 | (0<<13) | (0<<14);
        shadowOAM[41].attr1 = 222 | (1<<14);
        shadowOAM[41].attr2 = ((18)*32+(panda.leavesCollected * 2));
    }

    if (panda.leavesCollected >= 16) {
        shadowOAM[41].attr0 = 140 | (0<<13) | (0<<14);
        shadowOAM[41].attr1 = 222 | (1<<14);
        shadowOAM[41].attr2 = ((20)*32+((panda.leavesCollected - 16) * 2));
    }

}


void drawBaskets()
{
    for (int i = 0; i < 3; i++)
    {
            baskets[i].row = baskets[i].worldRow - vOff;
            baskets[i].col = baskets[i].worldCol - hOff;
            shadowOAM[i+32].attr0 = baskets[i].row | (0<<13) | (0<<14);
            shadowOAM[i+32].attr1 = baskets[i].col | (1<<14);
            shadowOAM[i+32].attr2 = ((6)*32+(baskets[i].aniState));
    }
}


void drawFriendlyPandas()
{
    for (int i = 0; i < 3; i++)
    {
        pandas[i].row = pandas[i].worldRow - vOff;
        pandas[i].col = pandas[i].worldCol - hOff;

        shadowOAM[i+36].attr0 = pandas[i].row | (0<<13) | (0<<14);
        shadowOAM[i+36].attr1 = pandas[i].col | (1<<14);
        shadowOAM[i+36].attr2 = ((pandas[i].curFrame)*32+(pandas[i].aniState));
    }
}


void drawDoor()
{
    shadowOAM[100].attr0 = door.worldRow | (0<<13) | (0<<14);
    shadowOAM[100].attr1 = door.worldCol | (1<<14);
    shadowOAM[100].attr2 = ((3)*32+(0));
}


void drawPandaScore()
{

    shadowOAM[101].attr0 = (pandas[0].row + 20) | (0<<13) | (0<<14);
    shadowOAM[101].attr1 = (pandas[0].col + 4) | (0<<14);
    shadowOAM[101].attr2 = ((0)*32+(pandas[0].stemsCollected + 8));

    shadowOAM[102].attr0 = (pandas[1].row + 20) | (0<<13) | (0<<14);
    shadowOAM[102].attr1 = (pandas[1].col + 4) | (0<<14);
    shadowOAM[102].attr2 = ((0)*32+(pandas[1].stemsCollected + 8));

    shadowOAM[103].attr0 = (pandas[2].row + 20) | (0<<13) | (0<<14);
    shadowOAM[103].attr1 = (pandas[2].col + 4) | (0<<14);
    shadowOAM[103].attr2 = ((0)*32+(pandas[2].stemsCollected + 8));


    shadowOAM[104].attr0 = (pandas[0].row + 30) | (0<<13) | (0<<14);
    shadowOAM[104].attr1 = (pandas[0].col + 4) | (0<<14);
    shadowOAM[104].attr2 = ((0)*32+(pandas[0].leavesCollected + 8));

    shadowOAM[105].attr0 = (pandas[1].row + 30) | (0<<13) | (0<<14);
    shadowOAM[105].attr1 = (pandas[1].col + 4) | (0<<14);
    shadowOAM[105].attr2 = ((0)*32+(pandas[1].leavesCollected + 8));

    shadowOAM[106].attr0 = (pandas[2].row + 30) | (0<<13) | (0<<14);
    shadowOAM[106].attr1 = (pandas[2].col + 4) | (0<<14);
    shadowOAM[106].attr2 = ((0)*32+(pandas[2].leavesCollected + 8));
}

void drawWordStems()
{

    shadowOAM[107].attr0 = (pandas[0].row + 20) | (0<<13) | (1<<14);
    shadowOAM[107].attr1 = (pandas[0].col - 42) | (2<<14);
    shadowOAM[107].attr2 = ((3)*32+(9));


    shadowOAM[108].attr0 = (pandas[0].row + 20) | (0<<13) | (1<<14);
    shadowOAM[108].attr1 = (pandas[0].col - 10) | (0<<14);
    shadowOAM[108].attr2 = ((3)*32+(13));
}

void drawWordLeaves()
{

    shadowOAM[109].attr0 = (pandas[0].row + 30) | (0<<13) | (1<<14);
    shadowOAM[109].attr1 = (pandas[0].col - 50) | (2<<14);
    shadowOAM[109].attr2 = ((3)*32+(16));


    shadowOAM[110].attr0 = (pandas[0].row + 30) | (0<<13) | (1<<14);
    shadowOAM[110].attr1 = (pandas[0].col - 18) | (1<<14);
    shadowOAM[110].attr2 = ((3)*32+(20));
}


void hideBaskets()
{
    for (int i = 0; i < 3; i++)
    {
            baskets[i].row = baskets[i].worldRow - vOff;
            baskets[i].col = baskets[i].worldCol - hOff;
            shadowOAM[i+32].attr0 = baskets[i].row | (0<<13) | (0<<14);
            shadowOAM[i+32].attr1 = baskets[i].col | (1<<14);
            shadowOAM[i+32].attr2 = ((12)*32+(12));
    }

}


void hidePandas()
{
    for (int i = 0; i < 3; i++)
    {
            pandas[i].row = pandas[i].worldRow - vOff;
            pandas[i].col = pandas[i].worldCol - hOff;
            shadowOAM[i+36].attr0 = pandas[i].row | (0<<13) | (0<<14);
            shadowOAM[i+36].attr1 = pandas[i].col | (1<<14);
            shadowOAM[i+36].attr2 = ((12)*32+(12));
    }
}


void hideDoor() {
    shadowOAM[100].attr0 = door.worldRow | (0<<13) | (0<<14);
    shadowOAM[100].attr1 = door.worldCol | (1<<14);
    shadowOAM[100].attr2 = ((12)*32+(12));
}


void hideFood()
{
    for (int i = 0; i < 35; i++)
    {
        if (food[i].active)
        {
            shadowOAM[i+1].attr0 = food[i].row | (0<<13) | (0<<14);
            shadowOAM[i+1].attr1 = food[i].col | (0<<14);
            shadowOAM[i+1].attr2 = ((12)*32+(12));
        }
    }
}


void hidePandaScore()
{

    shadowOAM[101].attr0 = (pandas[0].row + 20) | (0<<13) | (0<<14);
    shadowOAM[101].attr1 = (pandas[0].col + 4) | (0<<14);
    shadowOAM[101].attr2 = ((12)*32+(12));

    shadowOAM[102].attr0 = (pandas[1].row + 20) | (0<<13) | (0<<14);
    shadowOAM[102].attr1 = (pandas[1].col + 4) | (0<<14);
    shadowOAM[102].attr2 = ((12)*32+(12));

    shadowOAM[103].attr0 = (pandas[2].row + 20) | (0<<13) | (0<<14);
    shadowOAM[103].attr1 = (pandas[2].col + 4) | (0<<14);
    shadowOAM[103].attr2 = ((12)*32+(12));


    shadowOAM[104].attr0 = (pandas[0].row + 30) | (0<<13) | (0<<14);
    shadowOAM[104].attr1 = (pandas[0].col + 4) | (0<<14);
    shadowOAM[104].attr2 = ((12)*32+(12));

    shadowOAM[105].attr0 = (pandas[1].row + 30) | (0<<13) | (0<<14);
    shadowOAM[105].attr1 = (pandas[1].col + 4) | (0<<14);
    shadowOAM[105].attr2 = ((12)*32+(12));

    shadowOAM[106].attr0 = (pandas[2].row + 30) | (0<<13) | (0<<14);
    shadowOAM[106].attr1 = (pandas[2].col + 4) | (0<<14);
    shadowOAM[106].attr2 = ((12)*32+(12));
}


void hideWordStemsAndLeaves()
{

    shadowOAM[107].attr0 = (pandas[0].row + 20) | (0<<13) | (1<<14);
    shadowOAM[107].attr1 = (pandas[0].col - 42) | (2<<14);
    shadowOAM[107].attr2 = ((15)*32+(15));


    shadowOAM[108].attr0 = (pandas[0].row + 20) | (0<<13) | (1<<14);
    shadowOAM[108].attr1 = (pandas[0].col - 10) | (0<<14);
    shadowOAM[108].attr2 = ((15)*32+(15));


    shadowOAM[109].attr0 = (pandas[0].row + 30) | (0<<13) | (1<<14);
    shadowOAM[109].attr1 = (pandas[0].col - 50) | (2<<14);
    shadowOAM[109].attr2 = ((15)*32+(15));


    shadowOAM[110].attr0 = (pandas[0].row + 30) | (0<<13) | (1<<14);
    shadowOAM[110].attr1 = (pandas[0].col - 18) | (1<<14);
    shadowOAM[110].attr2 = ((15)*32+(15));
}




void updateGame()
{
    checkFoodDelivered();
    updatePanda();
    drawPanda();

    if (screenBlock == 28)
    {
        (*(volatile unsigned short*)0x400000A) = ((0)<<2) | ((screenBlock)<<8) | (1<<14);
    }

    if (hOff > 256)
    {
        screenBlock++;
        hOff -= 256;
        (*(volatile unsigned short*)0x400000A) = ((0)<<2) | ((screenBlock)<<8) | (1<<14);
    }

    if (playerHOff > 512)
    {
        playerHOff -= 512;
    }

    if (collision(panda.worldCol - totalHOff, panda.worldRow, panda.width, panda.height, door.worldCol, door.worldRow, door.width, door.height) && !cheatMode)
    {
        goToChina = 1;
    }

    if (collision(panda.worldCol - totalHOff, panda.worldRow, panda.width, panda.height, door.worldCol, door.worldRow, door.width, door.height) && cheatMode)
    {
        panda.col = 73;
        panda.row = 64;
        panda.worldCol = 73;
        panda.worldRow = 64;
        hOff = 0;
        vOff = 0;
        playerHOff = 0;
        totalHOff = 0;
        screenBlock = 28;
        hideBaskets();
        hidePandas();
        hideDoor();
        hidePandaScore();
        hideWordStemsAndLeaves();
    }

    if (screenBlock == 30 || (screenBlock == 29 && hOff > 256))
    {
        drawFriendlyPandas();
        drawBaskets();
        drawDoor();
        drawPandaScore();
        drawWordStems();
        drawWordLeaves();
    }

    for (int i = 0; i < 3; i++)
    {
        if (pandas[i].curFrame == 8)
        {
            pandas[i].aniCounter++;
        }
        if (pandas[i].aniCounter == 15)
        {
            pandas[i].aniCounter = 0;
            pandas[i].curFrame = 6;
        }
    }

    for (int i = 0; i < 3; i++)
    {
        if (pandas[i].leavesCollected == 5 || pandas[i].stemsCollected == 5) {
            pandas[i].aniState = 8;
            pandas[i].curFrame = 6;
        }
    }

    if ((pandas[0].leavesCollected == 5 || pandas[0].stemsCollected == 5) && (pandas[1].leavesCollected == 5 || pandas[1].stemsCollected == 5) && (pandas[2].leavesCollected == 5 || pandas[2].stemsCollected == 5))
    {
        hasWon = 1;
    }

    (*(volatile unsigned short *)0x04000014) = hOff;
    (*(volatile unsigned short *)0x04000016) = vOff;
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);
}


void updateGame2()
{
    if (collision(panda.worldCol, panda.worldRow, panda.width, panda.height, door.worldCol, door.worldRow, door.width, door.height))
    {
        goToMaze = 1;
    }

    if (cheatMode)
    {
        hideFood();
        checkEnemyCollision();

        if (collision(panda.col, panda.row, panda.width, panda.height, enemies[randomIndex].col, enemies[randomIndex].row, enemies[randomIndex].width, enemies[randomIndex].height))
        {
            panda.stemsCollected = 15;
            panda.leavesCollected = 15;
        }

        if (count < 33)
        {
            drawEnemiesLeft();
        } else if (count == 66)
        {
            drawEnemies();
        } else if (count == 100)
        {
            drawEnemiesRight();
        }

    } else {
        drawFood();
        checkFoodCollected();
        checkEnemyCollision();
        if (count < 33)
        {
            drawEnemiesLeft();
        } else if (count == 67)
        {
            drawEnemies();
        } else if (count == 100)
        {
            drawEnemiesRight();
        }
    }

    count++;
    checkCheatActivation();
    drawPanda();
    drawDoor();
    drawFoodCollected();
    updatePanda2();

    if (count == 133)
    {
        count = 0;
        for (int i = 0; i < 34; i++)
        {
            enemies[i].col-=8;
        }
    }

    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);
    resetAnimationFriendly();
}




void checkCheatActivation()
{
    if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0)))))
    {
        cheatMode = 1;
        for (int i = 0; i < 34; i++)
        {
            enemies[i].isSpecial = 0;
            enemies[i].aniState = 7;
        }

        panda.leavesCollected = 0;
        panda.stemsCollected = 0;
        randomIndex = rand() % 33;
        enemies[randomIndex].isSpecial = 1;
        enemies[randomIndex].aniState = 8;
    }
}


void resetAnimationFriendly()
{
    pandas[0].curFrame = 6;
    pandas[1].curFrame = 6;
    pandas[2].curFrame = 6;
}
