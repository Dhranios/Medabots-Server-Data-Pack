execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=0] run function medabots_server:stage/create/boxer/first_go_battle/0_cpu
summon minecraft:item -1865 44 -555 {Item:{id:"minecraft:lapis_lazuli",Count:10b,tag:{medabots_server:{id:"medabots_server:medallar_cent"},display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.medallar_cent\"}"}}},Tags:["hostile","do_not_teleport"],Age:-32768s}
summon minecraft:area_effect_cloud -1877 44 -557 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1875 44 -559 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1870 44 -559 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1868 44 -557 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1868 44 -552 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1870 44 -550 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1875 44 -550 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1877 44 -552 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
setblock -1879 44 -562 minecraft:structure_block[mode=load]{name:"medabots_server:stage/door",mode:"LOAD"}
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1874 44 -554
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=0] Battle 2
teleport @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=0] -1871 44 -555
summon minecraft:area_effect_cloud -1872 44 -554 {CustomName:"{\"translate\":\"medabots_server:message.stage.mission\"}",Tags:["mission","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:boxer/time value 3600
bossbar set medabots_server:boxer/time players @a[scores={Stage=79}]