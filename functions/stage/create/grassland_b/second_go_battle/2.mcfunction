execute unless entity @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=0] run function medabots_server:stage/create/grassland_b/second_go_battle/2_cpu
summon minecraft:area_effect_cloud -1561 45 -391 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1549 45 -391 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1554 45 -393 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1550 45 -395 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1562 45 -396 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1553 45 -397 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1566 45 -399 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1557 45 -400 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1562 45 -403 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
setblock -1559 45 -386 minecraft:structure_block[mode=load]{name:"medabots_server:stage/door",mode:"LOAD"}
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1557 45 -392
effect give @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=0] Battle 2
teleport @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=0] -1557 45 -397
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizing_marker\"}",Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizing_marker\"}",Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1555 45 -394 {CustomName:"{\"translate\":\"medabots_server:entity.mr_referee\"}",Tags:["mr_referee"],Invisible:1b,Rotation:[90.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1559 45 -395 {CustomName:"{\"translate\":\"medabots_server:entity.mr_referee\"}",Tags:["mr_referee"],Invisible:1b,Rotation:[-90.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
scoreboard players set @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,scores={Stage=30}] Music 0
scoreboard players set @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,scores={Stage=30}] MusicType 1
scoreboard players set @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,scores={Stage=30}] Battle 0
bossbar set medabots_server:grassland_b/time value 3600
bossbar set medabots_server:grassland_b/time players @a[scores={Stage=30}]