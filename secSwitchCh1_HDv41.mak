# Architecture directories
ARCHITECTURE_DIR = efr32
BUILD_DIR = build
OUTPUT_DIR = $(BUILD_DIR)/$(ARCHITECTURE_DIR)
LST_DIR = lst
PROJECTNAME = secSwitchCh1_HDv41

# Stack and submodule directories
GLOBAL_BASE_DIR     = ../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/..

SOURCE_FILES = \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emdrv/dmadrv/src/dmadrv.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emdrv/gpiointerrupt/src/gpiointerrupt.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emdrv/rtcdrv/src/rtcdriver.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emdrv/sleep/src/sleep.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emdrv/tempdrv/src/tempdrv.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emdrv/ustimer/src/ustimer.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emlib/src/em_adc.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emlib/src/em_cmu.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emlib/src/em_core.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emlib/src/em_cryotimer.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emlib/src/em_emu.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emlib/src/em_gpio.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emlib/src/em_i2c.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emlib/src/em_ldma.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emlib/src/em_leuart.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emlib/src/em_msc.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emlib/src/em_prs.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emlib/src/em_rmu.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emlib/src/em_rtcc.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emlib/src/em_se.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emlib/src/em_system.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emlib/src/em_timer.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emlib/src/em_usart.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emlib/src/em_wdog.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../Device/SiliconLabs/EFR32MG13P/Source/system_efr32mg13p.c \
./znet-bookkeeping.c \
./call-command-handler.c \
./callback-stub.c \
./stack-handler-stub.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32/assert-crash-handlers.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32/button.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/plugin/buzzer/buzzer-efr32.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/../util/serial/command-interpreter2.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/generic/crc.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32/cstartup-common.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32/diagnostic.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/../../stack/config/ember-configuration.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/generic/endian.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32/faults-v7m.s79 \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32/isr-stubs.s79 \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32/led.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/../util/common/library.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/generic/mem-util.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32/mfg-token.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32/micro-common.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32/micro.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32/mpu.c \
./znet-cli.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/generic/random.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/../util/security/security-address-cache.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/ember-base-configuration.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32/sleep-efm32.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/generic/token-def.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32/token.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32/ext-device.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/../util/zigbee-framework/zigbee-device-common.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/../util/zigbee-framework/zigbee-device-library.c \
  ../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32/bootloader-interface-app.c \
  ../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32/bootloader-interface.c \
  ../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/plugin/serial/cortexm/efm32/com.c \
  ../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/bootloader/api/btl_interface.c \
  ../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/bootloader/api/btl_interface_storage.c \
  ../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/emdrv/uartdrv/src/uartdrv.c \
 \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform\base\hal\plugin\adc\adc-efr32.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\aes-cmac\aes-cmac.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform\base\hal\plugin\antenna-stub\antenna-stub.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\basic\basic.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\stack\framework\ccm-star.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform\radio\rail_lib\plugin\coexistence\protocol\ieee802154\coexistence-802154.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform\radio\rail_lib\plugin\coexistence\protocol\ieee802154\coulomb-counter-802154.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\counters\counters-cli.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\counters\counters-ota.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\counters\counters-soc.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\plugin\plugin-common\eeprom\eeprom.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\plugin\plugin-afv2\eeprom\eeprom-afv2.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\plugin\plugin-common\eeprom\eeprom-cli.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform\base\hal\plugin\serial\ember-printf.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\find-and-bind-target\find-and-bind-target.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\find-and-bind-target\find-and-bind-target-cli.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\green-power-client\green-power-client.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\green-power-client\green-power-client-cli.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\green-power-common\green-power-common.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\groups-server\groups-server.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\groups-server\groups-server-cli.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform\base\hal\micro\cortexm3\efm32\hal-config.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform\base\hal\micro\cortexm3\efm32\hal-config-gpio.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\identify\identify.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\identify\identify-cli.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\interpan\interpan.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\interpan\interpan-cli.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\interpan\interpan-soc.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\sl_crypto\src\aes_aes.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\sl_crypto\src\crypto_aes.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\sl_crypto\src\crypto_ble.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\sl_crypto\src\crypto_ecp.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\sl_crypto\src\crypto_management.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\sl_crypto\src\crypto_sha.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\sl_crypto\src\cryptoacc_aes.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\sl_crypto\src\cryptoacc_ccm.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\sl_crypto\src\cryptoacc_cmac.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\sl_crypto\src\cryptoacc_ecp.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\sl_crypto\src\cryptoacc_gcm.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\sl_crypto\src\cryptoacc_management.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\sl_crypto\src\cryptoacc_sha.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\sl_crypto\src\cryptoacc_trng.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\sl_crypto\src\entropy_adc.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\sl_crypto\src\entropy_rail.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\sl_crypto\src\radioaes.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\sl_crypto\src\radioaes_aes.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\sl_crypto\src\radioaes_ble.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\sl_crypto\src\se_aes.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\sl_crypto\src\se_ccm.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\sl_crypto\src\se_cmac.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\sl_crypto\src\se_ecp.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\sl_crypto\src\se_jpake.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\sl_crypto\src\se_management.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\sl_crypto\src\se_sha.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\sl_crypto\src\se_trng.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\sl_crypto\src\shax.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\sl_crypto\src\trng.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\aes.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\aesni.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\arc4.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\asn1parse.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\asn1write.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\base64.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\bignum.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\blowfish.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\camellia.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\ccm.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\certs.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\cipher.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\cipher_wrap.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\cmac.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\ctr_drbg.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\debug.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\des.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\dhm.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\ecdh.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\ecdsa.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\ecjpake.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\ecp.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\ecp_curves.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\entropy.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\entropy_poll.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\error.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\gcm.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\havege.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\hmac_drbg.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\md.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\md2.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\md4.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\md5.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\md_wrap.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\memory_buffer_alloc.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\net_sockets.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\oid.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\padlock.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\pem.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\pk.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\pk_wrap.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\pkcs11.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\pkcs12.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\pkcs5.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\pkparse.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\pkwrite.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\ripemd160.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\rsa.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\rsa_internal.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\sha1.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\sha256.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\sha512.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\ssl_cache.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\ssl_ciphersuites.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\ssl_cli.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\ssl_cookie.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\ssl_srv.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\ssl_ticket.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\ssl_tls.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\threading.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\timing.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\version.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\version_features.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\x509.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\x509_create.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\x509_crl.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\x509_crt.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\x509_csr.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\x509write_crt.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\x509write_csr.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util\third_party\mbedtls\library\xtea.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\network-steering\network-steering.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\network-steering\network-steering-cli.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\network-steering\network-steering-v2.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\network-steering\network-steering-soc.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\on-off\on-off.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\ota-bootload\ota-bootload-cli.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\ota-bootload\ota-bootload-soc.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\ota-client\ota-client.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\ota-client\ota-client-signature-verify.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\ota-client\ota-client-page-request.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\ota-client\ota-client-cli.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\ota-client-policy\ota-client-policy.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\ota-common\ota-common.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\ota-storage-common\ota-storage-common.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\ota-storage-common\ota-storage-common-cli.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\ota-storage-simple\ota-storage-simple.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\ota-storage-simple-eeprom\ota-storage-eeprom.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\ota-storage-simple-eeprom\ota-storage-eeprom-page-erase.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\ota-storage-simple-eeprom\ota-storage-eeprom-read-modify-write.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\reporting\reporting.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\reporting\reporting-cli.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\reporting\reporting-default-configuration.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\scan-dispatch\scan-dispatch.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\scenes\scenes.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\scenes\scenes-cli.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform\base\hal\plugin\serial\serial.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform\base\hal\plugin\sim-eeprom2\sim-eeprom2.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\simple-main\simple-main.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\stack\framework\strong-random-api.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\update-tc-link-key\update-tc-link-key.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\update-tc-link-key\update-tc-link-key-cli.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\cli\core-cli.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\cli\network-cli.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\cli\option-cli.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\cli\plugin-cli.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\cli\security-cli.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\cli\zcl-cli.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\cli\zdo-cli.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\security\af-node.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\security\af-security-common.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\security\af-trust-center.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\security\crypto-state.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\util\af-event.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\util\af-main-common.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\util\attribute-size.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\util\attribute-storage.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\util\attribute-table.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\util\client-api.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\util\message.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\util\multi-network.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\util\print.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\util\print-formatter.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\util\process-cluster-message.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\util\process-global-message.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\util\service-discovery-common.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\util\time-util.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\util\util.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\util\af-main-soc.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\util\service-discovery-soc.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\zll-on-off-server\zll-on-off-server.c \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\app\framework\plugin\zll-scenes-server\zll-scenes-server.c \
 \
