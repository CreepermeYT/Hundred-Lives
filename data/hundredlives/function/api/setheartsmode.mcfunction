#0 progressively lose hearts in the last 10 lives
#1 nothing, keep 20 until the end
#2 progressively gain hearts in the last 10 lives

$scoreboard players set mh hdelay $(mode)

execute if score mh hdelay matches 3.. run scoreboard players set mh hdelay 0
execute if score mh hdelay matches ..-1 run scoreboard players set mh hdelay 0
