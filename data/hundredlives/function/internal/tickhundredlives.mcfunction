##setup new players
execute as @a unless score @s lifeCount matches 0.. run scoreboard players set @s lifeCount 0
execute as @a unless score @s deathCount matches 0.. run scoreboard players set @s deathCount 0
execute as @a unless score @s hdelay matches 0.. run scoreboard players set @s hdelay 0
execute as @a[scores={hdelay=1..}] run scoreboard players remove @s hdelay 1

##apply trigger
scoreboard players enable @a mylives
execute as @a[scores={mylives=1..}] run tag @s add nostart
execute as @a[scores={mylives=1..}] run tag @s add displayDeath
execute as @a[scores={mylives=1..}] run scoreboard players reset @s mylives

##health and gamemode
execute as @a[scores={lifeCount=101..}] run gamemode spectator @s
execute if score mh hdelay matches 0 run function hundredlives:internal/heartsa 
execute if score mh hdelay matches 0 run function hundredlives:internal/heartsa1.21.4
execute if score mh hdelay matches 1 run function hundredlives:internal/heartsb
execute if score mh hdelay matches 1 run function hundredlives:internal/heartsb1.21.4
execute if score mh hdelay matches 2 run function hundredlives:internal/heartsc
execute if score mh hdelay matches 2 run function hundredlives:internal/heartsc1.21.4


##revive armorstand
execute as @e[type=minecraft:armor_stand,tag=] at @s if data entity @s CustomName run summon minecraft:armor_stand ~ ~ ~ {ShowArms:1,Tags:["revive"],Silent:1b}
execute as @e[type=minecraft:armor_stand,tag=] at @s if data entity @s CustomName run tp @e[type=armor_stand,distance=..0] @s
execute as @e[tag=revive] at @s run data modify entity @s CustomName set string entity @e[type=minecraft:armor_stand,distance=..0,limit=1] CustomName
execute as @e[type=minecraft:armor_stand,tag=] at @s if data entity @s CustomName run kill @s
execute as @e[type=armor_stand,tag=revive] run function hundredlives:internal/givearmorstandarmor
clear @a minecraft:player_head[minecraft:lore=["revive"]]
clear @a minecraft:leather_chestplate[minecraft:lore=["revive"]]
clear @a minecraft:leather_leggings[minecraft:lore=["revive"]]
clear @a minecraft:leather_boots[minecraft:lore=["revive"]]
#do revive
execute as @e[tag=revive,predicate=hundredlives:mainhand_life] at @s run function hundredlives:internal/dorevive with entity @s

##item and player particles
execute as @e[type=item,predicate=hundredlives:item_life] at @s run particle minecraft:wax_off ~ ~0.3 ~ 0 0 0 0.8 1 normal
execute as @a[scores={lifeCount=100}] at @s run particle minecraft:ash ~ ~1.3 ~ 0.15 0.4 0.15 0 2 normal

##apply +1 life

#replace old lifemodel with new
execute as @a[predicate=hundredlives:is_sneaking,predicate=hundredlives:mainhand_lifeold] run function hundredlives:internal/replaceold
execute as @a[predicate=hundredlives:is_sneaking,predicate=hundredlives:mainhand_life,scores={hdelay=0,deathCount=1..}] run function hundredlives:internal/gainedlife