#!/usr/bin/lua

io.input( "/sys/class/backlight/gmux_backlight/actual_brightness" )
myActualBrightness = io.read( "*number" )
if myActualBrightness > 50000 then
    myDecrease =  "echo " .. myActualBrightness - 15000 .. " > /sys/class/backlight/gmux_backlight/brightness"
elseif myActualBrightness > 20000 then
    myDecrease =  "echo " .. myActualBrightness - 10000 .. " > /sys/class/backlight/gmux_backlight/brightness"
elseif myActualBrightness > 10000 then
    myDecrease =  "echo " .. myActualBrightness - 5000 .. " > /sys/class/backlight/gmux_backlight/brightness"
else
    myDecrease =  "echo " .. myActualBrightness - 1000 .. " > /sys/class/backlight/gmux_backlight/brightness"
end

os.execute( myDecrease )
