execute unless entity @e[x=-1611,y=45,z=-297,distance=..10,tag=enemy_medabot] run tellraw @s {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @e[x=-1611,y=45,z=-297,distance=..10,tag=enemy_medabot] run scoreboard players set @s BattlingMedabots 1
summon minecraft:area_effect_cloud -1608 45 -303 {CustomName:"{\"translate\":\"medabots_server:block.gas_floor\"}",Tags:["gas_floor","confuse","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1608 45 -297 {CustomName:"{\"translate\":\"medabots_server:block.gas_floor\"}",Tags:["gas_floor","confuse","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1605 45 -300 {CustomName:"{\"translate\":\"medabots_server:block.gas_floor\"}",Tags:["gas_floor","confuse"],Duration:2147483647}
summon minecraft:area_effect_cloud -1611 45 -294 {CustomName:"{\"translate\":\"medabots_server:block.gas_floor\"}",Tags:["gas_floor","confuse"],Duration:2147483647}
summon minecraft:area_effect_cloud -1604 45 -300 {CustomName:"{\"translate\":\"medabots_server:block.floor_switch\"}",Tags:["floor_switch","green_floor_switch"],Duration:2147483647}
summon minecraft:area_effect_cloud -1611 45 -293 {CustomName:"{\"translate\":\"medabots_server:block.floor_switch\"}",Tags:["floor_switch","green_floor_switch"],Duration:2147483647}
execute if entity @e[x=-1611,y=45,z=-297,distance=..10,tag=enemy_medabot] run setblock -1610 45 -308 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/door",mode:"LOAD"}
execute if entity @e[x=-1611,y=45,z=-297,distance=..10,tag=enemy_medabot] run effect give @s minecraft:night_vision 2 0 true
execute if entity @e[x=-1611,y=45,z=-297,distance=..10,tag=enemy_medabot] run effect give @s minecraft:blindness 2 0 true
execute if entity @e[x=-1611,y=45,z=-297,distance=..10,tag=enemy_medabot] run scoreboard players set @s Battle 2
execute if entity @e[x=-1611,y=45,z=-297,distance=..10,tag=enemy_medabot] run effect give @e[x=-1611,y=45,z=-297,distance=..10,tag=enemy_medabot] minecraft:night_vision 2 0 true
execute if entity @e[x=-1611,y=45,z=-297,distance=..10,tag=enemy_medabot] run effect give @e[x=-1611,y=45,z=-297,distance=..10,tag=enemy_medabot] minecraft:blindness 2 0 true
execute if entity @e[x=-1611,y=45,z=-297,distance=..10,tag=enemy_medabot] run scoreboard players set @e[x=-1611,y=45,z=-297,distance=..10,tag=enemy_medabot] Battle 2
execute if entity @e[x=-1611,y=45,z=-297,distance=..10,tag=enemy_medabot] run summon minecraft:area_effect_cloud -1610 45 -299 {CustomName:"{\"translate\":\"medabots_server:message.stage.mission\"}",Tags:["mission","defeat_the_enemy"],Duration:2147483647}
execute if entity @e[x=-1611,y=45,z=-297,distance=..10,tag=enemy_medabot] run teleport @e[x=-1611,y=45,z=-297,distance=..10,tag=enemy_medabot] -1611 45 -297
execute if entity @e[x=-1611,y=45,z=-297,distance=..10,tag=enemy_medabot] run teleport @s -1611 45 -303
bossbar set medabots_server:ruins_out_a/time value 3600
bossbar set medabots_server:ruins_out_a/time players @a[scores={Stage=20}]