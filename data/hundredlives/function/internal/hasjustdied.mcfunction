tag @s add displayDeath
scoreboard players add @s deathCount 1
execute store result score @s lifeCount run scoreboard players get @s deathCount
scoreboard players remove @s deathCount 1