execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=2] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=2] run function medabots_server:stage/create/boxer/second_go_battle/2_cpu
summon minecraft:area_effect_cloud -1874 44 -582 {CustomName:"{\"translate\":\"medabots_server:block.hole\"}",Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1871 44 -582 {CustomName:"{\"translate\":\"medabots_server:block.hole\"}",Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1868 44 -584 {CustomName:"{\"translate\":\"medabots_server:block.hole\"}",Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1866 44 -587 {CustomName:"{\"translate\":\"medabots_server:block.hole\"}",Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1866 44 -590 {CustomName:"{\"translate\":\"medabots_server:block.hole\"}",Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1868 44 -593 {CustomName:"{\"translate\":\"medabots_server:block.hole\"}",Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1871 44 -595 {CustomName:"{\"translate\":\"medabots_server:block.hole\"}",Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1874 44 -595 {CustomName:"{\"translate\":\"medabots_server:block.hole\"}",Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1877 44 -593 {CustomName:"{\"translate\":\"medabots_server:block.hole\"}",Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1879 44 -590 {CustomName:"{\"translate\":\"medabots_server:block.hole\"}",Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1879 44 -587 {CustomName:"{\"translate\":\"medabots_server:block.hole\"}",Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1877 44 -584 {CustomName:"{\"translate\":\"medabots_server:block.hole\"}",Tags:["hole","delay_5"],Duration:2147483647}
setblock -1879 44 -583 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1873 44 -583
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=2] minecraft:night_vision 2 0 true
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=2] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=2] Battle 2
teleport @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=2] -1873 44 -594
summon minecraft:area_effect_cloud -1872 44 -589 {CustomName:"{\"translate\":\"medabots_server:message.stage.mission\"}",Tags:["mission","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:boxer/time value 3600
bossbar set medabots_server:boxer/time players @a[scores={Stage=80}]