#cria a janela e posiciona no meio da tela
wm title . "FPGA"
#set h [ expr { ( [ winfo vrootheight . ] )/2}]
#set w [ expr { ( [ winfo vrootwidth . ] )/2}]
set h 250
set w 350

set x [ expr { ( [ winfo vrootwidth . ] - $w )/2}]
set y [ expr { ( [ winfo vrootheight . ] - $h )/2}]

#wm geometry . ${w}x${h}+${x}+${y}

#frame fpga
frame .fpga
pack .fpga -fill both
frame .fpga.run -padx 5 -pady 5 -relief raised
grid .fpga.run -row 0 -column 0
button .fpga.run.r -text "RUN" -command {run -all}
grid .fpga.run.r -row 0 -column 0
grid columnconfigure .fpga.run 0 -pad 5
#push_button
#cria o frame do push_button
frame .fpga.push_button -padx 5 -pady 5 -relief raised
#posiciona o frame
grid .fpga.push_button -row 1 -column 0
button .fpga.push_button.key0 -text "KEY0" -command proc0
button .fpga.push_button.key1 -text "KEY1" -command proc1
button .fpga.push_button.key2 -text "KEY2" -command proc2
button .fpga.push_button.key3 -text "KEY3" -command proc3
#cria e posiciona grade para os botoes
grid .fpga.push_button.key0 -row 0 -column 0
grid .fpga.push_button.key1 -row 0 -column 1
grid .fpga.push_button.key2 -row 0 -column 2
grid .fpga.push_button.key3 -row 0 -column 3
grid columnconfigure .fpga.push_button 0 -pad 5
grid columnconfigure .fpga.push_button 1 -pad 5
grid columnconfigure .fpga.push_button 2 -pad 5
grid columnconfigure .fpga.push_button 3 -pad 5
#config
proc proc0 {} {
#     force -freeze /key[0] 1 0
#     force -freeze /key[0] 0 1
}

proc proc1 {} {
#     force -freeze /key[1] 1 0
#     force -freeze /key[1] 0 1
}

proc proc2 {} {
#     force -freeze /key[2] 1 0
#     force -freeze /key[2] 0 1
}

proc proc3 {} {
#     force -freeze /key[3] 1 0
#     force -freeze /key[3] 0 1
}

frame .fpga.switches -padx 5 -pady 5
grid .fpga.switches -row 2 -column 0
#cria
global SW0 SW1 SW2 SW3 SW4 SW5 SW6 SW7 SW8 SW9
checkbutton .fpga.switches.sw0 -text "SW0" -command look_valueSW0 -offvalue false -onvalue true -variable "SW0"
checkbutton .fpga.switches.sw1 -text "SW1" -command look_valueSW1 -offvalue false -onvalue true -variable "SW1"
checkbutton .fpga.switches.sw2 -text "SW2" -command look_valueSW2 -offvalue false -onvalue true -variable "SW2"
checkbutton .fpga.switches.sw3 -text "SW3" -command look_valueSW3 -offvalue false -onvalue true -variable "SW3"
checkbutton .fpga.switches.sw4 -text "SW4" -command look_valueSW4 -offvalue false -onvalue true -variable "SW4"
checkbutton .fpga.switches.sw5 -text "SW5" -command look_valueSW5 -offvalue false -onvalue true -variable "SW5"
checkbutton .fpga.switches.sw6 -text "SW6" -command look_valueSW6 -offvalue false -onvalue true -variable "SW6"
checkbutton .fpga.switches.sw7 -text "SW7" -command look_valueSW7 -offvalue false -onvalue true -variable "SW7"
checkbutton .fpga.switches.sw8 -text "SW8" -command look_valueSW8 -offvalue false -onvalue true -variable "SW8"
checkbutton .fpga.switches.sw9 -text "SW9" -command look_valueSW9 -offvalue false -onvalue true -variable "SW9"
#cria e posiciona grade para os switches
grid .fpga.switches.sw0 -row 1 -column 0
grid .fpga.switches.sw1 -row 1 -column 1
grid .fpga.switches.sw2 -row 1 -column 2
grid .fpga.switches.sw3 -row 1 -column 3
grid .fpga.switches.sw4 -row 1 -column 4
grid .fpga.switches.sw5 -row 1 -column 5
grid .fpga.switches.sw6 -row 1 -column 6
grid .fpga.switches.sw7 -row 1 -column 7
grid .fpga.switches.sw8 -row 1 -column 8
grid .fpga.switches.sw9 -row 1 -column 9
grid columnconfigure .fpga.switches 0 -pad 5
grid columnconfigure .fpga.switches 1 -pad 5
grid columnconfigure .fpga.switches 2 -pad 5
grid columnconfigure .fpga.switches 3 -pad 5
grid columnconfigure .fpga.switches 4 -pad 5
grid columnconfigure .fpga.switches 5 -pad 5
grid columnconfigure .fpga.switches 6 -pad 5
grid columnconfigure .fpga.switches 7 -pad 5
grid columnconfigure .fpga.switches 8 -pad 5
grid columnconfigure .fpga.switches 9 -pad 5
#configuracao
proc look_valueSW0 {} {
    global SW0
    if { $SW0 == true} {
#          force -freeze /SW\[0\] 1
    } else {
#          force -freeze /SW\[0\] 0
    }
}

