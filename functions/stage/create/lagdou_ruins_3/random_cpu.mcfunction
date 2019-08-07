loot spawn ~ ~ ~ loot medabots_server:gameplay/options/5
# Tarvos
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:1}}}] run function medabots_server:spawn_entities/medabot/basstroyer/attack_tyrano/abyss_greater/acehorn/unicorn
# Bael
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:2}}}] run function medabots_server:spawn_entities/medabot/warbonnet/maxsnake/knight_armor/maxsnake/spider
# Gwyllgi
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:3}}}] run function medabots_server:spawn_entities/medabot/warbonnet/magicalcard/shoot_spider/doctor_study/monkey
# Gorgon
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:4}}}] run function medabots_server:spawn_entities/medabot/uglyduck/peppercat/fancyroll/potato_insect/question
# Wight
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:5}}}] run function medabots_server:spawn_entities/medabot/primity_baby/rokusho/seven_colors/rokusho/unicorn
kill @e[type=minecraft:item,distance=..0.7]
scoreboard players set @e[tag=!medabot_model,distance=..1] Stage 38
tag @e[tag=!medabot_model,distance=..1] add enemy_medabot