loot spawn ~ ~ ~ loot medabots_server:gameplay/options/5
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:1}}}] run function medabots_server:spawn_entities/medabot/acehorn/grade_kabuki/rhinorush/acehorn/unicorn
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:2}}}] run function medabots_server:spawn_entities/medabot/poison_scorpi/poison_scorpi/fly_falcon/hippopojamas/devil
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:3}}}] run function medabots_server:spawn_entities/medabot/hellphoenix/maxsnake/acehorn/hellphoenix/question
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:4}}}] run function medabots_server:spawn_entities/medabot/ka_o_lantern/hellphoenix/ka_o_lantern/maxsnake/chameleon
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:5}}}] run function medabots_server:spawn_entities/medabot/attack_tyrano/acehorn/smilidonad/ka_o_lantern/kuwagata
kill @e[type=minecraft:item,distance=..0.7]
scoreboard players set @e[tag=!medabot_model,distance=..1] Stage 47
tag @e[tag=!medabot_model,distance=..1] add enemy_medabot