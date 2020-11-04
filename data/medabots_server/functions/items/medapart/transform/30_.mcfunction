# Finish the move
scoreboard players reset @s[tag=left_arm_activated,nbt={Inventory:[{tag:{medabots_server:{part:"left_arm"}}}]}] MedapartType
scoreboard players reset @s[tag=right_arm_activated,nbt={Inventory:[{tag:{medabots_server:{part:"right_arm"}}}]}] MedapartType
scoreboard players reset @s[tag=head_activated,nbt={Inventory:[{tag:{medabots_server:{part:"head"}}}]}] MedapartType
scoreboard players reset @s[type=!minecraft:player] MedapartType
scoreboard players reset @s[tag=!hostile] MedapartType
execute unless entity @s[scores={MedapartType=1..}] run scoreboard players set @s Time 0