secSwitchCh1_HDv41_callbacks.c \ \

LIB_FILES = \
 \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\build\binding-table-library-cortexm3-gcc-efr32mg13p-rail\binding-table-library.a \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\build\cbke-163k1-stub-library-cortexm3-gcc-efr32mg13p-rail\cbke-163k1-stub-library.a \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\build\cbke-283k1-stub-library-cortexm3-gcc-efr32mg13p-rail\cbke-283k1-stub-library.a \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\build\cbke-stub-library-cortexm3-gcc-efr32mg13p-rail\cbke-stub-library.a \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\build\cbke-library-dsa-sign-stub-cortexm3-gcc-efr32mg13p-rail\cbke-library-dsa-sign-stub.a \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\build\cbke-library-dsa-verify-stub-cortexm3-gcc-efr32mg13p-rail\cbke-library-dsa-verify-stub.a \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\build\cbke-library-dsa-verify-283k1-stub-cortexm3-gcc-efr32mg13p-rail\cbke-library-dsa-verify-283k1-stub.a \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\build\debug-basic-stub-library-cortexm3-gcc-efr32mg13p-rail\debug-basic-stub-library.a \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\build\debug-extended-stub-library-cortexm3-gcc-efr32mg13p-rail\debug-extended-stub-library.a \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\build\end-device-bind-stub-library-cortexm3-gcc-efr32mg13p-rail\end-device-bind-stub-library.a \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\build\gp-library-cortexm3-gcc-efr32mg13p-rail\gp-library.a \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\build\hal-library-cortexm3-gcc-efr32mg13p-rail\hal-library.a \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\build\install-code-library-cortexm3-gcc-efr32mg13p-rail\install-code-library.a \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\build\multi-network-stub-library-cortexm3-gcc-efr32mg13p-rail\multi-network-stub-library.a \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\build\packet-validate-stub-library-cortexm3-gcc-efr32mg13p-rail\packet-validate-stub-library.a \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform\radio\rail_lib\autogen\librail_release\librail_efr32xg13_gcc_release.a \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\build\security-library-core-cortexm3-gcc-efr32mg13p-rail\security-library-core.a \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\build\security-library-link-keys-stub-cortexm3-gcc-efr32mg13p-rail\security-library-link-keys-stub.a \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\build\sim-eeprom2-library-cortexm3-gcc-efr32mg13p-rail\sim-eeprom2-library.a \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\build\sim-eeprom2-1to2-upgrade-stub-library-cortexm3-gcc-efr32mg13p-rail\sim-eeprom2-1to2-upgrade-stub-library.a \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\build\zigbee-pro-stack-cortexm3-gcc-efr32mg13p-rail\zigbee-pro-stack.a \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\build\zigbee-r22-support-stub-library-cortexm3-gcc-efr32mg13p-rail\zigbee-r22-support-stub-library.a \
