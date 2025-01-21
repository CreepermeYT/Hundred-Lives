clear @s nether_star[custom_name='["",{"text":"+1 Life","italic":false,"bold":true,"color":"aqua"}]',lore=['["",{"text":"Crouch/Sneak to use","italic":true}]']] 1
function hundredlives:api/decreasedeaths
scoreboard players set @s hdelay 10
execute at @s run playsound minecraft:entity.player.levelup master @s