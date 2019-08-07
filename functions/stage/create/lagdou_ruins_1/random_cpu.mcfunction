loot spawn ~ ~ ~ loot medabots_server:gameplay/options/5
# Tarvos
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:1}}}] run function medabots_server:spawn_entities/medabot/basstroyer/attack_tyrano/abyss_greater/acehorn/unicorn
# Gargoyle
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:2}}}] run function medabots_server:spawn_entities/medabot/rokusho/hippopojamas/nin_ninja/fly_falcon/devil
# Bael
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:3}}}] run function medabots_server:spawn_entities/medabot/warbonnet/maxsnake/knight_armor/maxsnake/spider
# Cyclops
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:4}}}] run function medabots_server:spawn_entities/medabot/king_pharaoh/dragonbeetle/dorcus/king_pharaoh/knight
# Wight
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:5}}}] run function medabots_server:spawn_entities/medabot/pururun_jelly/rokusho/seven_colors/rokusho/chameleon
kill @e[type=minecraft:item,distance=..0.7]
scoreboard players set @e[tag=!medabot_model,distance=..1] Stage 36
tag @e[tag=!medabot_model,distance=..1] add enemy_medabot