../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol\zigbee\build\zll-library-cortexm3-gcc-efr32mg13p-rail\zll-library.a \
 \
 \

CDEFS = -DLOCAL_STORAGE_GECKO_INFO_PAGE_BTL \
-DCORTEXM3 \
-DCORTEXM3_EFR32 \
-DCORTEXM3_EFR32_MICRO \
-DCORTEXM3_EFM32_MICRO \
-DEFR32_SERIES1_CONFIG3_MICRO \
-DEFR32MG13P \
-DEFR32MG13P732F512GM48 \
-DATTRIBUTE_STORAGE_CONFIGURATION=\"secSwitchCh1_HDv41_endpoint_config.h\" \
-DCONFIGURATION_HEADER=\"app/framework/util/config.h\" \
-DGENERATED_TOKEN_HEADER=\"secSwitchCh1_HDv41_tokens.h\" \
-DPLATFORM_HEADER=\"platform/base/hal/micro/cortexm3/compiler/gcc.h\" \
-DZA_GENERATED_HEADER=\"secSwitchCh1_HDv41.h\" \
-DPSSTORE_SIZE=0 \
-DLONGTOKEN_SIZE=0 \
-DLOCKBITS_IN_MAINFLASH_SIZE=0 \
  -DHAL_CONFIG=1 \
  -DEMBER_AF_USE_HWCONF \
  -DNO_LED=1 \
  -DEMBER_AF_API_EMBER_TYPES=\"stack/include/ember-types.h\" \
  -DEMBER_AF_API_DEBUG_PRINT=\"app/framework/util/print.h\" \
  -DEMBER_AF_API_AF_HEADER=\"app/framework/include/af.h\" \
  -DEMBER_AF_API_AF_SECURITY_HEADER=\"app/framework/security/af-security.h\" \
  -DEMBER_STACK_ZIGBEE \
  -DMBEDTLS_CONFIG_FILE=\"mbedtls-config-generated.h\" \
  -DUSE_SIMEE2 \
  -DEMLIB_USER_CONFIG \
  -DAPPLICATION_TOKEN_HEADER=\"znet-token.h\" \
  -DAPPLICATION_MFG_TOKEN_HEADER=\"znet-mfg-token.h\" \
  -DMBEDTLS_DEVICE_ACCELERATION_CONFIG_FILE=\"configs/config-device-acceleration.h\" \
  -DMBEDTLS_DEVICE_ACCELERATION_CONFIG_APP_FILE=\"config-device-acceleration-app.h\" \
  -DPHY_RAIL=1 \
  -DMBEDTLS_DEVICE_ACCELERATION_CONFIG_FILE=\"configs/config-device-acceleration.h\" \
  -DMBEDTLS_DEVICE_ACCELERATION_CONFIG_APP_FILE=\"config-device-acceleration-app.h\" \
  -DPHY_RAIL=1 \
 \