proc look_valueSW1 {} {
    global SW1
    if { $SW1 == true} {
#         force -freeze /SW\[1\] 1
    } else {
#         force -freeze /SW\[1\] 0
    }
}

proc look_valueSW2 {} {
    global SW2
    if { $SW2 == true} {
#         force -freeze /SW\[2\] 1
    } else {
#         force -freeze /SW\[2\] 0
    }
}

proc look_valueSW3 {} {
    global SW3
    if { $SW3 == true} {
#         force -freeze /SW\[3\] 1
    } else {
#         force -freeze /SW\[3\] 0
    }
}

proc look_valueSW4 {} {
    global SW4
    if { $SW4 == true} {
#         force -freeze /SW\[4\] 1
    } else {
#         force -freeze /SW\[4\] 0
    }
}

proc look_valueSW5 {} {
    global SW5
    if { $SW5 == true} {
#         force -freeze /SW\[5\] 1
    } else {
#         force -freeze /SW\[5\] 0
    }
}

proc look_valueSW6 {} {
    global SW6
    if { $SW6 == true} {
#         force -freeze /SW\[6\] 1
    } else {
#         force -freeze /SW\[6\] 0
    }
}

proc look_valueSW7 {} {
    global SW7
    if { $SW7 == true} {
#         force -freeze /SW\[7\] 1
    } else {
#         force -freeze /SW\[7\] 0
    }
}

proc look_valueSW8 {} {
    global SW8
    if { $SW8 == true} {
#         force -freeze /SW\[8\] 1
    } else {
#         force -freeze /SW\[8\] 0
    }
}

proc look_valueSW9 {} {
    global SW9
    if { $SW9 == true} {
#         force -freeze /SW\[9\] 1
    } else {
#         force -freeze /SW\[9\] 0
    }
}

#LEDs
frame .fpga.led -padx 5 -pady 5
grid .fpga.led -row 3 -column 0
#cria
canvas .fpga.led.lr0 -width 1c -height 2c
canvas .fpga.led.lr1 -width 1c -height 2c
canvas .fpga.led.lr2 -width 1c -height 2c
canvas .fpga.led.lr3 -width 1c -height 2c
canvas .fpga.led.lr4 -width 1c -height 2c
canvas .fpga.led.lr5 -width 1c -height 2c
canvas .fpga.led.lr6 -width 1c -height 2c
canvas .fpga.led.lr7 -width 1c -height 2c
canvas .fpga.led.lr8 -width 1c -height 2c
canvas .fpga.led.lr9 -width 1c -height 2c
grid .fpga.led.lr0 -row 0 -column 0
     .fpga.led.lr0 create oval 0.1c 0.1c 0.9c 0.9c -fill gray -tag lr0
     .fpga.led.lr0 create text 0.5c 1.2c -text "LEDR0"
