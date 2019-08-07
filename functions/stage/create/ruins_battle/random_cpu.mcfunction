loot spawn ~ ~ ~ loot medabots_server:gameplay/options/5
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:1}}}] run function medabots_server:spawn_entities/medabot/poison_scorpi/poison_scorpi/fly_falcon/hippopojamas/devil
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:2}}}] run function medabots_server:spawn_entities/medabot/le_villan/warbonnet/crimson_king/le_villan/chameleon
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:3}}}] run function medabots_server:spawn_entities/medabot/maxsnake/kanehachi_mk2/pururun_jelly/warbonnet/kabuto
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:4}}}] run function medabots_server:spawn_entities/medabot/pururun_jelly/metabee/metabee/crimson_king/kabuto
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:5}}}] run function medabots_server:spawn_entities/medabot/warbonnet/crimson_king/crimson_king/metabee/devil
kill @e[type=minecraft:item,distance=..0.7]
scoreboard players set @e[tag=!medabot_model,distance=..1] Stage 49
tag @e[tag=!medabot_model,distance=..1] add enemy_medabot