#include "../common.h"



EmberEventControl _HD_HeartBeat_EC;
void _HD_HeartBeat_EF(void){
	emberEventControlSetInactive(_HD_HeartBeat_EC);

	_zcmd_ReadResponse(254, 0, 0x0000, 0x0005, 1, 1, 0x0000);
	DEBUG("__HD HeartBeat !");


	emberEventControlSetDelayMS(_HD_HeartBeat_EC, _HD_HEARTBEAT_PERIOD);

}

void _HD_Heartbeat_Start(void){
	emberEventControlSetDelayMS(_HD_HeartBeat_EC, _HD_HEARTBEAT_PERIOD);
}

// 恒大专供
// 序列式离网处理
// 1.发送5次leave通知至网关
// 2.离网
EmberEventControl _HD_NWKLeave_EC;
void _HD_NWKLeave_EF(void){
	emberEventControlSetInactive(_HD_NWKLeave_EC);
#if 0
	static uint8_t _seq_ = 0;
	static uint8_t _cnt_com1_ = 0;
	switch(_seq_){
	// 多次发送leave通知至协调器
	case 0:
		// TODO
		//////////////
		if(++_cnt_com1_ >= 5){
			_seq_++;
		}
		break;
	// 正式离网
	case 1:
		emberLeaveNetwork();
		_ifClearSceneBindGroup = false;
		startCommissioning(7000);
		_seq_ = 0;
		return;

	default:
		break;
	}

	emberEventControlSetDelayMS(_HD_NWKLeave_EC, 50);
#endif
}