grid .fpga.led.lr1 -row 0 -column 1
     .fpga.led.lr1 create oval 0.1c 0.1c 0.9c 0.9c -fill gray -tag lr1
     .fpga.led.lr1 create text 0.5c 1.2c -text "LEDR1"
grid .fpga.led.lr2 -row 0 -column 2
     .fpga.led.lr2 create oval 0.1c 0.1c 0.9c 0.9c -fill gray -tag lr1
     .fpga.led.lr2 create text 0.5c 1.2c -text "LEDR2"
grid .fpga.led.lr3 -row 0 -column 3
     .fpga.led.lr3 create oval 0.1c 0.1c 0.9c 0.9c -fill gray -tag lr1
     .fpga.led.lr3 create text 0.5c 1.2c -text "LEDR3"
grid .fpga.led.lr4 -row 0 -column 4
     .fpga.led.lr4 create oval 0.1c 0.1c 0.9c 0.9c -fill gray -tag lr1
     .fpga.led.lr4 create text 0.5c 1.2c -text "LEDR4"
grid .fpga.led.lr5 -row 0 -column 5
     .fpga.led.lr5 create oval 0.1c 0.1c 0.9c 0.9c -fill gray -tag lr1
     .fpga.led.lr5 create text 0.5c 1.2c -text "LEDR5"
grid .fpga.led.lr6 -row 0 -column 6
     .fpga.led.lr6 create oval 0.1c 0.1c 0.9c 0.9c -fill gray -tag lr1
     .fpga.led.lr6 create text 0.5c 1.2c -text "LEDR6"
grid .fpga.led.lr7 -row 0 -column 7
     .fpga.led.lr7 create oval 0.1c 0.1c 0.9c 0.9c -fill gray -tag lr1
     .fpga.led.lr7 create text 0.5c 1.2c -text "LEDR7"
grid .fpga.led.lr8 -row 0 -column 8
     .fpga.led.lr8 create oval 0.1c 0.1c 0.9c 0.9c -fill gray -tag lr1
     .fpga.led.lr8 create text 0.5c 1.2c -text "LEDR8"
grid .fpga.led.lr9 -row 0 -column 9
     .fpga.led.lr9 create oval 0.1c 0.1c 0.9c 0.9c -fill gray -tag lr1
     .fpga.led.lr9 create text 0.5c 1.2c -text "LEDR9"
grid columnconfigure .fpga.led 0 -pad 3
grid columnconfigure .fpga.led 1 -pad 3
grid columnconfigure .fpga.led 2 -pad 3
grid columnconfigure .fpga.led 3 -pad 3
grid columnconfigure .fpga.led 4 -pad 3
grid columnconfigure .fpga.led 5 -pad 3
grid columnconfigure .fpga.led 6 -pad 3
grid columnconfigure .fpga.led 7 -pad 3
grid columnconfigure .fpga.led 8 -pad 3
grid columnconfigure .fpga.led 9 -pad 3
#configuracao

