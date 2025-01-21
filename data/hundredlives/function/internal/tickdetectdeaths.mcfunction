execute as @a run scoreboard players remove @s lifeCount 1
execute as @a if score @s lifeCount > @s deathCount run tag @s add displayDeath
execute as @a if score @s lifeCount > @s deathCount run execute store result score @s lifeCount run scoreboard players get @s deathCount
execute as @a run scoreboard players add @s lifeCount 1

execute as @a if score @s deathCount >= @s lifeCount run function hundredlives:internal/hasjustdied