# Finish the move
scoreboard players reset @s[tag=left_arm_selected,nbt={Inventory:[{Slot:1b,tag:{medabots_server:{part:"left_arm"}}}]}] MedapartType
scoreboard players reset @s[tag=right_arm_selected,nbt={Inventory:[{Slot:2b,tag:{medabots_server:{part:"right_arm"}}}]}] MedapartType
scoreboard players reset @s[tag=head_selected,nbt={Inventory:[{Slot:3b,tag:{medabots_server:{part:"head"}}}]}] MedapartType
scoreboard players reset @s[type=!minecraft:player] MedapartType
scoreboard players reset @s[tag=!hostile] MedapartType
execute unless entity @s[scores={MedapartType=1..}] run scoreboard players set @s Time 0