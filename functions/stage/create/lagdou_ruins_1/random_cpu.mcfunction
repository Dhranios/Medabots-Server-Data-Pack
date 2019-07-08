summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"CPU Selection"}',Tags:["cpu_selection","1"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"CPU Selection"}',Tags:["cpu_selection","2"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"CPU Selection"}',Tags:["cpu_selection","3"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"CPU Selection"}',Tags:["cpu_selection","4"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"CPU Selection"}',Tags:["cpu_selection","5"],Duration:1}
tag @e[type=minecraft:area_effect_cloud,tag=cpu_selection,sort=random,limit=1] add selected
# Tarvos
execute if entity @e[type=minecraft:area_effect_cloud,tag=cpu_selection,tag=selected,tag=1] run function medabots_server:spawn_entities/enemy_medabot/basstroyer/attack_tyrano/abyss_greater/acehorn/unicorn
# Gargoyle
execute if entity @e[type=minecraft:area_effect_cloud,tag=cpu_selection,tag=selected,tag=2] run function medabots_server:spawn_entities/enemy_medabot/rokusho/hippopojamas/nin_ninja/fly_falcon/devil
# Bael
execute if entity @e[type=minecraft:area_effect_cloud,tag=cpu_selection,tag=selected,tag=3] run function medabots_server:spawn_entities/enemy_medabot/warbonnet/maxsnake/knight_armor/maxsnake/spider
# Cyclops
execute if entity @e[type=minecraft:area_effect_cloud,tag=cpu_selection,tag=selected,tag=4] run function medabots_server:spawn_entities/enemy_medabot/king_pharaoh/dragonbeetle/dorcus/king_pharaoh/knight
# Wight
execute if entity @e[type=minecraft:area_effect_cloud,tag=cpu_selection,tag=selected,tag=5] run function medabots_server:spawn_entities/enemy_medabot/pururun_jelly/rokusho/seven_colors/rokusho/chameleon
kill @e[type=minecraft:area_effect_cloud,tag=cpu_selection]
scoreboard players set @e[tag=!medabot_model,distance=..1] Stage 36