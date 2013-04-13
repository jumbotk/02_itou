/*
*******************************************************************************
**
**  This device driver was created by Applilet2 for 78K0S/Kx1+
**  8-Bit Single-Chip Microcontrollers
**
**  Copyright(C) NEC Electronics Corporation 2002 - 2013
**  All rights reserved by NEC Electronics Corporation.
**
**  This program should be used on your own responsibility.
**  NEC Electronics Corporation assumes no responsibility for any losses
**  incurred by customers or third parties arising from the use of this file.
**
**  Filename :	systeminit.c
**  Abstract :	This file implements system initializing function.
**  APIlib :	Applilet2 for 78K0S/Kx1+ V2.41 [9 Sep. 2008]
**
**  Device :	uPD78F9222
**
**  Compiler :	CC78K0S
**
**  Creation date:	2013/03/23
**  
*******************************************************************************
*/

/*
*******************************************************************************
**  Include files
*******************************************************************************
*/
#include "macrodriver.h"
#include "system.h"
#include "port.h"
#include "timer.h"
/* Start user code for include definition. Do not edit comment generated here */
/* End user code for include definition. Do not edit comment generated here */
#include "user_define.h"

/*
*******************************************************************************
**  Global define
*******************************************************************************
*/
/* Start user code for global definition. Do not edit comment generated here */
/* End user code for global definition. Do not edit comment generated here */


/*
**-----------------------------------------------------------------------------
**
**	Abstract:
**		This function  initializes every macro.
**
**	Parameters:
**		None
**
**	Returns:
**		None
**
**-----------------------------------------------------------------------------
*/
void SystemInit( void )
{
	WDTM = 0x77;	/* stops watch dog timer */
	/*Process of reset*/
	CG_ReadResetSource();
	/*Initialize the clock generator*/
	CLOCK_Init();
	/*Initialize the I/O ports*/
	PORT_Init();
	/*Initialize TM00 function*/
	TM00_Init();
}

/*
**-----------------------------------------------------------------------------
**
**	Abstract:
**		This function  initializes hardware setting.
**
**	Parameters:
**		None
**
**	Returns:
**		None
**
**-----------------------------------------------------------------------------
*/
void hdwinit( void )
{
	DI( );
	SystemInit( );
	EI( );
}

/* Start adding user code. Do not edit comment generated here */
/* End user code adding. Do not edit comment generated here */


