//****************** ECE319K_Lab2.s ***************
// Your solution to Lab 2 in assembly code
// Author: Akshay Karthik
// Last Modified: 2/4/2025
// ECE319K Spring 2025 (ECE319H students do Lab2H)
// I/O port addresses
    .include "../inc/msp.s"

        .data
        .align 2
// Declare global variables here if needed
// with the .space assembly directive
        .text
        .thumb
        .align 2
        .global EID
EID:    .string "AK54582" // replace ZZZ123 with your EID here
        .align 2
        
        .align 2
        .global dutycycles //Intialize array for the four dutycycles 
        dutycycles: .long 240000
                    .long 560000
                    .long 720000
                    .long 1200000    
        .align 2


// this allow your Lab2 programs to the Lab2 grader
        .global Lab2Grader
// this allow the Lab2 grader to call your Lab2 program
        .global Lab2
// these two allow your Lab2 programs to all your Lab3 solutions
        .global Debug_Init
        .global Dump

// Switch input: PB2 PB1 or PB0, depending on EID
// LED output:   PB18 PB17 or PB16, depending on EID
// logic analyzer pins PB18 PB17 PB16 PB2 PB1 PB0
// analog scope pin PB20
Lab2:
// Initially the main program will
//   set bus clock at 80 MHz,
//   reset and power enable both Port A and Port B
// Lab2Grader will
//   configure interrupts  on TIMERG0 for grader or TIMERG7 for TExaS
//   initialize ADC0 PB20 for scope,
//   initialize UART0 for grader or TExaS
     MOVS R0,#10
// 0 for info,
// 1 debug with logic analyzer,
// 2 debug with scope,
// 3 debug without scope or logic analyzer
// 10 for grade

     BL   Lab2Grader
     BL   Debug_Init // your Lab3 (ignore this line while doing Lab 2)
     BL   Lab2Init //intialization of pins

cycle1:
        BL LED_LightOn
        BL Dump
        LDR R4, = 240000
        BL DelayLight
        BL LED_LightOff
        BL Dump
        LDR R4, = 1360000
        BL DelayLight
        BL Switch_In
        CMP R1, #1
        BEQ isPressed
        B cycle1

cycle2:
        BL LED_LightOn
        BL Dump
        LDR R4, = 560000
        BL DelayLight
        BL LED_LightOff
        BL Dump
        LDR R4, = 1040000
        BL DelayLight
        BL Switch_In
        CMP R1, #1
        BEQ isPressed2
        B cycle2

cycle3:
        BL LED_LightOn
        BL Dump
        LDR R4, = 720000
        BL DelayLight
        BL LED_LightOff
        BL Dump
        LDR R4, = 880000
        BL DelayLight
        BL Switch_In
        CMP R1, #1
        BEQ isPressed3
        B cycle3

cycle4:
        BL LED_LightOn
        BL Dump
        LDR R4, = 1200000
        BL DelayLight
        BL LED_LightOff
        BL Dump
        LDR R4, = 400000
        BL DelayLight
        BL Switch_In
        CMP R1, #1
        BEQ isPressed4
        B cycle4

        
        isPressed:
        BL Switch_In
        CMP R1, #0
        BEQ cycle2
        B isPressed

        isPressed2:
        BL Switch_In
        CMP R1, #0
        BEQ cycle3
        B isPressed2

        isPressed3:
        BL Switch_In
        CMP R1, #0
        BEQ cycle4
        B isPressed3

        isPressed4:
        BL Switch_In
        CMP R1, #0
        BEQ cycle1
        B isPressed4

LED_LightOn: //Output turns on the LED
        LDR R0, =GPIOB_DOUT31_0
        LDR R1, [R0]
        LDR R2, =0x0020000
        ORRS R1, R1, R2
        STR R1, [R0]
        BX LR

LED_LightOff: //Output turns off the LED
        //PUSH{R0}
        LDR R0, =GPIOB_DOUT31_0
        LDR R1, [R0]
        LDR R2, =0x0020000
        BICS R1, R1, R2
        STR R1, [R0]
        BX LR
        //POP{R0}

Switch_In: //Switch input
        LDR R0, =GPIOB_DIN31_0
        LDR R1, [R0]
        LDR R2, =0x01
        ANDS R1, R1, R2
        //LSRS R0, R1, #3
        BX LR

DelayLight:  
        .align 2
        SUBS R4, R4, #2
        //PUSH{R0}
dloop:  
        SUBS R4, R4, #4
        NOP
        BHS dloop
        //POP{R0}
        BX LR   

Lab2Init:
        PB17_Init: // PB17 output
        MOVS R1,0x81
        LDR R0,=IOMUXPB17 // PINCM
        LDR R2, [R0]
        ORRS R2, R2, R1
        STR R2,[R0] // PB17 is GPIO

        PB0_Init: // PB0 input
        LDR R0,=IOMUXPB0 // PINCM
        LDR R1,=0x00040081
        LDR R2, [R0]
        ORRS R2, R2, R1
        STR R2,[R0] // GPIO input

        LDR R0,=GPIOB_DOE31_0
        LDR R1,=(1<<17) // mask
        LDR R2,[R0] // previous
        ORRS R2,R2,R1 // friendly
        STR R2,[R0] // enable out
        BX LR



        

// ***do not reset/power Port A or Port B, already done****

        
   .end
