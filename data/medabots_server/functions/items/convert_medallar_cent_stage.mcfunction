clear @s minecraft:lapis_lazuli{medabots_server:{id:"medabots_server:medallar_cent",stage_item:0b}} 1
scoreboard players add #temp Time 1
scoreboard players remove #temp Money 1
execute if score #temp Time matches 100 run scoreboard players add #temp2 Money 1
execute if score #temp Time matches 100 run scoreboard players set #temp Time 0
execute unless entity @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:medallar_cent",stage_item:0b}}}]}] if score #temp Time matches 1.. run function medabots_server:items/convert_medallar_cent_non_stage
execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:medallar_cent",stage_item:0b}}}]}] if score #temp Money matches 100.. run function medabots_server:items/convert_medallar_cent_stage