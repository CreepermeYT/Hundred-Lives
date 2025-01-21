##give recipe 
execute if entity @s[scores={deathCount=1..}] run recipe give @s hundredlives:life
execute if entity @s[scores={deathCount=1..}] run recipe give @s hundredlives:life1.21.4

#you are/have started your life number #
execute if entity @s[tag=nostart] if score @s lifeCount matches ..99 run tellraw @s ["",{"text":"You are in your "},{"text":"life","bold":true,"italic":true,"color":"red"},{"text":" number ","bold":true,"italic":true,"color":"gray"},{"score":{"name":"@s","objective":"lifeCount"},"bold":true,"italic":true},{"text":"!","bold":true,"italic":true}]

execute if entity @s[tag=nostart] if score @s lifeCount matches 100 run tellraw @s ["",{"text":"You are in your"},{"text":" last","bold":true,"italic":true,"color":"red"},{"text":" life!","bold":true,"italic":true,"color":"gray"}]

execute if entity @s[tag=nostart] if score @s lifeCount matches 101 run tellraw @s ["",{"text":"You are in your"},{"text":" after life! ","bold":true,"italic":true,"color":"gray"}]


execute if entity @s[tag=!nostart] if score @s lifeCount matches ..99 run tellraw @s ["",{"text":"You have just started your "},{"text":"life","bold":true,"italic":true,"color":"red"},{"text":" number ","bold":true,"italic":true,"color":"gray"},{"score":{"name":"@s","objective":"lifeCount"},"bold":true,"italic":true},{"text":"!","bold":true,"italic":true}]

execute if entity @s[tag=!nostart] if score @s lifeCount matches 100 run tellraw @s ["",{"text":"You have just started your"},{"text":" last","bold":true,"italic":true,"color":"red"},{"text":" life!","bold":true,"italic":true,"color":"gray"}]

execute if entity @s[tag=!nostart] if score @s lifeCount matches 101 run tellraw @s ["",{"text":"You have just started your"},{"text":" after life! ","bold":true,"italic":true,"color":"gray"}]

#you have died # times
execute as @e[tag=displayDeath] unless entity @s[scores={deathCount=1}] run tellraw @s ["",{"text":"You have"},{"text":" died ","bold":true,"italic":true,"color":"red"},{"score":{"name":"@s","objective":"deathCount"},"bold":true,"italic":true},{"text":" times!","bold":true,"italic":true,"color":"gray"}]
execute as @e[tag=displayDeath] if entity @s[scores={deathCount=1}] run tellraw @s ["",{"text":"You have"},{"text":" died ","bold":true,"italic":true,"color":"red"},{"text":"once!","bold":true,"italic":true}]

#if you die # times you will be ...
execute as @e[tag=displayDeath] run scoreboard players set @s lifeCount 100
execute as @e[tag=displayDeath] run scoreboard players operation @s lifeCount -= @s deathCount
execute as @e[tag=displayDeath] if score @s deathCount matches ..98 as @e[tag=displayDeath] run tellraw @s ["",{"text":"If you die "},{"score":{"name":"@s","objective":"lifeCount"},"bold":true,"italic":true},{"text":" more","bold":true,"italic":true,"color":"red"},{"text":" times","bold":true,"italic":true,"color":"gray"},{"text":" you will be gone forever!"}]
execute as @e[tag=displayDeath] if score @s deathCount matches 99 as @e[tag=displayDeath] run tellraw @s ["",{"text":"If you die "},{"score":{"name":"@s","objective":"lifeCount"},"bold":true,"italic":true},{"text":" more","bold":true,"italic":true,"color":"red"},{"text":" time","bold":true,"italic":true,"color":"gray"},{"text":" you will be gone forever!"}]

#title
execute if entity @s[tag=!nostart] if score @s lifeCount matches 2..10 at @s run title @s times 1s 2s 1s
execute if entity @s[tag=!nostart] if score @s lifeCount matches ..1 at @s run title @s times 1s 4s 1s
execute if entity @s[tag=!nostart] if score @s lifeCount matches 50 at @s run title @s times 1s 2s 1s
execute if entity @s[tag=!nostart] if score @s lifeCount matches 1 at @s run title @s title [{"text":" Last","italic":true,"bold":true,"color":"gray"},{"text":" life! ","bold":true,"color":"red"},{"text":"Careful!","color":"white"}]
execute if entity @s[tag=!nostart] if score @s lifeCount matches 2..10 at @s run title @s title [{"score":{"name":"@s","objective":"lifeCount"},"bold":true,"italic":true,"color":"gray"},{"text":" lives","bold":true,"color":"red"},{"text":" left","bold":true,"color":"white"}]
execute if entity @s[tag=!nostart] if score @s lifeCount matches 50 at @s run title @s title [{"text":"Half ","bold":true,"italic":true,"color":"gray"},{"text":"your","color":"white"},{"text":" lives","bold":true,"color":"red"},{"text":" left","bold":true,"color":"white"}]
execute if entity @s[tag=!nostart] if score @s lifeCount matches 0 at @s run title @s title [{"text":"After Life..","bold":true,"italic":true,"color":"gray"}]
execute if entity @s[tag=!nostart] if score @s lifeCount matches 0 at @s run effect give @s minecraft:darkness 8 0 true
execute if entity @s[tag=!nostart] if score @s lifeCount matches 1..10 at @s run effect give @s minecraft:darkness 4 0 true
execute if entity @s[tag=!nostart] if score @s lifeCount matches 50 at @s run effect give @s minecraft:darkness 4 0 true
execute if entity @s[tag=!nostart] if score @s lifeCount matches 1 at @s run effect give @s minecraft:blindness 10 0 false
execute if entity @s[tag=!nostart] if score @s lifeCount matches 1 at @s run effect give @s minecraft:nausea 12 2 false
execute if entity @s[tag=!nostart] if score @s lifeCount matches 0 at @s run playsound minecraft:entity.ender_dragon.death master @s ~ ~ ~ 0.5
execute if entity @s[tag=!nostart] if score @s lifeCount matches 1..10 at @s run playsound minecraft:entity.wither.ambient master @s ~ ~ ~ 0.3
execute if entity @s[tag=!nostart] if score @s lifeCount matches 50 at @s run playsound minecraft:entity.wither.ambient master @s ~ ~ ~ 0.4
execute if entity @s[tag=!nostart] if score @s lifeCount matches 1..10 at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.3
execute if entity @s[tag=!nostart] if score @s lifeCount matches 1 at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 0.6


execute as @e[tag=displayDeath] run scoreboard players add @s deathCount 1
execute as @e[tag=displayDeath] store result score @s lifeCount run scoreboard players get @s deathCount
execute as @e[tag=displayDeath] run scoreboard players remove @s deathCount 1

execute run title @s times 1s 5s 1s
execute if score @s lifeCount matches ..100 run title @s actionbar ["",{"text":"Life","bold":true,"italic":true,"color":"red"},{"text":" number ","bold":true,"italic":true,"color":"gray"},{"score":{"name":"@s","objective":"lifeCount"},"bold":true,"italic":true},{"text":"!","bold":true,"italic":true}] 
execute if score @s lifeCount matches 101.. run title @s actionbar [{"text":"After Life..","bold":true,"italic":true,"color":"gray"}]


#remove tags
execute as @e[tag=displayDeath] run tag @s remove nostart
execute as @e[tag=displayDeath] run tag @s remove displayDeath
