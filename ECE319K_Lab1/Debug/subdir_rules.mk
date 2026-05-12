################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
Clock.o: E:/Box/Box\ Sync/ECE319K/MSPM0Software/MSPM0_ValvanoWare/inc/Clock.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"C:/ti/ccs2020/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/bin/tiarmclang.exe" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -O0 -I"E:/Box/Box Sync/ECE319K/MSPM0Software/MSPM0_ValvanoWare/ECE319K_Lab1" -I"E:/Box/Box Sync/ECE319K/MSPM0Software/MSPM0_ValvanoWare/ECE319K_Lab1/Debug" -I"C:/ti/mspm0_sdk_2_03_00_07/source/third_party/CMSIS/Core/Include" -I"C:/ti/mspm0_sdk_2_03_00_07/source" -D__MSPM0G3507__ -gdwarf-3 -MMD -MP -MF"Clock.d_raw" -MT"Clock.o" -I"E:/Box/Box Sync/ECE319K/MSPM0Software/MSPM0_ValvanoWare/ECE319K_Lab1/Debug/syscfg" -std=c99 $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

ECE319K_Lab1.o: ../ECE319K_Lab1.s $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"C:/ti/ccs2020/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/bin/tiarmclang.exe" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -O0 -I"E:/Box/Box Sync/ECE319K/MSPM0Software/MSPM0_ValvanoWare/ECE319K_Lab1" -I"E:/Box/Box Sync/ECE319K/MSPM0Software/MSPM0_ValvanoWare/ECE319K_Lab1/Debug" -I"C:/ti/mspm0_sdk_2_03_00_07/source/third_party/CMSIS/Core/Include" -I"C:/ti/mspm0_sdk_2_03_00_07/source" -gdwarf-3 -I"E:/Box/Box Sync/ECE319K/MSPM0Software/MSPM0_ValvanoWare/ECE319K_Lab1/Debug/syscfg" $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

%.o: ../%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"C:/ti/ccs2020/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/bin/tiarmclang.exe" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -O0 -I"E:/Box/Box Sync/ECE319K/MSPM0Software/MSPM0_ValvanoWare/ECE319K_Lab1" -I"E:/Box/Box Sync/ECE319K/MSPM0Software/MSPM0_ValvanoWare/ECE319K_Lab1/Debug" -I"C:/ti/mspm0_sdk_2_03_00_07/source/third_party/CMSIS/Core/Include" -I"C:/ti/mspm0_sdk_2_03_00_07/source" -D__MSPM0G3507__ -gdwarf-3 -MMD -MP -MF"$(basename $(<F)).d_raw" -MT"$(@)" -I"E:/Box/Box Sync/ECE319K/MSPM0Software/MSPM0_ValvanoWare/ECE319K_Lab1/Debug/syscfg" -std=c99 $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

LaunchPad.o: E:/Box/Box\ Sync/ECE319K/MSPM0Software/MSPM0_ValvanoWare/inc/LaunchPad.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"C:/ti/ccs2020/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/bin/tiarmclang.exe" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -O0 -I"E:/Box/Box Sync/ECE319K/MSPM0Software/MSPM0_ValvanoWare/ECE319K_Lab1" -I"E:/Box/Box Sync/ECE319K/MSPM0Software/MSPM0_ValvanoWare/ECE319K_Lab1/Debug" -I"C:/ti/mspm0_sdk_2_03_00_07/source/third_party/CMSIS/Core/Include" -I"C:/ti/mspm0_sdk_2_03_00_07/source" -D__MSPM0G3507__ -gdwarf-3 -MMD -MP -MF"LaunchPad.d_raw" -MT"LaunchPad.o" -I"E:/Box/Box Sync/ECE319K/MSPM0Software/MSPM0_ValvanoWare/ECE319K_Lab1/Debug/syscfg" -std=c99 $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

UART.o: E:/Box/Box\ Sync/ECE319K/MSPM0Software/MSPM0_ValvanoWare/inc/UART.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"C:/ti/ccs2020/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/bin/tiarmclang.exe" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -O0 -I"E:/Box/Box Sync/ECE319K/MSPM0Software/MSPM0_ValvanoWare/ECE319K_Lab1" -I"E:/Box/Box Sync/ECE319K/MSPM0Software/MSPM0_ValvanoWare/ECE319K_Lab1/Debug" -I"C:/ti/mspm0_sdk_2_03_00_07/source/third_party/CMSIS/Core/Include" -I"C:/ti/mspm0_sdk_2_03_00_07/source" -D__MSPM0G3507__ -gdwarf-3 -MMD -MP -MF"UART.d_raw" -MT"UART.o" -I"E:/Box/Box Sync/ECE319K/MSPM0Software/MSPM0_ValvanoWare/ECE319K_Lab1/Debug/syscfg" -std=c99 $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

UARTbusywait.o: E:/Box/Box\ Sync/ECE319K/MSPM0Software/MSPM0_ValvanoWare/inc/UARTbusywait.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"C:/ti/ccs2020/ccs/tools/compiler/ti-cgt-armllvm_4.0.3.LTS/bin/tiarmclang.exe" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -O0 -I"E:/Box/Box Sync/ECE319K/MSPM0Software/MSPM0_ValvanoWare/ECE319K_Lab1" -I"E:/Box/Box Sync/ECE319K/MSPM0Software/MSPM0_ValvanoWare/ECE319K_Lab1/Debug" -I"C:/ti/mspm0_sdk_2_03_00_07/source/third_party/CMSIS/Core/Include" -I"C:/ti/mspm0_sdk_2_03_00_07/source" -D__MSPM0G3507__ -gdwarf-3 -MMD -MP -MF"UARTbusywait.d_raw" -MT"UARTbusywait.o" -I"E:/Box/Box Sync/ECE319K/MSPM0Software/MSPM0_ValvanoWare/ECE319K_Lab1/Debug/syscfg" -std=c99 $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


