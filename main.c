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
**  Filename :	 main.c
**  Abstract :	This file implements main function.
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
**		This function  implements main function.
**
**	Parameters:
**		None
**
**	Returns:
**		None
**
**-----------------------------------------------------------------------------
*/
void  main( void )
{
	BOOL ledflash = 0;			/* LED点滅の有無を保持 */
	UCHAR port4;
	
	
	/* Start user code. Do not edit comment generated here */
	while (1) {
		port4 = P4.0;				/* スイッチの状態の取得 */
		
		if(port4 == 0){				/* スイッチが押下されているならば */
			if(ledflash == 0){		/* LED点滅中でない場合 */
				P13.0 = 0;			/* LEDを点灯 */
				TM00_Start();		/* タイマを起動 */
				ledflash = 1;		/* LEDを点灯中に設定 */
			}
		}
		else if(port4 == 1){		/* スイッチが押下されていないならば */
			if(ledflash == 1){		/* LED点滅中の場合 */
				TM00_Stop();		/* タイマを停止 */
				P13.0 = 1;			/* LEDを消灯 */
				ledflash = 0;		/* LEDを点滅なしに設定 */
			}
		}
		else{
			/*  No Operation */
		}
	}
	/* End user code. Do not edit comment generated here */
}

/* Start adding user code. Do not edit comment generated here */
/* End user code adding. Do not edit comment generated here */


