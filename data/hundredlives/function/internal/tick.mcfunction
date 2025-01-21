execute if score p hdelay matches 0 run function hundredlives:internal/tickdetectdeaths
execute if score p hdelay matches 1 run function hundredlives:internal/tickdonotdetectdeaths
function hundredlives:internal/tickhundredlives
execute as @e[tag=displayDeath] run function hundredlives:internal/tickannouncedeaths