ASMDEFS = -DLOCAL_STORAGE_GECKO_INFO_PAGE_BTL \
-DCORTEXM3 \
-DCORTEXM3_EFR32 \
-DCORTEXM3_EFR32_MICRO \
-DCORTEXM3_EFM32_MICRO \
-DEFR32_SERIES1_CONFIG3_MICRO \
-DEFR32MG13P \
-DEFR32MG13P732F512GM48 \
-DATTRIBUTE_STORAGE_CONFIGURATION=\"secSwitchCh1_HDv41_endpoint_config.h\" \
-DCONFIGURATION_HEADER=\"app/framework/util/config.h\" \
-DGENERATED_TOKEN_HEADER=\"secSwitchCh1_HDv41_tokens.h\" \
-DPLATFORM_HEADER=\"platform/base/hal/micro/cortexm3/compiler/gcc.h\" \
-DZA_GENERATED_HEADER=\"secSwitchCh1_HDv41.h\" \
-DPSSTORE_SIZE=0 \
-DLONGTOKEN_SIZE=0 \
-DLOCKBITS_IN_MAINFLASH_SIZE=0 \
  -DHAL_CONFIG=1 \
  -DEMBER_AF_USE_HWCONF \
  -DNO_LED=1 \
  -DEMBER_AF_API_EMBER_TYPES=\"stack/include/ember-types.h\" \
  -DEMBER_AF_API_DEBUG_PRINT=\"app/framework/util/print.h\" \
  -DEMBER_AF_API_AF_HEADER=\"app/framework/include/af.h\" \
  -DEMBER_AF_API_AF_SECURITY_HEADER=\"app/framework/security/af-security.h\" \
  -DEMBER_STACK_ZIGBEE \
  -DMBEDTLS_CONFIG_FILE=\"mbedtls-config-generated.h\" \
  -DUSE_SIMEE2 \
  -DEMLIB_USER_CONFIG \
  -DAPPLICATION_TOKEN_HEADER=\"znet-token.h\" \
  -DAPPLICATION_MFG_TOKEN_HEADER=\"znet-mfg-token.h\" \
  -DMBEDTLS_DEVICE_ACCELERATION_CONFIG_FILE=\"configs/config-device-acceleration.h\" \
  -DMBEDTLS_DEVICE_ACCELERATION_CONFIG_APP_FILE=\"config-device-acceleration-app.h\" \
  -DPHY_RAIL=1 \
  -DMBEDTLS_DEVICE_ACCELERATION_CONFIG_FILE=\"configs/config-device-acceleration.h\" \
  -DMBEDTLS_DEVICE_ACCELERATION_CONFIG_APP_FILE=\"config-device-acceleration-app.h\" \
  -DPHY_RAIL=1 \
 \

