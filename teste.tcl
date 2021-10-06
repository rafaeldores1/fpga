package require Tk
. configure -width 1100 -heigh 350
#PUSHBUTTONS
#cria
button .key0 -text "KEY0" -command proc0
button .key1 -text "KEY1" -command proc1
button .key2 -text "KEY2" -command proc2
button .key3 -text "KEY3" -command proc3
#tamanho
pack .key0 -side "left" -pady 1 -padx 1 -fill x
pack .key1 -side "left" -pady 1 -padx 1 -fill x
pack .key2 -side "left" -pady 1 -padx 1 -fill x
pack .key3 -side "left" -pady 1 -padx 1 -fill x
#posição
place .key0 -x 0 -y 0
place .key1 -x 50 -y 0
place .key2 -x 100 -y 0
place .key3 -x 150 -y 0
#configuracao
#proc proc0 {} {
#    force -freeze /KEY[0] 1 0
#    force -freeze /KEY[0] 0 1
#}

#SWITCHES
#cria
checkbutton .sw0 -text "SW0" -command look_valueSW0 -offvalue false -onvalue true -variable "SW0"
checkbutton .sw1 -text "SW1" -command look_valueSW1 -offvalue false -onvalue true -variable "SW1"
checkbutton .sw2 -text "SW2" -command look_valueSW2 -offvalue false -onvalue true -variable "SW2"
checkbutton .sw3 -text "SW3" -command look_valueSW3 -offvalue false -onvalue true -variable "SW3"
checkbutton .sw4 -text "SW4" -command look_valueSW4 -offvalue false -onvalue true -variable "SW4"
checkbutton .sw5 -text "SW5" -command look_valueSW5 -offvalue false -onvalue true -variable "SW5"
checkbutton .sw6 -text "SW6" -command look_valueSW6 -offvalue false -onvalue true -variable "SW6"
checkbutton .sw7 -text "SW7" -command look_valueSW7 -offvalue false -onvalue true -variable "SW7"
checkbutton .sw8 -text "SW8" -command look_valueSW8 -offvalue false -onvalue true -variable "SW8"
checkbutton .sw9 -text "SW9" -command look_valueSW9 -offvalue false -onvalue true -variable "SW9"
#tamanho
pack .sw0 -side "left" -pady 1 -padx 1 -fill x
pack .sw1 -side "left" -pady 1 -padx 1 -fill x
pack .sw2 -side "left" -pady 1 -padx 1 -fill x
pack .sw3 -side "left" -pady 1 -padx 1 -fill x
pack .sw4 -side "left" -pady 1 -padx 1 -fill x
pack .sw5 -side "left" -pady 1 -padx 1 -fill x
pack .sw6 -side "left" -pady 1 -padx 1 -fill x
pack .sw7 -side "left" -pady 1 -padx 1 -fill x
pack .sw8 -side "left" -pady 1 -padx 1 -fill x
pack .sw9 -side "left" -pady 1 -padx 1 -fill x
#posição
place .sw0 -x 0 -y 45
place .sw1 -x 50 -y 45
place .sw2 -x 100 -y 45
place .sw3 -x 150 -y 45
place .sw4 -x 200 -y 45
place .sw5 -x 250 -y 45
place .sw6 -x 300 -y 45
place .sw7 -x 350 -y 45
place .sw8 -x 400 -y 45
place .sw9 -x 450 -y 45

#LEDs
#cria
canvas .lr0 -width 1c -height 2c
canvas .lr1 -width 1c -height 2c
canvas .lr2 -width 1c -height 2c
canvas .lr3 -width 1c -height 2c
canvas .lr4 -width 1c -height 2c
canvas .lr5 -width 1c -height 2c
canvas .lr6 -width 1c -height 2c
canvas .lr7 -width 1c -height 2c
canvas .lr8 -width 1c -height 2c
canvas .lr9 -width 1c -height 2c
#tamanho
pack .lr0 -fill both -side "left"
     .lr0 create oval 0.1c 0.1c 0.9c 0.9c -fill gray -tag lr0
     .lr0 create text 0.5c 1.2c -text "LEDR0"
