tellraw @s ""
tellraw @s {"text":"------------------------------","bold":true,"italic":true,"color":"gray"}
tellraw @s {"text":"Hundred Lives - HELP MENU","bold":true,"italic":true,"color":"red"}
tellraw @s {"text":"-------------------------------","bold":true,"italic":true,"color":"gray"}
tellraw @s ""
tellraw @s ["",{"text":"API/ADMIN COMMANDS","bold":true,"italic":true,"underlined":true,"color":"dark_gray"}]
tellraw @s [{"text":"Click ","italic":true,"color":"gray"},{"text":"here","bold":true,"italic":true,"underlined":true,"color":"gray","clickEvent":{"action":"run_command","value":"/function hundredlives:helpmenu/commands"}}," to open menu"]
tellraw @s ""
tellraw @s ""
tellraw @s ["",{"text":"DATAPACK CONFIG","bold":true,"italic":true,"underlined":true,"color":"dark_gray"}]
tellraw @s ["",{"text":"Click any underlined word to activate","italic":true,"color":"gray"}]
tellraw @s ""
tellraw @s ["",{"text":"Pause","bold":true,"italic":true,"underlined":true,"color":"gray","clickEvent":{"action":"run_command","value":"/function hundredlives:helpmenu/pause"}}," the ",{"text":"detection","bold":true}," of ",{"text":"deaths","bold":true,"italic":true,"color":"red"}]
tellraw @s ["",{"text":"Resume","bold":true,"italic":true,"underlined":true,"color":"gray","clickEvent":{"action":"run_command","value":"/function hundredlives:helpmenu/resume"}}," the ",{"text":"detection","bold":true}," of ",{"text":"deaths","bold":true,"italic":true,"color":"red"}]
tellraw @s ""
tellraw @s ["",{"text":"Lose","bold":true,"italic":true,"underlined":true,"color":"gray","clickEvent":{"action":"run_command","value":"/function hundredlives:helpmenu/setheartsmode {mode:0}"}},{"text":" hearts ","bold":true,"italic":true,"color":"red"},"in your ",{"text":"last 10 lives","bold":true}]
tellraw @s ["",{"text":"Gain","bold":true,"italic":true,"underlined":true,"color":"gray","clickEvent":{"action":"run_command","value":"/function hundredlives:helpmenu/setheartsmode {mode:2}"}},{"text":" hearts ","bold":true,"italic":true,"color":"red"},"in your ",{"text":"last 10 lives","bold":true}]
tellraw @s ["",{"text":"Remain","bold":true,"italic":true,"underlined":true,"color":"gray","clickEvent":{"action":"run_command","value":"/function hundredlives:helpmenu/setheartsmode {mode:1}"}}," with the same",{"text":" hearts ","bold":true,"italic":true,"color":"red"},"in your ",{"text":"last 10 lives","bold":true}]
tellraw @s ""
tellraw @s {"text":"-------------------------------","bold":true,"italic":true,"color":"gray"}
playsound minecraft:ui.button.click master @s