# if {/LEDR[0] = 1} {
#      .fpga.led.lr1 itemconfigure lr1 -fill red
# } elseif {/ledr[0] = 0} {
#      .fpga.led.lr1 itemconfigure lr1 -fill grey
# }
#
# if {/LEDR[1] = 1} {
#      .fpga.led.lr1 itemconfigure lr1 -fill red
# } elseif {/ledr[1] = 0} {
#      .fpga.led.lr1 itemconfigure lr1 -fill grey
# }
#
# if {/LEDR[2] = 1} {
#      .fpga.led.lr2 itemconfigure lr2 -fill red
# } elseif {/LEDR[2] = 0} {
#      .fpga.led.lr2 itemconfigure lr2 -fill grey
# }
#
# if {/LEDR[3] = 1} {
#      .fpga.led.lr3 itemconfigure lr3 -fill red
# } elseif { /LEDR[3] = 0} {
#      .fpga.led.lr3 itemconfigure lr3 -fill grey
# }
#
# if {/LEDR[4] = 1} {
#      .fpga.led.lr4 itemconfigure lr4 -fill red
# } elseif {/LEDR[4] = 0} {
#      .fpga.led.lr4 itemconfigure lr4 -fill grey
# }
#
# if {/LEDR[5] = 1} {
#      .fpga.led.lr5 itemconfigure lr5 -fill red
# } elseif {/LEDR[5] = 0} {
#      .fpga.led.lr5 itemconfigure lr5 -fill grey
# }
#
# if {/LEDR[6] = 1} {
#      .fpga.led.lr6 itemconfigure lr6 -fill red
# } elseif {/LEDR[6] = 0} {
#      .fpga.led.lr6 itemconfigure lr6 -fill grey
# }
#
# if {/LEDR[7] = 1} {
#      .fpga.led.lr7 itemconfigure lr7 -fill red
# } elseif {/LEDR[7] = 0} {
#      .fpga.led.lr7 itemconfigure lr7 -fill grey
# }
#
# if {/LEDR[8] = 1} {
#      .fpga.led.lr8 itemconfigure lr8 -fill red
# } elseif { /LEDR[8] = 0} {
#      .fpga.led.lr8 itemconfigure lr8 -fill grey
# }
#
# if {/LEDR[9] = 1} {
#      .fpga.led.lr9 itemconfigure lr9 -fill red
# } elseif {/LEDR[9] = 0} {
#      .fpga.led.lr9 itemconfigure lr9 -fill grey
# }

#DISPLAY 7 SEG
frame .fpga.ss -padx 5 -padx 5
grid .fpga.ss -row 4 -column 0
#cria
canvas .fpga.ss.s0 -heigh 4c -width 4c
canvas .fpga.ss.s1 -heigh 4c -width 4c
canvas .fpga.ss.s2 -heigh 4c -width 4c
canvas .fpga.ss.s3 -heigh 4c -width 4c
canvas .fpga.ss.s4 -heigh 4c -width 4c
canvas .fpga.ss.s5 -heigh 4c -width 6c
grid .fpga.ss.s0 -row 0 -column 0
     .fpga.ss.s0 create line 2.5c 0.5c 4c 0.5c -fill gray -width 4 -tag ss0_a
     .fpga.ss.s0 create line 4c 0.5c 4c 2c -fill gray -width 4 -tag ss0_b
     .fpga.ss.s0 create line 4c 2c 4c 3.5c -fill gray -width 4 -tag ss0_c
     .fpga.ss.s0 create line 2.5c 3.5c 4c 3.5c -fill gray -width 4 -tag ss0_d
     .fpga.ss.s0 create line 2.5c 3.5c 2.5c 2c -fill gray -width 4 -tag ss0_e
     .fpga.ss.s0 create line 2.5c 0.5c 2.5c 2c -fill gray -width 4 -tag ss0_f
     .fpga.ss.s0 create line 2.5c 2c 4c 2c -fill gray -width 4 -tag ss0_g
     .fpga.ss.s0 create text 3.2c 3.8c -text "HEX0"