CINC = -I./ \
-I$(ARM_IAR7_DIR)/ARM/INC \
-I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6 \
-I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework \
-I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/../.. \
-I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/../../stack \
-I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/../util \
-I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/include \
-I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal \
-I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/plugin \
-I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/.. \
-I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32 \
-I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32/config \
-I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/cortexm3/efm32/efr32 \
-I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../CMSIS/Include \
-I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../Device/SiliconLabs/efr32mg13p/Include \
-I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emdrv/common/inc \
-I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emdrv/config \
-I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emdrv/dmadrv/inc \
-I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emdrv/gpiointerrupt/inc \
-I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emdrv/rtcdrv/inc \
-I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emdrv/sleep/inc \
-I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emdrv/spidrv/inc \
-I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emdrv/tempdrv/inc \
-I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emdrv/uartdrv/inc \
-I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emdrv/ustimer/inc \
-I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../emlib/inc \
-I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../middleware/glib \
-I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../middleware/glib/glib \
-I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/../../radio/rail_lib/plugin \
-I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/halconfig/inc/hal-config \
-I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/hardware/module/config \
-I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/hardware/kit/common/halconfig \
-I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/hardware/kit/common/bsp \
  -Ihal-config \
  -I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/bootloader \
  -I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/radio/rail_lib/chip/efr32/efr32xg1x \
  -I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/radio/rail_lib/common \
  -I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/radio/rail_lib/plugin/coexistence/common \
  -I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/radio/rail_lib/plugin/coexistence/hal/efr32 \
  -I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154 \
  -I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/radio/rail_lib/protocol/ble \
  -I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/radio/rail_lib/protocol/ieee802154 \
  -I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/platform/radio/rail_lib/protocol/zwave \
  -I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util/plugin/plugin-common/mbedtls \
  -I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls \
  -I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/include \
  -I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/include/mbedtls \
  -I../../../soft/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/sl_crypto/include \
 \

TARGET = secSwitchCh1_HDv41

CSOURCES = $(filter %.c, $(SOURCE_FILES))
ASMSOURCES = $(filter %.s79, $(SOURCE_FILES))
ASMSOURCES2 = $(filter %.s, $(SOURCE_FILES))

COBJS = $(addprefix $(OUTPUT_DIR)/,$(CSOURCES:.c=.o))
ASMOBJS = $(addprefix $(OUTPUT_DIR)/,$(ASMSOURCES:.s79=.o))
ASMOBJS2 = $(addprefix $(OUTPUT_DIR)/,$(ASMSOURCES2:.s=.o))

OUTPUT_DIRS = $(sort $(dir $(COBJS)) $(dir $(ASMOBJS)) $(dir $(ASMOBJS2)))

ARCHITECTUREID = efr32~family[m]~series[1]~device_configuration[3]~performance[p]~radio[732]~flash[512k]~temp[g]~package[m]~pins[48]~!module+none+gcc

