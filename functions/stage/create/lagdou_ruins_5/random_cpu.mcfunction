loot spawn ~ ~ ~ loot medabots_server:gameplay/options/5
# Cyclops
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:1}}}] run function medabots_server:spawn_entities/medabot/hippopojamas/fly_falcon/dorcus/king_pharaoh/mermaid
# Gwyllgi
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:2}}}] run function medabots_server:spawn_entities/medabot/warbonnet/magicalcard/shoot_spider/doctor_study/monkey
# Gorgon
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:3}}}] run function medabots_server:spawn_entities/medabot/arcbeetle/magicalcard/le_villan/doctor_study/spider
# Bael
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:4}}}] run function medabots_server:spawn_entities/medabot/basstroyer/baroncastle/maxsnake/shoot_spider/spider
# Centaur
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:5}}}] run function medabots_server:spawn_entities/medabot/doctor_study/attack_tyrano/warbonnet/acehorn/unicorn
kill @e[type=minecraft:item,distance=..0.7]
scoreboard players set @e[tag=!medabot_model,distance=..1] Stage 40
tag @e[tag=!medabot_model,distance=..1] add enemy_medabot