grid .fpga.ss.s1 -row 0 -column 1
     .fpga.ss.s1 create line 2.5c 0.5c 4c 0.5c -fill gray -width 4 -tag ss1_a
     .fpga.ss.s1 create line 4c 0.5c 4c 2c -fill gray -width 4 -tag ss1_b
     .fpga.ss.s1 create line 4c 2c 4c 3.5c -fill gray -width 4 -tag ss1_c
     .fpga.ss.s1 create line 2.5c 3.5c 4c 3.5c -fill gray -width 4 -tag ss1_d
     .fpga.ss.s1 create line 2.5c 3.5c 2.5c 2c -fill gray -width 4 -tag ss1_e
     .fpga.ss.s1 create line 2.5c 0.5c 2.5c 2c -fill gray -width 4 -tag ss1_f
     .fpga.ss.s1 create line 2.5c 2c 4c 2c -fill gray -width 4 -tag ss1_g
     .fpga.ss.s1 create text 3.2c 3.8c -text "HEX1"
grid .fpga.ss.s2 -row 0 -column 2
     .fpga.ss.s2 create line 2.5c 0.5c 4c 0.5c -fill gray -width 4 -tag ss2_a
     .fpga.ss.s2 create line 4c 0.5c 4c 2c -fill gray -width 4 -tag ss2_b
     .fpga.ss.s2 create line 4c 2c 4c 3.5c -fill gray -width 4 -tag ss2_c
     .fpga.ss.s2 create line 2.5c 3.5c 4c 3.5c -fill gray -width 4 -tag ss2_d
     .fpga.ss.s2 create line 2.5c 3.5c 2.5c 2c -fill gray -width 4 -tag ss2_e
     .fpga.ss.s2 create line 2.5c 0.5c 2.5c 2c -fill gray -width 4 -tag ss2_f
     .fpga.ss.s2 create line 2.5c 2c 4c 2c -fill gray -width 4 -tag ss2_g
     .fpga.ss.s2 create text 3.2c 3.8c -text "HEX2"
grid .fpga.ss.s3 -row 0 -column 3
     .fpga.ss.s3 create line 2.5c 0.5c 4c 0.5c -fill gray -width 4 -tag ss3_a
     .fpga.ss.s3 create line 4c 0.5c 4c 2c -fill gray -width 4 -tag ss3_b
     .fpga.ss.s3 create line 4c 2c 4c 3.5c -fill gray -width 4 -tag ss3_c
     .fpga.ss.s3 create line 2.5c 3.5c 4c 3.5c -fill gray -width 4 -tag ss3_d
     .fpga.ss.s3 create line 2.5c 3.5c 2.5c 2c -fill gray -width 4 -tag ss3_e
     .fpga.ss.s3 create line 2.5c 0.5c 2.5c 2c -fill gray -width 4 -tag ss3_f
     .fpga.ss.s3 create line 2.5c 2c 4c 2c -fill gray -width 4 -tag ss3_g
     .fpga.ss.s3 create text 3.2c 3.8c -text "HEX3"
grid .fpga.ss.s4 -row 0 -column 4
     .fpga.ss.s4 create line 2.5c 0.5c 4c 0.5c -fill gray -width 4 -tag ss4_a
     .fpga.ss.s4 create line 4c 0.5c 4c 2c -fill gray -width 4 -tag ss4_b
     .fpga.ss.s4 create line 4c 2c 4c 3.5c -fill gray -width 4 -tag ss4_c
     .fpga.ss.s4 create line 2.5c 3.5c 4c 3.5c -fill gray -width 4 -tag ss4_d
     .fpga.ss.s4 create line 2.5c 3.5c 2.5c 2c -fill gray -width 4 -tag ss4_e
     .fpga.ss.s4 create line 2.5c 0.5c 2.5c 2c -fill gray -width 4 -tag ss4_f
     .fpga.ss.s4 create line 2.5c 2c 4c 2c -fill gray -width 4 -tag ss4_g
     .fpga.ss.s4 create text 3.2c 3.8c -text "HEX4"