# GNU ARM compiler
ifeq ($(findstring +gcc,$(ARCHITECTUREID)), +gcc)
$(info GCC Build)
	# Add linker circular reference as the order of objects may matter for any libraries used
	GROUP_START =-Wl,--start-group
	GROUP_END =-Wl,--end-group

	CCFLAGS = -g3 \
    -gdwarf-2 \
    -mcpu=cortex-m4 \
    -mthumb \
    -std=gnu99 \
    -Os  \
    -Wall  \
    -c  \
    -fmessage-length=0  \
    -ffunction-sections  \
    -fdata-sections  \
    -mfpu=fpv4-sp-d16  \
    -mfloat-abi=softfp \
	$(CDEFS) \
	$(CINC) \

	ASMFLAGS = -c \
	-g3 \
	-gdwarf-2 \
	-mcpu=cortex-m4 \
	-mthumb \
	-c \
	-x assembler-with-cpp \
	$(CINC) \
	$(ASMDEFS)

	LDFLAGS = -g3 \
	-gdwarf-2 \
	-mcpu=cortex-m4 \
	-mthumb -T "$(GLOBAL_BASE_DIR)/hal/micro/cortexm3/efm32/gcc-cfg.ld" \
	-L"$(GLOBAL_BASE_DIR)/hal/micro/cortexm3/" \
	-Xlinker --defsym="SIMEEPROM_SIZE=36864" \
	-Xlinker --defsym="PSSTORE_SIZE=0" \
	-Xlinker --defsym="LONGTOKEN_SIZE=0" \
	-Xlinker --defsym="LOCKBITS_IN_MAINFLASH_SIZE=0" \
	-Xlinker --defsym="FLASH_SIZE=524288" \
	-Xlinker --defsym="RAM_SIZE=65536" \
	-Xlinker --defsym="FLASH_PAGE_SIZE=2048" \
	-Xlinker --defsym="APP_BTL=1" \
	-Xlinker --defsym="EMBER_MALLOC_HEAP_SIZE=0" \
	-Xlinker --defsym="HEADER_SIZE=256" \
	-Xlinker --gc-sections \
	-Xlinker -Map="$(PROJECTNAME).map" \
	-mfpu=fpv4-sp-d16 \
	-mfloat-abi=softfp --specs=nano.specs -u _printf_float \
	-Wl,--start-group -lgcc -lc -lnosys   -Wl,--end-group

	ARCHFLAGS = r

	ELFTOOLFLAGS_BIN = -O binary
	ELFTOOLFLAGS_HEX = -O ihex
	ELFTOOLFLAGS_S37 = -O srec

	ifeq ($(OS),Windows_NT)
		ARCH = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc-ar.exe
		AS = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc.exe
		CC = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc.exe
		ELFTOOL = $(ARM_GNU_DIR)/bin/arm-none-eabi-objcopy.exe
		LD = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc.exe
	else
		ARCH = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc-ar
		AS = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc
		CC = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc
		ELFTOOL = $(ARM_GNU_DIR)/bin/arm-none-eabi-objcopy
		LD = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc
	endif

endif

