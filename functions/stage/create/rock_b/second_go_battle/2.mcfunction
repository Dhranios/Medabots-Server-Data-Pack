execute unless entity @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,tag=0] run function medabots_server:stage/create/rock_b/second_go_battle/2_cpu
summon minecraft:area_effect_cloud -1613 45 -373 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1612 45 -378 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1609 45 -369 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1607 45 -378 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1604 45 -368 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1603 45 -372 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1602 45 -379 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1600 45 -375 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
setblock -1615 45 -372 minecraft:structure_block[mode=load]{name:"medabots_server:stage/door",mode:"LOAD"}
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1610 45 -373
effect give @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,tag=0] Battle 2
teleport @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,tag=0] -1604 45 -374
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizing_marker\"}",Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizing_marker\"}",Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1606 45 -375 {CustomName:"{\"translate\":\"medabots_server:entity.mr_referee\"}",Tags:["mr_referee"],Invisible:1b,Rotation:[0.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1608 45 -372 {CustomName:"{\"translate\":\"medabots_server:entity.mr_referee\"}",Tags:["mr_referee"],Invisible:1b,Rotation:[-180.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
scoreboard players set @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,scores={Stage=32}] Music 0
scoreboard players set @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,scores={Stage=32}] MusicType 1
scoreboard players set @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,scores={Stage=32}] Battle 0
bossbar set medabots_server:rock_b/time value 3600
bossbar set medabots_server:rock_b/time players @a[scores={Stage=32}]