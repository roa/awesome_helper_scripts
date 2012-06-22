#!/usr/bin/lua

io.input( "/sys/class/leds/smc\:\:kbd_backlight/brightness" )

myActualBrightness = io.read( "*number" )

myIncrease = "echo " .. myActualBrightness - 20 .. " > /sys/class/leds/smc\:\:kbd_backlight/brightness"
os.execute(myIncrease)