# IAR 7.xx toolchain
ifeq ($(findstring +iar,$(ARCHITECTUREID)), +iar)
$(info IAR Build)

	# IAR is not sensitive to linker lib order thus no groups needed.
	GROUP_START =
	GROUP_END =
	CINC += -I$(ARM_IAR6_DIR)/ARM/INC

	ifndef ARM_IAR7_DIR
	$(error ARM_IAR7_DIR is not set. Please define ARM_IAR7_DIR pointing to your IAR 7.xx installation folder.)
	endif

	CCFLAGS = --cpu=cortex-m3 \
	--cpu_mode=thumb \
	--diag_suppress=Pa050 \
	-e \
	--endian=little \
	--fpu=none \
	--no_path_in_file_macros \
	--separate_cluster_for_initialized_variables \
	--dlib_config=$(ARM_IAR7_DIR)/ARM/inc/c/DLib_Config_Normal.h \
	--debug \
	--dependencies=m $*.d \
	-Ohz \
	$(CDEFS) \
	$(CINC)

	ASMFLAGS = --cpu cortex-M3 \
	--fpu None \
	-s+ \
	"-M<>" \
	-w+ \
	-t2 \
	-r \
	$(CINC) \
	$(ASMDEFS)

	LDFLAGS = --entry __iar_program_start \
	--diag_suppress=Lp012 \
	--config $(GLOBAL_BASE_DIR)/hal/micro/cortexm3/efm32/iar-cfg.icf \
	--config_def LOCAL_STORAGE_GECKO_INFO_PAGE_BTL=1 \
	--config_def EMBER_MALLOC_HEAP_SIZE=0

	ARCH = $(JAMEXE_PREFIX) $(ARM_IAR7_DIR)/arm/bin/iarchive.exe
	AS = $(JAMEXE_PREFIX) $(ARM_IAR7_DIR)/arm/bin/iasmarm.exe
	CC = $(JAMEXE_PREFIX) $(ARM_IAR7_DIR)/arm/bin/iccarm.exe
	ELFTOOL = $(JAMEXE_PREFIX) $(ARM_IAR7_DIR)/arm/bin/ielftool.exe
	LD = $(JAMEXE_PREFIX) $(ARM_IAR7_DIR)/arm/bin/ilinkarm.exe

	# No archiver arguments needed for IAR.
	ARCHFLAGS =

	ELFTOOLFLAGS_BIN = --bin
	ELFTOOLFLAGS_HEX = --ihex
	ELFTOOLFLAGS_S37 = --srec --srec-s3only

endif

.PHONY: all clean PROLOGUE

all: PROLOGUE $(OUTPUT_DIRS) $(COBJS) $(ASMOBJS) $(ASMOBJS2) $(LIB_FILES)
	@echo 'Linking...'
	@$(LD) $(GROUP_START) $(LDFLAGS) $(COBJS) $(ASMOBJS) $(ASMOBJS2) $(LIB_FILES) $(GROUP_END) -o $(OUTPUT_DIR)/$(TARGET).out
	@$(ELFTOOL) $(OUTPUT_DIR)/$(TARGET).out $(ELFTOOLFLAGS_BIN) $(OUTPUT_DIR)/$(TARGET).bin
	@$(ELFTOOL) $(OUTPUT_DIR)/$(TARGET).out $(ELFTOOLFLAGS_HEX) $(OUTPUT_DIR)/$(TARGET).hex
	@$(ELFTOOL) $(OUTPUT_DIR)/$(TARGET).out $(ELFTOOLFLAGS_S37) $(OUTPUT_DIR)/$(TARGET).s37
	@echo 'Done.'

PROLOGUE:
#	@echo $(COBJS)
#	@echo $(ASMOBJS)
#	@echo $(ASMOBJS2)

$(OUTPUT_DIRS):
	@mkdir -p $@

$(COBJS): %.o:
	@echo 'Building $(notdir $(@:%.o=%.c))...'
	@$(CC) $(CCFLAGS) -o $@ $(filter %$(@:$(OUTPUT_DIR)/%.o=%.c),$(CSOURCES)) > /dev/null \

$(ASMOBJS): %.o:
	@echo 'Building $(notdir $(@:%.o=%.s79))...'
	@$(AS) $(ASMFLAGS) -o $@ $(filter %$(@:$(OUTPUT_DIR)/%.o=%.s79),$(ASMSOURCES)) > /dev/null

$(ASMOBJS2): %.o:
	@echo 'Building $(notdir $(@:%.o=%.s))...'
	@$(AS) $(ASMFLAGS) -o $@ $(filter %$(@:$(OUTPUT_DIR)/%.o=%.s),$(ASMSOURCES2)) > /dev/null

clean:
	$(RM) -r $(COBJS)
	$(RM) -r $(ASMOBJS)
	$(RM) -r $(ASMOBJS2)
	$(RM) -r $(OUTPUT_DIR)