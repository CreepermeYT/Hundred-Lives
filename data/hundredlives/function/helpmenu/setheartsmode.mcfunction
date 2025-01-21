#0 progressively lose hearts in the last 10 lives
#1 nothing, keep 20 until the end
#2 progressively gain hearts in the last 10 lives

$scoreboard players set mh hdelay $(mode)

execute if score mh hdelay matches 3.. run scoreboard players set mh hdelay 0
execute if score mh hdelay matches ..-1 run scoreboard players set mh hdelay 0

function hundredlives:helpmenu/help

execute if score mh hdelay matches 0 run tellraw @s [{"text":"Hearts mode set to"},{"text":" lose ","bold":true,"italic":true,"color":"gray"},{"text":"hearts","bold":true,"italic":true,"color":"red"},{"text":" in the last 10 lives"}]
execute if score mh hdelay matches 1 run tellraw @s [{"text":"Hearts mode set to"},{"text":" remain with the same ","bold":true,"italic":true,"color":"gray"},{"text":"hearts","bold":true,"italic":true,"color":"red"}]
execute if score mh hdelay matches 2 run tellraw @s [{"text":"Hearts mode set to"},{"text":" gain ","bold":true,"italic":true,"color":"gray"},{"text":"hearts","bold":true,"italic":true,"color":"red"},{"text":" in the last 10 lives"}]