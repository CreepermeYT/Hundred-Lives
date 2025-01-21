scoreboard players add @a deathCount 1
execute as @a store result score @s lifeCount run scoreboard players get @s deathCount
scoreboard players remove @a deathCount 1