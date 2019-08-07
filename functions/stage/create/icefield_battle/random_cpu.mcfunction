loot spawn ~ ~ ~ loot medabots_server:gameplay/options/5
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:1}}}] run function medabots_server:spawn_entities/medabot/yuchitang/ka_o_lantern/attack_tyrano/yuchitang/kuwagata
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:2}}}] run function medabots_server:spawn_entities/medabot/primity_baby/smilidonad/primity_baby/dondoguu/alien
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:3}}}] run function medabots_server:spawn_entities/medabot/smilidonad/yuchitang/yuchitang/smilidonad/ghost
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:4}}}] run function medabots_server:spawn_entities/medabot/rokusho/primity_baby/rokusho/primity_baby/kuwagata
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:5}}}] run function medabots_server:spawn_entities/medabot/crimson_king/le_villan/basstroyer/keithturtle/question
kill @e[type=minecraft:item,distance=..0.7]
scoreboard players set @e[tag=!medabot_model,distance=..1] Stage 48
tag @e[tag=!medabot_model,distance=..1] add enemy_medabot