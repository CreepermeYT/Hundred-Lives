function sneakingdetector:setupsneakingdetector
scoreboard objectives add deathCount deathCount "Deaths"
scoreboard objectives add lifeCount dummy "Current Life"
scoreboard objectives add hdelay dummy
scoreboard objectives add mylives trigger
#maxheartconfig
execute unless score mh hdelay matches 0.. run scoreboard players set mh hdelay 0
#pause
execute unless score p hdelay matches 0.. run scoreboard players set p hdelay 0