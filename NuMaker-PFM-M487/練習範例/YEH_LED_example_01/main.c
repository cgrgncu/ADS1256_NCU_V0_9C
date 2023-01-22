//**************************************************************************
//   Project: YEH_LED_example_01
//   File: main.c
//   Copyright: All rights reserved.
//   Author: HsiupoYeh 
//   Version: v20230122a
//   Description: �ܽd�ϥε{���X����LED�A�O�o�ݭn��ʼW�[stdDriver��gpio.c��Library��
//   REF:�u..\M480BSP-3.05.001\SampleCode\Template�v
//**************************************************************************

#include <stdio.h>
#include "NuMicro.h"

#define PLL_CLOCK           192000000

void SYS_Init(void)
{
    /*---------------------------------------------------------------------------------------------------------*/
    /* Init System Clock                                                                                       */
    /*---------------------------------------------------------------------------------------------------------*/
    /* Unlock protected registers */
    SYS_UnlockReg();

    /* Set XT1_OUT(PF.2) and XT1_IN(PF.3) to input mode */
    PF->MODE &= ~(GPIO_MODE_MODE2_Msk | GPIO_MODE_MODE3_Msk);

    /* Enable External XTAL (4~24 MHz) */
    CLK_EnableXtalRC(CLK_PWRCTL_HXTEN_Msk);

    /* Waiting for 12MHz clock ready */
    CLK_WaitClockReady(CLK_STATUS_HXTSTB_Msk);

    /* Set core clock as PLL_CLOCK from PLL */
    CLK_SetCoreClock(PLL_CLOCK);
    /* Set PCLK0/PCLK1 to HCLK/2 */
    CLK->PCLKDIV = (CLK_PCLKDIV_APB0DIV_DIV2 | CLK_PCLKDIV_APB1DIV_DIV2);

    /* Enable UART clock */
    CLK_EnableModuleClock(UART0_MODULE);

    /* Select UART clock source from HXT */
    CLK_SetModuleClock(UART0_MODULE, CLK_CLKSEL1_UART0SEL_HXT, CLK_CLKDIV0_UART0(1));

    /* Update System Core Clock */
    /* User can use SystemCoreClockUpdate() to calculate SystemCoreClock. */
    SystemCoreClockUpdate();



    /* Set GPB multi-function pins for UART0 RXD and TXD */
    SYS->GPB_MFPH &= ~(SYS_GPB_MFPH_PB12MFP_Msk | SYS_GPB_MFPH_PB13MFP_Msk);
    SYS->GPB_MFPH |= (SYS_GPB_MFPH_PB12MFP_UART0_RXD | SYS_GPB_MFPH_PB13MFP_UART0_TXD);
    /* Lock protected registers */
    SYS_LockReg();
}


int main()
{

    SYS_Init();
    /* Init UART to 115200-8n1 for print message */
    UART_Open(UART0, 115200);
    
    printf("\n");//�Ĥ@��`���ýX�A���ϥδ���r��
    printf("*************************************\n");
    printf("* ����W��: YEH_LED_example_01 \n");
    printf("* ����: v20230122a \n");
    printf("*************************************\n");
    
    
    //=== GPIO pin37 (PH.0) - LED_R 
    // ��l��GPIO����X�Ҧ��C���LED_R������pin�}�A�̷Ө�^��}��W�١APH.0�C
    // �]�w�ɹ�����JPH�ABIT0
    GPIO_SetMode(PH, BIT0, GPIO_MODE_OUTPUT);
    // �o�Ӹ}�쪺��X�N�OPH0�A�̷ӽu���]�p�A0=ON�A1=OFF�C
    PH0=1;
    
    /* Got no where to go, just loop forever */
    while(1)
    {
      printf("\n");
      printf("�Ы��U���N�@�Ӧr�������LED�O�N�G�_: \n");
      getchar();    
      PH0=0;
      printf("����LED�O��G!\n");
      
      printf("\n");
      printf("�Ы��U���N�@�Ӧr�������LED�O�N����: \n");
      getchar();    
      PH0=1;
      printf("����LED�O���!\n");
    }
      ;

}

/*** (C) COPYRIGHT 2016 Nuvoton Technology Corp. ***/
