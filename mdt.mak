#
# Project manager generated MAKEFILE
#
TITLE = 78K0S
DEVFILE = C:\Program Files\NEC Electronics Tools\DEV\DF9222.78K
PROJDIR = C:\workspace\78K0S\src
TOOLDIR = C:\Program Files (x86)\NEC Electronics Tools\PM+\V6.30\BIN
WORKDIR = C:\workspace\78K0S\src
DEBUG = 

CC = "C:\Program Files (x86)\NEC Electronics Tools\CC78K0S\W2.01\bin\cc78k0s.exe"
ST = "C:\Program Files (x86)\NEC Electronics Tools\RA78K0S\W2.00\bin\st78k0s.exe"
RA = "C:\Program Files (x86)\NEC Electronics Tools\RA78K0S\W2.00\bin\ra78k0s.exe"
LK = "C:\Program Files (x86)\NEC Electronics Tools\RA78K0S\W2.00\bin\lk78k0s.exe"
OC = "C:\Program Files (x86)\NEC Electronics Tools\RA78K0S\W2.00\bin\oc78k0s.exe"
LCNV = "C:\Program Files (x86)\NEC Electronics Tools\RA78K0S\W2.00\bin\lc78k0s.exe"

OBJS = main.rel  \
	systeminit.rel  \
	option.rel  \
	system.rel  \
	system_user.rel  \
	port.rel  \
	timer.rel  \
	timer_user.rel 

DEP_main_c = C:\workspace\78K0S\src\macrodriver.h \
	C:\workspace\78K0S\src\system.h \
	C:\workspace\78K0S\src\port.h \
	C:\workspace\78K0S\src\timer.h \
	C:\workspace\78K0S\src\user_define.h

DEP_systeminit_c = C:\workspace\78K0S\src\macrodriver.h \
	C:\workspace\78K0S\src\system.h \
	C:\workspace\78K0S\src\port.h \
	C:\workspace\78K0S\src\timer.h \
	C:\workspace\78K0S\src\user_define.h

DEP_option_asm = C:\workspace\78K0S\src\option.inc

DEP_system_c = C:\workspace\78K0S\src\macrodriver.h \
	C:\workspace\78K0S\src\system.h \
	C:\workspace\78K0S\src\user_define.h

DEP_system_user_c = C:\workspace\78K0S\src\macrodriver.h \
	C:\workspace\78K0S\src\system.h \
	C:\workspace\78K0S\src\user_define.h

DEP_port_c = C:\workspace\78K0S\src\macrodriver.h \
	C:\workspace\78K0S\src\port.h \
	C:\workspace\78K0S\src\user_define.h

DEP_timer_c = C:\workspace\78K0S\src\macrodriver.h \
	C:\workspace\78K0S\src\timer.h \
	C:\workspace\78K0S\src\user_define.h

DEP_timer_user_c = C:\workspace\78K0S\src\macrodriver.h \
	C:\workspace\78K0S\src\timer.h \
	C:\workspace\78K0S\src\user_define.h

GOAL : C:\workspace\78K0S\src\a.hex

main.rel : main.c $(DEP_main_c)
	$(CC) -cF9222 -y"C:\Program Files\NEC Electronics Tools\DEV" -_msgoff main.c

systeminit.rel : systeminit.c $(DEP_systeminit_c)
	$(CC) -cF9222 -y"C:\Program Files\NEC Electronics Tools\DEV" -_msgoff systeminit.c

option.rel : option.asm $(DEP_option_asm)
	$(RA) -cF9222 -y"C:\Program Files\NEC Electronics Tools\DEV" -_msgoff  option.asm

system.rel : system.c $(DEP_system_c)
	$(CC) -cF9222 -y"C:\Program Files\NEC Electronics Tools\DEV" -_msgoff system.c

system_user.rel : system_user.c $(DEP_system_user_c)
	$(CC) -cF9222 -y"C:\Program Files\NEC Electronics Tools\DEV" -_msgoff system_user.c

port.rel : port.c $(DEP_port_c)
	$(CC) -cF9222 -y"C:\Program Files\NEC Electronics Tools\DEV" -_msgoff port.c

timer.rel : timer.c $(DEP_timer_c)
	$(CC) -cF9222 -y"C:\Program Files\NEC Electronics Tools\DEV" -_msgoff timer.c

timer_user.rel : timer_user.c $(DEP_timer_user_c)
	$(CC) -cF9222 -y"C:\Program Files\NEC Electronics Tools\DEV" -_msgoff timer_user.c

a.lmf : $(OBJS)
	$(LK) -y"C:\Program Files\NEC Electronics Tools\DEV" -_msgoff -oa.lmf "..\..\..\Program Files (x86)\NEC Electronics Tools\CC78K0S\W2.01\lib78k0s\s0sl.rel"  -pa.map -bcl0s.lib -bcl0sf.lib -i"C:\Program Files (x86)\NEC Electronics Tools\CC78K0S\W2.01\lib78k0s" -dlk.dr -s  main.rel systeminit.rel option.rel system.rel system_user.rel port.rel timer.rel timer_user.rel 

a.hex : a.lmf
	$(OC) -y"C:\Program Files\NEC Electronics Tools\DEV" -_msgoff  a.lmf

















