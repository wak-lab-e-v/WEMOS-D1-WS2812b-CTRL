# ESP8266 LED Controller

Controller for WS2812B LED Strips / Panels / i.e. , optimized for the https://github.com/Aircoookie/WLED projekt

*Targets:*

- compact in a 3D printed case
- DC via hollow plug and 2A Step Down converter
- alternately over JST 3 PIN (LED INPUT, 5V)
- Stabi-Elko in the 5V branch
- WEMOS D1 as controller
- Level Shift via 74HCT1G08GW
- Push button direct to controler (typically used as on/off via software)
- Infrarot support for IR-Remote
- PCB with Wemos-D1 und Step Down converter side-by-side
- LED Strip 


LED Strip:

- WS2812B-compatible RGB(W) led strip to GPIO2 / D2
- optional support for GPIO16 / D0 via solder bridge 
- level-shift via 74HCT1G08GW

Push button:

- a push button is connected to GPIO0 / D3


Infrared: 

- recommended: TSOP38238
- Pinout: 2.5 V to 5.5 V, GND, Signal
- Signal to GPIO4 (can be changed in NpbWrapper.h)


Wemos D1 Pinout:

A0	Analoger Eingang, max 3,3V	A0
D0	IO	GPIO16
D1	IO	GPIO5, SCL
D2	IO	GPIO4, SDA
D3	IO	GPIO0, 10k Pull-up
D4	IO	GPIO2, 10k Pull-up, Onboard LED
D5	IO  GPIO14, SCK	
D6	IO	GPIO12, MISO
D7	IO	GPIO13, MOSI
D8	IO	GPIO15, 10k Pull-down, SS (Slave Select)
G	GND
5V	5V
3V3	3,3V

