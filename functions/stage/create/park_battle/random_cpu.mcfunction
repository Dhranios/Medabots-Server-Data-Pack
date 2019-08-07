loot spawn ~ ~ ~ loot medabots_server:gameplay/options/5
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:1}}}] run function medabots_server:spawn_entities/medabot/attack_tyrano/acehorn/smilidonad/ka_o_lantern/kuwagata
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:2}}}] run function medabots_server:spawn_entities/medabot/primity_baby/smilidonad/primity_baby/dondoguu/alien
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:3}}}] run function medabots_server:spawn_entities/medabot/metabee/pururun_jelly/warbonnet/pururun_jelly/alien
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:4}}}] run function medabots_server:spawn_entities/medabot/dragonbeetle/rokusho/le_villan/rokusho/knight
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:5}}}] run function medabots_server:spawn_entities/medabot/marine_killer/nin_ninja/attack_tyrano/marine_killer/question
kill @e[type=minecraft:item,distance=..0.7]
scoreboard players set @e[tag=!medabot_model,distance=..1] Stage 50
tag @e[tag=!medabot_model,distance=..1] add enemy_medabot