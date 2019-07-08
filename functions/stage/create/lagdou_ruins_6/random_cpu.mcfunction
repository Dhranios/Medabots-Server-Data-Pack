summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"CPU Selection"}',Tags:["cpu_selection","1"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"CPU Selection"}',Tags:["cpu_selection","2"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"CPU Selection"}',Tags:["cpu_selection","3"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"CPU Selection"}',Tags:["cpu_selection","4"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"CPU Selection"}',Tags:["cpu_selection","5"],Duration:1}
tag @e[type=minecraft:area_effect_cloud,tag=cpu_selection,sort=random,limit=1] add selected
# Gwyllgi
execute if entity @e[type=minecraft:area_effect_cloud,tag=cpu_selection,tag=selected,tag=1] run function medabots_server:spawn_entities/enemy_medabot/warbonnet/magicalcard/shoot_spider/doctor_study/monkey
# Wight
execute if entity @e[type=minecraft:area_effect_cloud,tag=cpu_selection,tag=selected,tag=2] run function medabots_server:spawn_entities/enemy_medabot/primity_baby/rokusho/seven_colors/rokusho/unicorn
# Gorgon
execute if entity @e[type=minecraft:area_effect_cloud,tag=cpu_selection,tag=selected,tag=3] run function medabots_server:spawn_entities/enemy_medabot/arcbeetle/magicalcard/le_villan/doctor_study/spider

execute if entity @e[type=minecraft:area_effect_cloud,tag=cpu_selection,tag=selected,tag=4] run function medabots_server:spawn_entities/enemy_medabot/keithturtle/bezelga/basstroyer/baroncastle/devil

execute if entity @e[type=minecraft:area_effect_cloud,tag=cpu_selection,tag=selected,tag=5] run function medabots_server:spawn_entities/enemy_medabot/smilidonad/baroncastle/seven_colors/shoot_spider/spider
kill @e[type=minecraft:area_effect_cloud,tag=cpu_selection]
scoreboard players set @e[tag=!medabot_model,distance=..1] Stage 41