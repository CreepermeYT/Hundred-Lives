$execute as $(CustomName) if score @s deathCount matches 100.. run function hundredlives:api/revive

$execute if entity $(CustomName) if score $(CustomName) deathCount matches 100.. run return 0
summon minecraft:item ^-0.3 ^0.5 ^0.3 {Motion:[0.0,0.2,0.0],PickupDelay:20s,Item:{id:nether_star,Count:1,components:{"minecraft:lore":['{"extra":[{"italic":true,"text":"Crouch/Sneak to use"}],"text":""}'],"minecraft:item_name":'{"text":"+1 Life"}',"minecraft:custom_name":'{"extra":[{"color":"aqua","bold":true,"italic":false,"text":"+1 Life"}],"text":""}'}}}
data modify entity @s HandItems[0] set value {}