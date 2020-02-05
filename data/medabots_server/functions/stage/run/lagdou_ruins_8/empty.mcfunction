execute if entity @e[x=-1319,y=35,z=-2,dx=59,dy=13,dz=62,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=43},tag=medabot,tag=!enemy_medabot,tag=!ally_medabot]
execute if entity @e[x=-1319,y=35,z=-2,dx=59,dy=13,dz=62,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=43},tag=enemy_medabot] run scoreboard players add @s BattlingMedabots 1
execute if entity @e[x=-1319,y=35,z=-2,dx=59,dy=13,dz=62,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=43},tag=ally_medabot] run scoreboard players add @s BattlingMedabots 1
execute as @e[x=-1319,y=35,z=-2,dx=59,dy=13,dz=62,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 43
execute as @e[scores={Stage=43},tag=practice_battle] run tag @e[scores={Stage=43},tag=medabot] add practice_robattle
execute as @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/lagdou_ruins_8
advancement grant @s[scores={BattlingMedabots=1,State=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_8_first_go=true}] only medabots_server:stages/wave_1/lagdou_ruins_8_second_go
advancement grant @s[scores={BattlingMedabots=1,State=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_8_first_go=false}] only medabots_server:stages/wave_1/lagdou_ruins_8_first_go
execute if entity @s[scores={BattlingMedabots=1,State=1..}] as @a[scores={Stage=43}] run function medabots_server:stage/get_score/time_damage_kills
execute if entity @s[scores={BattlingMedabots=1,State=1..}] as @a[scores={Stage=43}] positioned -1290 49 29 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute unless entity @e[x=-1319,y=34,z=-2,dx=59,dy=13,dz=62,tag=bridge_timer,type=minecraft:area_effect_cloud] run fill -1319 38 -2 -1260 38 60 minecraft:water[level=0] replace minecraft:oak_slab
execute unless entity @e[x=-1319,y=34,z=-2,dx=59,dy=13,dz=62,tag=bridge_timer,type=minecraft:area_effect_cloud] run fill -1319 36 -2 -1260 36 60 minecraft:water[level=0] replace minecraft:oak_slab
execute unless entity @e[x=-1319,y=34,z=-2,dx=59,dy=13,dz=62,tag=bridge_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["bridge_marker","1"]}
execute unless entity @e[x=-1319,y=34,z=-2,dx=59,dy=13,dz=62,tag=bridge_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["bridge_marker","2"]}
execute unless entity @e[x=-1319,y=34,z=-2,dx=59,dy=13,dz=62,tag=bridge_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["bridge_marker","3"]}
execute unless entity @e[x=-1319,y=34,z=-2,dx=59,dy=13,dz=62,tag=bridge_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["bridge_marker","4"]}
execute unless entity @e[x=-1319,y=34,z=-2,dx=59,dy=13,dz=62,tag=bridge_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["bridge_marker","5"]}
execute unless entity @e[x=-1319,y=34,z=-2,dx=59,dy=13,dz=62,tag=bridge_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["bridge_marker","6"]}
execute unless entity @e[x=-1319,y=34,z=-2,dx=59,dy=13,dz=62,tag=bridge_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["bridge_marker","7"]}
execute unless entity @e[x=-1319,y=34,z=-2,dx=59,dy=13,dz=62,tag=bridge_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["bridge_marker","8"]}
execute unless entity @e[x=-1319,y=34,z=-2,dx=59,dy=13,dz=62,tag=bridge_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["bridge_marker","9"]}
execute unless entity @e[x=-1319,y=34,z=-2,dx=59,dy=13,dz=62,tag=bridge_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["bridge_marker","10"]}
execute unless entity @e[x=-1319,y=34,z=-2,dx=59,dy=13,dz=62,tag=bridge_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["bridge_marker","11"]}
execute unless entity @e[x=-1319,y=34,z=-2,dx=59,dy=13,dz=62,tag=bridge_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["bridge_marker","12"]}
execute unless entity @e[x=-1319,y=34,z=-2,dx=59,dy=13,dz=62,tag=bridge_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["bridge_marker","13"]}
execute unless entity @e[x=-1319,y=34,z=-2,dx=59,dy=13,dz=62,tag=bridge_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["bridge_marker","14"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=bridge_marker,limit=7] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=1,tag=selected] run fill -1313 38 7 -1308 38 12 minecraft:oak_slab[waterlogged=true,type=top]
execute if entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=2,tag=selected] run fill -1316 38 28 -1314 38 33 minecraft:oak_slab[waterlogged=true,type=top]
execute if entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=3,tag=selected] run fill -1319 38 43 -1317 38 51 minecraft:oak_slab[waterlogged=true,type=top]
execute if entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=4,tag=selected] run fill -1307 38 46 -1305 38 51 minecraft:oak_slab[waterlogged=true,type=top]
execute if entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=5,tag=selected] run fill -1304 38 58 -1302 38 60 minecraft:oak_slab[waterlogged=true,type=top]
execute if entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=6,tag=selected] run fill -1286 38 55 -1281 38 57 minecraft:oak_slab[waterlogged=true,type=top]
execute if entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=7,tag=selected] run fill -1262 38 34 -1260 38 42 minecraft:oak_slab[waterlogged=true,type=top]
execute if entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=8,tag=selected] run fill -1271 38 19 -1266 38 21 minecraft:oak_slab[waterlogged=true,type=top]
execute if entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=9,tag=selected] run fill -1292 38 43 -1290 38 54 minecraft:oak_slab[waterlogged=true,type=top]
execute if entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=10,tag=selected] run fill -1283 38 34 -1275 38 36 minecraft:oak_slab[waterlogged=true,type=top]
execute if entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=11,tag=selected] run fill -1292 38 25 -1290 38 30 minecraft:oak_slab[waterlogged=true,type=top]
execute if entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=12,tag=selected] run fill -1286 38 22 -1275 38 24 minecraft:oak_slab[waterlogged=true,type=top]
execute if entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=13,tag=selected] run fill -1292 38 16 -1287 38 18 minecraft:oak_slab[waterlogged=true,type=top]
execute if entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=14,tag=selected] run fill -1304 38 19 -1293 38 21 minecraft:oak_slab[waterlogged=true,type=top]
execute if entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=selected] unless entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=1,tag=selected] run fill -1313 36 7 -1308 36 12 minecraft:oak_slab[waterlogged=true,type=bottom]
execute if entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=selected] unless entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=2,tag=selected] run fill -1316 36 28 -1314 36 33 minecraft:oak_slab[waterlogged=true,type=bottom]
execute if entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=selected] unless entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=3,tag=selected] run fill -1319 36 43 -1317 36 51 minecraft:oak_slab[waterlogged=true,type=bottom]
execute if entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=selected] unless entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=4,tag=selected] run fill -1307 36 46 -1305 36 51 minecraft:oak_slab[waterlogged=true,type=bottom]
execute if entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=selected] unless entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=5,tag=selected] run fill -1304 36 58 -1302 36 60 minecraft:oak_slab[waterlogged=true,type=bottom]
execute if entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=selected] unless entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=6,tag=selected] run fill -1286 36 55 -1281 36 57 minecraft:oak_slab[waterlogged=true,type=bottom]
execute if entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=selected] unless entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=7,tag=selected] run fill -1262 36 34 -1260 36 42 minecraft:oak_slab[waterlogged=true,type=bottom]
execute if entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=selected] unless entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=8,tag=selected] run fill -1271 36 19 -1266 36 21 minecraft:oak_slab[waterlogged=true,type=bottom]
execute if entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=selected] unless entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=9,tag=selected] run fill -1292 36 43 -1290 36 54 minecraft:oak_slab[waterlogged=true,type=bottom]
execute if entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=selected] unless entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=10,tag=selected] run fill -1283 36 34 -1275 36 36 minecraft:oak_slab[waterlogged=true,type=bottom]
execute if entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=selected] unless entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=11,tag=selected] run fill -1292 36 25 -1290 36 30 minecraft:oak_slab[waterlogged=true,type=bottom]
execute if entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=selected] unless entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=12,tag=selected] run fill -1286 36 22 -1275 36 24 minecraft:oak_slab[waterlogged=true,type=bottom]
execute if entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=selected] unless entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=13,tag=selected] run fill -1292 36 16 -1287 36 18 minecraft:oak_slab[waterlogged=true,type=bottom]
execute if entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=selected] unless entity @e[type=minecraft:area_effect_cloud,tag=bridge_marker,tag=14,tag=selected] run fill -1304 36 19 -1293 36 21 minecraft:oak_slab[waterlogged=true,type=bottom]
kill @e[type=minecraft:area_effect_cloud,tag=bridge_marker]
execute unless entity @e[x=-1319,y=34,z=-2,dx=59,dy=13,dz=62,tag=bridge_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["bridge_timer"],Duration:720}