grid .fpga.ss.s5 -row 0 -column 5
     .fpga.ss.s5 create line 2.5c 0.5c 4c 0.5c -fill gray -width 4 -tag ss5_a
     .fpga.ss.s5 create line 4c 0.5c 4c 2c -fill gray -width 4 -tag ss5_b
     .fpga.ss.s5 create line 4c 2c 4c 3.5c -fill gray -width 4 -tag ss5_c
     .fpga.ss.s5 create line 2.5c 3.5c 4c 3.5c -fill gray -width 4 -tag ss5_d
     .fpga.ss.s5 create line 2.5c 3.5c 2.5c 2c -fill gray -width 4 -tag ss5_e
     .fpga.ss.s5 create line 2.5c 0.5c 2.5c 2c -fill gray -width 4 -tag ss5_f
     .fpga.ss.s5 create line 2.5c 2c 4c 2c -fill gray -width 4 -tag ss5_g
     .fpga.ss.s5 create text 3.2c 3.8c -text "HEX5"
grid columnconfigure .fpga.ss 0 -pad 0
grid columnconfigure .fpga.ss 1 -pad 0
grid columnconfigure .fpga.ss 2 -pad 0
grid columnconfigure .fpga.ss 3 -pad 0
grid columnconfigure .fpga.ss 4 -pad 0
grid columnconfigure .fpga.ss 5 -pad 0
# #HEX0
# if {/HEX0[0] = 1} {
#      .fpga.ss.s0 itemconfigure ss0_a -fill red
# } elseif {/HEX0[0] = 0} {
#      .fpga.ss.s0 itemconfigure ss0_a -fill grey
# }
# if {/HEX0[1] = 1} {
#      .fpga.ss.s0 itemconfigure ss0_b -fill red
# } elseif {/HEX0[1] = 0} {
#      .fpga.ss.s0 itemconfigure ss0_b -fill grey
# }
# if {/HEX0[2] = 1} {
#      .fpga.ss.s0 itemconfigure ss0_c -fill red
# } elseif {/HEX0[2] = 0} {
#      .fpga.ss.s0 itemconfigure ss0_c -fill grey
# }
# if {/HEX0[3] = 1} {
#      .fpga.ss.s0 itemconfigure ss0_d -fill red
# } elseif {/HEX0[3] = 0} {
#      .fpga.ss.s0 itemconfigure ss0_d -fill grey
# }
# if {/HEX0[4] = 1} {
#      .fpga.ss.s0 itemconfigure ss0_e -fill red
# } elseif {/HEX0[4] = 0} {
#      .fpga.ss.s0 itemconfigure ss0_e -fill grey
# }
# if {/HEX0[5] = 1} {
#      .fpga.ss.s0 itemconfigure ss0_f -fill red
# } elseif {/HEX0[5] = 0} {
#      .fpga.ss.s0 itemconfigure ss0_f -fill grey
# }
# if {/HEX0[6] = 1} {
#      .fpga.ss.s0 itemconfigure ss0_g -fill red
# } elseif {/HEX0[6] = 0} {
#      .fpga.ss.s0 itemconfigure ss0_g -fill grey
# }
# #HEX1
# if {/HEX1[0] = 1} {
#      .fpga.ss.s1 itemconfigure ss0_a -fill red
# } elseif {/HEX1[0] = 0} {
#      .fpga.ss.s1 itemconfigure ss0_a -fill grey
# }
# if {/HEX1[1] = 1} {
#      .fpga.ss.s1 itemconfigure ss0_b -fill red
# } elseif {/HEX1[1] = 0} {
#      .fpga.ss.s1 itemconfigure ss0_b -fill grey
# }
# if {/HEX1[2] = 1} {
#      .fpga.ss.s1 itemconfigure ss0_c -fill red
# } elseif {/HEX1[2] = 0} {
#      .fpga.ss.s1 itemconfigure ss0_c -fill grey
# }
# if {/HEX1[3] = 1} {
#      .fpga.ss.s1 itemconfigure ss0_d -fill red
# } elseif {/HEX1[3] = 0} {
#      .fpga.ss.s1 itemconfigure ss0_d -fill grey
# }
# if {/HEX1[4] = 1} {
#      .fpga.ss.s1 itemconfigure ss0_e -fill red
# } elseif {/HEX1[4] = 0} {
#      .fpga.ss.s1 itemconfigure ss0_e -fill grey
# }
# if {/HEX1[5] = 1} {
#      .fpga.ss.s1 itemconfigure ss0_f -fill red
# } elseif {/HEX1[5] = 0} {
#      .fpga.ss.s1 itemconfigure ss0_f -fill grey
# }
# if {/HEX1[6] = 1} {
#      .fpga.ss.s1 itemconfigure ss0_g -fill red
# } elseif {/HEX1[6] = 0} {
#      .fpga.ss.s1 itemconfigure ss0_g -fill grey
# }
# #HEX2
# if {/HEX2[0] = 1} {
#      .fpga.ss.s2 itemconfigure ss0_a -fill red
# } elseif {/HEX2[0] = 0} {
#      .fpga.ss.s2 itemconfigure ss0_a -fill grey
# }
# if {/HEX2[1] = 1} {
#      .fpga.ss.s2 itemconfigure ss0_b -fill red
# } elseif {/HEX2[1] = 0} {
#      .fpga.ss.s2 itemconfigure ss0_b -fill grey
# }
# if {/HEX2[2] = 1} {
#      .fpga.ss.s2 itemconfigure ss0_c -fill red
# } elseif {/HEX2[2] = 0} {
#      .fpga.ss.s2 itemconfigure ss0_c -fill grey
# }
# if {/HEX2[3] = 1} {
#      .fpga.ss.s2 itemconfigure ss0_d -fill red
# } elseif {/HEX2[3] = 0} {
#      .fpga.ss.s2 itemconfigure ss0_d -fill grey
# }
# if {/HEX2[4] = 1} {
#      .fpga.ss.s2 itemconfigure ss0_e -fill red
# } elseif {/HEX2[4] = 0} {
#      .fpga.ss.s2 itemconfigure ss0_e -fill grey
# }
# if {/HEX2[5] = 1} {
#      .fpga.ss.s2 itemconfigure ss0_f -fill red
# } elseif {/HEX2[5] = 0} {
#      .fpga.ss.s2 itemconfigure ss0_f -fill grey
# }
# if {/HEX2[6] = 1} {
#      .fpga.ss.s2 itemconfigure ss0_g -fill red
# } elseif {/HEX2[6] = 0} {
#      .fpga.ss.s2 itemconfigure ss0_g -fill grey
# }
# #HEX3
# if {/HEX3[0] = 1} {
#      .fpga.ss.s3 itemconfigure ss0_a -fill red
# } elseif {/HEX3[0] = 0} {
#      .fpga.ss.s3 itemconfigure ss0_a -fill grey
# }
# if {/HEX3[1] = 1} {
#      .fpga.ss.s3 itemconfigure ss0_b -fill red
# } elseif {/HEX3[1] = 0} {
#      .fpga.ss.s3 itemconfigure ss0_b -fill grey
# }
# if {/HEX3[2] = 1} {
#      .fpga.ss.s3 itemconfigure ss0_c -fill red
# } elseif {/HEX3[2] = 0} {
#      .fpga.ss.s3 itemconfigure ss0_c -fill grey
# }
# if {/HEX3[3] = 1} {
#      .fpga.ss.s3 itemconfigure ss0_d -fill red
# } elseif {/HEX3[3] = 0} {
#      .fpga.ss.s3 itemconfigure ss0_d -fill grey
# }
# if {/HEX3[4] = 1} {
#      .fpga.ss.s3 itemconfigure ss0_e -fill red
# } elseif {/HEX3[4] = 0} {
#      .fpga.ss.s3 itemconfigure ss0_e -fill grey
# }
# if {/HEX3[5] = 1} {
#      .fpga.ss.s3 itemconfigure ss0_f -fill red
# } elseif {/HEX3[5] = 0} {
#      .fpga.ss.s3 itemconfigure ss0_f -fill grey
# }
# if {/HEX3[6] = 1} {
#      .fpga.ss.s3 itemconfigure ss0_g -fill red
# } elseif {/HEX3[6] = 0} {
#      .fpga.ss.s3 itemconfigure ss0_g -fill grey
# }
#
# #HEX4
# if {/HEX4[0] = 1} {
#      .fpga.ss.s4 itemconfigure ss0_a -fill red
# } elseif {/HEX4[0] = 0} {
#      .fpga.ss.s4 itemconfigure ss0_a -fill grey
# }
# if {/HEX4[1] = 1} {
#      .fpga.ss.s4 itemconfigure ss0_b -fill red
# } elseif {/HEX4[1] = 0} {
#      .fpga.ss.s4 itemconfigure ss0_b -fill grey
# }
# if {/HEX4[2] = 1} {
#      .fpga.ss.s4 itemconfigure ss0_c -fill red
# } elseif {/HEX4[2] = 0} {
#      .fpga.ss.s4 itemconfigure ss0_c -fill grey
# }
# if {/HEX4[3] = 1} {
#      .fpga.ss.s4 itemconfigure ss0_d -fill red
# } elseif {/HEX4[3] = 0} {
#      .fpga.ss.s4 itemconfigure ss0_d -fill grey
# }
# if {/HEX4[4] = 1} {
#      .fpga.ss.s4 itemconfigure ss0_e -fill red
# } elseif {/HEX4[4] = 0} {
#      .fpga.ss.s4 itemconfigure ss0_e -fill grey
# }
# if {/HEX4[5] = 1} {
#      .fpga.ss.s4 itemconfigure ss0_f -fill red
# } elseif {/HEX4[5] = 0} {
#      .fpga.ss.s4 itemconfigure ss0_f -fill grey
# }
# if {/HEX4[6] = 1} {
#      .fpga.ss.s4 itemconfigure ss0_g -fill red
# } elseif {/HEX4[6] = 0} {
#      .fpga.ss.s4 itemconfigure ss0_g -fill grey
# }
# #HEX5
# if {/HEX5[0] = 1} {
#      .fpga.ss.s5 itemconfigure ss0_a -fill red
# } elseif {/HEX5[0] = 0} {
#      .fpga.ss.s5 itemconfigure ss0_a -fill grey
# }
# if {/HEX5[1] = 1} {
#      .fpga.ss.s5 itemconfigure ss0_b -fill red
# } elseif {/HEX5[1] = 0} {
#      .fpga.ss.s5 itemconfigure ss0_b -fill grey
# }
# if {/HEX5[2] = 1} {
#      .fpga.ss.s5 itemconfigure ss0_c -fill red
# } elseif {/HEX5[2] = 0} {
#      .fpga.ss.s5 itemconfigure ss0_c -fill grey
# }
# if {/HEX5[3] = 1} {
#      .fpga.ss.s5 itemconfigure ss0_d -fill red
# } elseif {/HEX5[3] = 0} {
#      .fpga.ss.s5 itemconfigure ss0_d -fill grey
# }
# if {/HEX5[4] = 1} {
#      .fpga.ss.s5 itemconfigure ss0_e -fill red
# } elseif {/HEX5[4] = 0} {
#      .fpga.ss.s5 itemconfigure ss0_e -fill grey
# }
# if {/HEX5[5] = 1} {
#      .fpga.ss.s5 itemconfigure ss0_f -fill red
# } elseif {/HEX5[5] = 0} {
#      .fpga.ss.s5 itemconfigure ss0_f -fill grey
# }
# if {/HEX5[6] = 1} {
#      .fpga.ss.s5 itemconfigure ss0_g -fill red
# } elseif {/HEX5[6] = 0} {
#      .fpga.ss.s5 itemconfigure ss0_g -fill grey
# }



