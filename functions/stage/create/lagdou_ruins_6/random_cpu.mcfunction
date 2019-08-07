loot spawn ~ ~ ~ loot medabots_server:gameplay/options/5
# Gwyllgi
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:1}}}] run function medabots_server:spawn_entities/medabot/warbonnet/magicalcard/shoot_spider/doctor_study/monkey
# Wight
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:2}}}] run function medabots_server:spawn_entities/medabot/primity_baby/rokusho/seven_colors/rokusho/unicorn
# Gorgon
execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:3}}}] run function medabots_server:spawn_entities/medabot/arcbeetle/magicalcard/le_villan/doctor_study/spider

execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:4}}}] run function medabots_server:spawn_entities/medabot/keithturtle/bezelga/basstroyer/baroncastle/devil

execute if entity @e[type=minecraft:item,distance=..0.7,nbt={Item:{tag:{Option:5}}}] run function medabots_server:spawn_entities/medabot/smilidonad/baroncastle/seven_colors/shoot_spider/spider
kill @e[type=minecraft:item,distance=..0.7]
scoreboard players set @e[tag=!medabot_model,distance=..1] Stage 41
tag @e[tag=!medabot_model,distance=..1] add enemy_medabot