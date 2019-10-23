/*=======================================================================*\
* ------------------------------------------------------------------------|
* �ļ�		��_carelSDK/Project/DimSw_CH1_2/ports.c
* ����		���ض���Dimmer Switch ��LED��KEY�ȵײ���ֲʵ��
* ��������		��2019/1
* �����		��Carel.Li
* �޸�����		��
* �޸�����		��
* �汾		��v1.1
*-------------------------------------------------------------------------|
\*=======================================================================*/
#include "../common.h"

//////////////////////////////////////////////////////////////////////////
// 1·ָʾ�� + ����ָʾ�� PB11
//////////////////////////////////////////////////////////////////////////
void LED1_Handler(uint8_t newState){
	if(newState)
		GPIO_PinOutClear(gpioPortB, 11);
	else
		GPIO_PinOutSet(gpioPortB, 11);
}

void LED1_HalInit(void){
	CMU_ClockEnable(cmuClock_GPIO, true);
	GPIO_PinModeSet(gpioPortB, 11, gpioModePushPull, 1);
}


//////////////////////////////////////////////////////////////////////////
// 1·����  PB15
//////////////////////////////////////////////////////////////////////////
uint8_t KEY1_Get(void){
	return (!GPIO_PinInGet(gpioPortB, 15))?1:0;
}
extern void key1Pressed_Callback(void);
void KEY1_pdCB(void){
	key1Pressed_Callback();
}
extern void key1Released_Callback(uint32_t tim);
void KEY1_rdCB(uint32_t tim){
	key1Released_Callback(tim);
}
extern void key1PersistPressed_Callback(uint32_t tim);
void KEY1_ppCB(uint32_t tim){
	key1PersistPressed_Callback(tim);
}

void KEY1_HalInit(void){
	CMU_ClockEnable(cmuClock_GPIO, true);
	GPIO_PinModeSet(gpioPortB, 15, gpioModeInput, 1);
}


