# Set which part is activated
scoreboard players set @s[scores={Break=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:boarbooster_wollybond"}}}]}] MedapartType 1
scoreboard players set @s[scores={Break=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:boarbooster_drillril"}}}]}] MedapartType 2
scoreboard players set @s[scores={Break=2},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:god_emperor_death_break"}}}]}] MedapartType 3
scoreboard players set @s[scores={Break=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:king_pharaoh_black_hall"}}}]}] MedapartType 4
scoreboard players set @s[scores={Break=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:uglyduck_feathermend"}}}]}] MedapartType 5
scoreboard players set @s[scores={Break=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:rob_gyro_hand"}}}]}] MedapartType 6
scoreboard players set @s[scores={Break=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:yuchitang_minus_diver"}}}]}] MedapartType 7
scoreboard players set @s[scores={Break=2},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:yuchitang_power_diver"}}}]}] MedapartType 8
scoreboard players set @s[scores={Break=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:yuchitang_plus_diver"}}}]}] MedapartType 9

# Give the weapon
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Break=1..},type=!minecraft:player] anchored eyes run summon minecraft:item ^ ^ ^2.5 {Item:{id:"minecraft:break_wool",Count:1b,tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"enemy"}}}}
execute if entity @s[scores={Break=1..,ScoutTime=1..},type=!minecraft:player] anchored eyes run summon minecraft:item ^ ^ ^2.5 {Item:{id:"minecraft:break_wool",Count:1b,tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"enemy",strong:1b}}}}

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={Break=2,Time=20}] HeadUses 1