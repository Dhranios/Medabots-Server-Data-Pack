execute unless entity @a[x=-1634,y=51,z=-315,dx=127,dy=4,dz=64,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1634,y=51,z=-315,dx=127,dy=4,dz=64,tag=0] run function medabots_server:stage/create/ruins_out_a/first_go_battle/0_cpu
summon minecraft:area_effect_cloud -1608 45 -303 {CustomName:"{\"translate\":\"medabots_server:block.gas_floor\"}",Tags:["gas_floor","confuse","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1608 45 -297 {CustomName:"{\"translate\":\"medabots_server:block.gas_floor\"}",Tags:["gas_floor","confuse","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1605 45 -300 {CustomName:"{\"translate\":\"medabots_server:block.gas_floor\"}",Tags:["gas_floor","confuse"],Duration:2147483647}
summon minecraft:area_effect_cloud -1611 45 -294 {CustomName:"{\"translate\":\"medabots_server:block.gas_floor\"}",Tags:["gas_floor","confuse"],Duration:2147483647}
summon minecraft:area_effect_cloud -1604 45 -300 {CustomName:"{\"translate\":\"medabots_server:block.floor_switch\"}",Tags:["floor_switch","green_floor_switch"],Duration:2147483647}
summon minecraft:area_effect_cloud -1611 45 -293 {CustomName:"{\"translate\":\"medabots_server:block.floor_switch\"}",Tags:["floor_switch","green_floor_switch"],Duration:2147483647}
setblock -1610 45 -308 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/door",mode:"LOAD"}
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1611 45 -303
effect give @a[x=-1634,y=51,z=-315,dx=127,dy=4,dz=64,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1634,y=51,z=-315,dx=127,dy=4,dz=64,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1634,y=51,z=-315,dx=127,dy=4,dz=64,tag=0] Battle 2
teleport @a[x=-1634,y=51,z=-315,dx=127,dy=4,dz=64,tag=0] -1611 45 -297
summon minecraft:area_effect_cloud -1610 45 -299 {CustomName:"{\"translate\":\"medabots_server:message.stage.mission\"}",Tags:["mission","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:ruins_out_a/time value 3600
bossbar set medabots_server:ruins_out_a/time players @a[scores={Stage=20}]