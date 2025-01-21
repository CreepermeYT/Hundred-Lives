tellraw @s ""
tellraw @s ["",{"text":"DATAPACK CONFIG","bold":true,"italic":true,"underlined":true,"color":"dark_gray"}]
tellraw @s ["",{"text":"Click any underlined word to activate","italic":true,"color":"gray"}]
tellraw @s ""
tellraw @s ["",{"text":"Pause","bold":true,"italic":true,"underlined":true,"color":"gray","clickEvent":{"action":"run_command","value":"/function hundredlives:api/pause"}}," the detection of ",{"text":"deaths","bold":true,"italic":true,"color":"red"}]
tellraw @s ["",{"text":"Resume","bold":true,"italic":true,"underlined":true,"color":"gray","clickEvent":{"action":"run_command","value":"/function hundredlives:api/resume"}}," the detection of ",{"text":"deaths","bold":true,"italic":true,"color":"red"}]
tellraw @s ""
tellraw @s ["",{"text":"Lose","bold":true,"italic":true,"underlined":true,"color":"gray","clickEvent":{"action":"run_command","value":"/function hundredlives:api/setheartsmode {mode:0}"}},{"text":" hearts ","bold":true,"italic":true,"color":"red"},"in your last 10 lives"]
tellraw @s ["",{"text":"Gain","bold":true,"italic":true,"underlined":true,"color":"gray","clickEvent":{"action":"run_command","value":"/function hundredlives:api/setheartsmode {mode:2}"}},{"text":" hearts ","bold":true,"italic":true,"color":"red"},"in your last 10 lives"]
tellraw @s ["",{"text":"Remain","bold":true,"italic":true,"underlined":true,"color":"gray","clickEvent":{"action":"run_command","value":"/function hundredlives:api/setheartsmode {mode:1}"}}," with the same",{"text":" hearts ","bold":true,"italic":true,"color":"red"},"in your last 10 lives"]
tellraw @s ""
playsound minecraft:ui.button.click master @s