pack .lr1 -fill both -side "left"
     .lr1 create oval 0.1c 0.1c 0.9c 0.9c -fill gray -tag lr1
     .lr1 create text 0.5c 1.2c -text "LEDR1"
pack .lr2 -fill both -side "left"
     .lr2 create oval 0.1c 0.1c 0.9c 0.9c -fill gray -tag lr1
     .lr2 create text 0.5c 1.2c -text "LEDR2"
pack .lr3 -fill both -side "left"
     .lr3 create oval 0.1c 0.1c 0.9c 0.9c -fill gray -tag lr1
     .lr3 create text 0.5c 1.2c -text "LEDR3"
pack .lr4 -fill both -side "left"
     .lr4 create oval 0.1c 0.1c 0.9c 0.9c -fill gray -tag lr1
     .lr4 create text 0.5c 1.2c -text "LEDR4"
pack .lr5 -fill both -side "left"
     .lr5 create oval 0.1c 0.1c 0.9c 0.9c -fill gray -tag lr1
     .lr5 create text 0.5c 1.2c -text "LEDR5"
pack .lr6 -fill both -side "left"
     .lr6 create oval 0.1c 0.1c 0.9c 0.9c -fill gray -tag lr1
     .lr6 create text 0.5c 1.2c -text "LEDR6"
pack .lr7 -fill both -side "left"
     .lr7 create oval 0.1c 0.1c 0.9c 0.9c -fill gray -tag lr1
     .lr7 create text 0.5c 1.2c -text "LEDR7"
pack .lr8 -fill both -side "left"
     .lr8 create oval 0.1c 0.1c 0.9c 0.9c -fill gray -tag lr1
     .lr8 create text 0.5c 1.2c -text "LEDR8"
pack .lr9 -fill both -side "left"
     .lr9 create oval 0.1c 0.1c 0.9c 0.9c -fill gray -tag lr1
     .lr9 create text 0.5c 1.2c -text "LEDR9"
#posição
place .lr0 -x 0 -y 80
place .lr1 -x 40 -y 80
place .lr2 -x 80 -y 80
place .lr3 -x 120 -y 80
place .lr4 -x 160 -y 80
place .lr5 -x 200 -y 80
place .lr6 -x 240 -y 80
place .lr7 -x 280 -y 80
place .lr8 -x 320 -y 80
place .lr9 -x 360 -y 80

#DISPLAY 7 SEG
#cria
canvas .s0 -heigh 4c -width 8c
canvas .s1 -heigh 4c -width 8c
canvas .s2 -heigh 4c -width 8c
canvas .s3 -heigh 4c -width 8c
canvas .s4 -heigh 4c -width 8c
canvas .s5 -heigh 4c -width 8c
#tamanho
pack .s0 -fill both -side left
     .s0 create line 2.5c 0.5c 4c 0.5c -fill gray -width 4 -tag ss0_a
     .s0 create line 4c 0.5c 4c 2c -fill gray -width 4 -tag ss0_b
     .s0 create line 4c 2c 4c 3.5c -fill gray -width 4 -tag ss0_c
     .s0 create line 2.5c 3.5c 4c 3.5c -fill gray -width 4 -tag ss0_d
     .s0 create line 2.5c 3.5c 2.5c 2c -fill gray -width 4 -tag ss0_e
     .s0 create line 2.5c 0.5c 2.5c 2c -fill gray -width 4 -tag ss0_f
     .s0 create line 2.5c 2c 4c 2c -fill gray -width 4 -tag ss0_g
