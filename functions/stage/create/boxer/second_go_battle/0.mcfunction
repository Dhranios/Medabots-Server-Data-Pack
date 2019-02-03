execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=0] run function medabots_server:stage/create/boxer/second_go_battle/0_cpu
summon minecraft:area_effect_cloud -1878 44 -557 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1878 44 -552 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1875 44 -549 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1870 44 -549 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1867 44 -552 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1867 44 -557 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1870 44 -560 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1875 44 -560 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
setblock -1878 44 -561 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/door",mode:"LOAD"}
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1878 44 -554
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=0] Battle 2
teleport @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=0] -1867 44 -555
summon minecraft:area_effect_cloud -1872 44 -554 {CustomName:"{\"translate\":\"medabots_server:message.stage.mission\"}",Tags:["mission","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:boxer/time value 3600
bossbar set medabots_server:boxer/time players @a[scores={Stage=79}]