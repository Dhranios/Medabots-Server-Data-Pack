execute unless entity @a[x=-1705,y=51,z=-179,dx=63,dy=4,dz=63,tag=1] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1705,y=51,z=-179,dx=63,dy=4,dz=63,tag=1] run function medabots_server:stage/create/jungle_a/first_go_battle/1_cpu
summon minecraft:area_effect_cloud -1690 45 -169 {CustomName:"{\"translate\":\"medabots_server:block.hole\"}",Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1692 45 -172 {CustomName:"{\"translate\":\"medabots_server:block.hole\"}",Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1695 45 -165 {CustomName:"{\"translate\":\"medabots_server:block.hole\"}",Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1695 45 -176 {CustomName:"{\"translate\":\"medabots_server:block.hole\"}",Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1697 45 -169 {CustomName:"{\"translate\":\"medabots_server:block.hole\"}",Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1700 45 -166 {CustomName:"{\"translate\":\"medabots_server:block.hole\"}",Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1700 45 -173 {CustomName:"{\"translate\":\"medabots_server:block.hole\"}",Tags:["hole","delay_5"],Duration:2147483647}
setblock -1687 45 -173 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1693 45 -168
effect give @a[x=-1705,y=51,z=-179,dx=63,dy=4,dz=63,tag=1] minecraft:night_vision 2 0 true
effect give @a[x=-1705,y=51,z=-179,dx=63,dy=4,dz=63,tag=1] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1705,y=51,z=-179,dx=63,dy=4,dz=63,tag=1] Battle 2
teleport @a[x=-1705,y=51,z=-179,dx=63,dy=4,dz=63,tag=1] -1697 45 -167
summon minecraft:armor_stand -1696 45 -166 {CustomName:"{\"translate\":\"medabots_server:entity.mr_referee\"}",Tags:["mr_referee"],Invisible:1b,Rotation:[-135f,0f]}
scoreboard players set @a[x=-1705,y=51,z=-179,dx=63,dy=4,dz=63,scores={Stage=8}] Music 0
scoreboard players set @a[x=-1705,y=51,z=-179,dx=63,dy=4,dz=63,scores={Stage=8}] MusicType 1
scoreboard players set @a[x=-1705,y=51,z=-179,dx=63,dy=4,dz=63,scores={Stage=8}] Battle 0
bossbar set medabots_server:jungle_a/time value 3600
bossbar set medabots_server:jungle_a/time players @a[scores={Stage=8}]