pack .s1 -fill both -side left
     .s1 create line 2.5c 0.5c 4c 0.5c -fill gray -width 4 -tag ss1_a
     .s1 create line 4c 0.5c 4c 2c -fill gray -width 4 -tag ss1_b
     .s1 create line 4c 2c 4c 3.5c -fill gray -width 4 -tag ss1_c
     .s1 create line 2.5c 3.5c 4c 3.5c -fill gray -width 4 -tag ss1_d
     .s1 create line 2.5c 3.5c 2.5c 2c -fill gray -width 4 -tag ss1_e
     .s1 create line 2.5c 0.5c 2.5c 2c -fill gray -width 4 -tag ss1_f
     .s1 create line 2.5c 2c 4c 2c -fill gray -width 4 -tag ss1_g
pack .s2 -fill both -side left
     .s2 create line 2.5c 0.5c 4c 0.5c -fill gray -width 4 -tag ss2_a
     .s2 create line 4c 0.5c 4c 2c -fill gray -width 4 -tag ss2_b
     .s2 create line 4c 2c 4c 3.5c -fill gray -width 4 -tag ss2_c
     .s2 create line 2.5c 3.5c 4c 3.5c -fill gray -width 4 -tag ss2_d
     .s2 create line 2.5c 3.5c 2.5c 2c -fill gray -width 4 -tag ss2_e
     .s2 create line 2.5c 0.5c 2.5c 2c -fill gray -width 4 -tag ss2_f
     .s2 create line 2.5c 2c 4c 2c -fill gray -width 4 -tag ss2_g
pack .s3 -fill both -side left
     .s3 create line 2.5c 0.5c 4c 0.5c -fill gray -width 4 -tag ss3_a
     .s3 create line 4c 0.5c 4c 2c -fill gray -width 4 -tag ss3_b
     .s3 create line 4c 2c 4c 3.5c -fill gray -width 4 -tag ss3_c
     .s3 create line 2.5c 3.5c 4c 3.5c -fill gray -width 4 -tag ss3_d
     .s3 create line 2.5c 3.5c 2.5c 2c -fill gray -width 4 -tag ss3_e
     .s3 create line 2.5c 0.5c 2.5c 2c -fill gray -width 4 -tag ss3_f
     .s3 create line 2.5c 2c 4c 2c -fill gray -width 4 -tag ss3_g
pack .s4 -fill both -side left
     .s4 create line 2.5c 0.5c 4c 0.5c -fill gray -width 4 -tag ss4_a
     .s4 create line 4c 0.5c 4c 2c -fill gray -width 4 -tag ss4_b
     .s4 create line 4c 2c 4c 3.5c -fill gray -width 4 -tag ss4_c
     .s4 create line 2.5c 3.5c 4c 3.5c -fill gray -width 4 -tag ss4_d
     .s4 create line 2.5c 3.5c 2.5c 2c -fill gray -width 4 -tag ss4_e
     .s4 create line 2.5c 0.5c 2.5c 2c -fill gray -width 4 -tag ss4_f
     .s4 create line 2.5c 2c 4c 2c -fill gray -width 4 -tag ss4_g
pack .s5 -fill both -side left
     .s5 create line 2.5c 0.5c 4c 0.5c -fill gray -width 4 -tag ss5_a
     .s5 create line 4c 0.5c 4c 2c -fill gray -width 4 -tag ss5_b
     .s5 create line 4c 2c 4c 3.5c -fill gray -width 4 -tag ss5_c
     .s5 create line 2.5c 3.5c 4c 3.5c -fill gray -width 4 -tag ss5_d
     .s5 create line 2.5c 3.5c 2.5c 2c -fill gray -width 4 -tag ss5_e
     .s5 create line 2.5c 0.5c 2.5c 2c -fill gray -width 4 -tag ss5_f
     .s5 create line 2.5c 2c 4c 2c -fill gray -width 4 -tag ss5_g
#posição
place .s0 -x 0  -y 150
place .s1 -x 170  -y 150
place .s2 -x 340  -y 150
place .s3 -x 510  -y 150
place .s4 -x 680 -y 150
place .s5 -x 850 -y 150
