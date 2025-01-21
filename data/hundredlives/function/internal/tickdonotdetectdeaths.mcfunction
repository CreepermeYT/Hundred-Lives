execute as @a run scoreboard players remove @s lifeCount 1
execute as @a unless score @s lifeCount = @s deathCount run execute store result score @s deathCount run scoreboard players get @s lifeCount
execute as @a run scoreboard players add @s lifeCount 1