execute unless score @s deathCount matches 100.. run tellraw @s {"text":"Error: Player has not died 100 times","color":"red"}
execute unless score @s deathCount matches 100.. run return 0

tp @s ~ ~ ~
gamemode survival @s
effect give @s minecraft:resistance 600 9 false
summon lightning_bolt ~ ~ ~
kill @e[tag=revive,sort=nearest,distance=..1,limit=1]
scoreboard players remove @s lifeCount 1
scoreboard players remove @s deathCount 1

tellraw @a ["",{"selector":"@p","bold":true,"italic":true},{"text":" has just been "},{"text":"revived!","bold":true,"italic":true,"color":"gray"}]
title @s times 1s 5s 1s
title @s title ["",{"text":"Revived!","color":"gray","bold":true,"italic":true}]
execute if score @s lifeCount matches ..100 run title @s actionbar ["",{"text":"Life","bold":true,"italic":true,"color":"red"},{"text":" number ","bold":true,"italic":true,"color":"gray"},{"score":{"name":"@s","objective":"lifeCount"},"bold":true,"italic":true},{"text":"!","bold":true,"italic":true}] 
playsound minecraft:entity.allay.ambient_without_item master @s




#$execute unless score $(player) deathCount matches 100.. run tellraw @s {"text":"Error: Player has not died 100 times","color":"red"}
#$execute unless entity $(player) run tellraw @s {"text":"Error: Player was not found","color":"red"}
#$execute as $(player) unless score @s deathCount matches 100.. run return fail
#$execute as $(player) unless entity @s run return fail


#$execute at $(player) run summon armor_stand ~ ~ ~ {CustomName:"\"$(player)\"",Tags:["revive"]}
#$execute as @e[tag=revive,name="$(player)",limit=1] run function hundredlives:internal/dorevive {CustomName:"\"$(player)\""}