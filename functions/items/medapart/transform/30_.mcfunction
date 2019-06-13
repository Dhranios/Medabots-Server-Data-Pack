# Finish the move
scoreboard players reset @s[scores={Transform=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{part:"left_arm"}}}]}] Transform
scoreboard players reset @s[scores={Transform=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{part:"right_arm"}}}]}] Transform
scoreboard players reset @s[scores={Transform=2},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{part:"head"}}}]}] Transform
scoreboard players reset @s[scores={Transform=1..},type=!minecraft:player] Transform
execute unless entity @s[scores={Transform=1..}] run scoreboard players set @s Time 0