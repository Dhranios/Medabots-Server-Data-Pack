execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=6] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=6] run function medabots_server:stage/create/boxer/second_go_battle/6_cpu
summon minecraft:item -1906 44 -547 {Item:{id:"minecraft:lapis_lazuli",Count:10b,tag:{medabots_server:{stage_item:1b,id:"medabots_server:medallar_cent"},display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.medallar_cent"}'}}},Tags:["hostile","do_not_teleport"],Age:-32768s}
summon minecraft:area_effect_cloud -1903 44 -561 {CustomName:'{"translate":"medabots_server:block.press_wall"}',Tags:["press_wall","south"],Duration:2147483647}
summon minecraft:area_effect_cloud -1905 44 -562 {CustomName:'{"translate":"medabots_server:block.press_wall"}',Tags:["press_wall","south"],Duration:2147483647}
summon minecraft:area_effect_cloud -1908 44 -562 {CustomName:'{"translate":"medabots_server:block.press_wall"}',Tags:["press_wall","south"],Duration:2147483647}
summon minecraft:area_effect_cloud -1910 44 -561 {CustomName:'{"translate":"medabots_server:block.press_wall"}',Tags:["press_wall","south"],Duration:2147483647}
summon minecraft:area_effect_cloud -1913 44 -558 {CustomName:'{"translate":"medabots_server:block.press_wall"}',Tags:["press_wall","east"],Duration:2147483647}
summon minecraft:area_effect_cloud -1914 44 -556 {CustomName:'{"translate":"medabots_server:block.press_wall"}',Tags:["press_wall","east"],Duration:2147483647}
summon minecraft:area_effect_cloud -1914 44 -553 {CustomName:'{"translate":"medabots_server:block.press_wall"}',Tags:["press_wall","east"],Duration:2147483647}
summon minecraft:area_effect_cloud -1913 44 -551 {CustomName:'{"translate":"medabots_server:block.press_wall"}',Tags:["press_wall","east"],Duration:2147483647}
summon minecraft:area_effect_cloud -1910 44 -548 {CustomName:'{"translate":"medabots_server:block.press_wall"}',Tags:["press_wall","north"],Duration:2147483647}
summon minecraft:area_effect_cloud -1908 44 -547 {CustomName:'{"translate":"medabots_server:block.press_wall"}',Tags:["press_wall","north"],Duration:2147483647}
summon minecraft:area_effect_cloud -1905 44 -547 {CustomName:'{"translate":"medabots_server:block.press_wall"}',Tags:["press_wall","north"],Duration:2147483647}
summon minecraft:area_effect_cloud -1903 44 -548 {CustomName:'{"translate":"medabots_server:block.press_wall"}',Tags:["press_wall","north"],Duration:2147483647}
summon minecraft:area_effect_cloud -1900 44 -551 {CustomName:'{"translate":"medabots_server:block.press_wall"}',Tags:["press_wall","west"],Duration:2147483647}
summon minecraft:area_effect_cloud -1899 44 -553 {CustomName:'{"translate":"medabots_server:block.press_wall"}',Tags:["press_wall","west"],Duration:2147483647}
summon minecraft:area_effect_cloud -1899 44 -556 {CustomName:'{"translate":"medabots_server:block.press_wall"}',Tags:["press_wall","west"],Duration:2147483647}
summon minecraft:area_effect_cloud -1900 44 -558 {CustomName:'{"translate":"medabots_server:block.press_wall"}',Tags:["press_wall","west"],Duration:2147483647}
scoreboard players set @e[x=-1903,y=44,z=-561,distance=..1,type=minecraft:area_effect_cloud,tag=press_wall] Range 5
scoreboard players set @e[x=-1905,y=44,z=-562,distance=..1,type=minecraft:area_effect_cloud,tag=press_wall] Range 8
scoreboard players set @e[x=-1908,y=44,z=-562,distance=..1,type=minecraft:area_effect_cloud,tag=press_wall] Range 8
scoreboard players set @e[x=-1910,y=44,z=-561,distance=..1,type=minecraft:area_effect_cloud,tag=press_wall] Range 5
scoreboard players set @e[x=-1913,y=44,z=-558,distance=..1,type=minecraft:area_effect_cloud,tag=press_wall] Range 3
scoreboard players set @e[x=-1914,y=44,z=-556,distance=..1,type=minecraft:area_effect_cloud,tag=press_wall] Range 6
scoreboard players set @e[x=-1914,y=44,z=-553,distance=..1,type=minecraft:area_effect_cloud,tag=press_wall] Range 6
scoreboard players set @e[x=-1913,y=44,z=-551,distance=..1,type=minecraft:area_effect_cloud,tag=press_wall] Range 3
scoreboard players set @e[x=-1910,y=44,z=-548,distance=..1,type=minecraft:area_effect_cloud,tag=press_wall] Range 5
scoreboard players set @e[x=-1908,y=44,z=-547,distance=..1,type=minecraft:area_effect_cloud,tag=press_wall] Range 8
scoreboard players set @e[x=-1905,y=44,z=-547,distance=..1,type=minecraft:area_effect_cloud,tag=press_wall] Range 8
scoreboard players set @e[x=-1903,y=44,z=-548,distance=..1,type=minecraft:area_effect_cloud,tag=press_wall] Range 5
scoreboard players set @e[x=-1900,y=44,z=-551,distance=..1,type=minecraft:area_effect_cloud,tag=press_wall] Range 3
scoreboard players set @e[x=-1899,y=44,z=-553,distance=..1,type=minecraft:area_effect_cloud,tag=press_wall] Range 6
scoreboard players set @e[x=-1899,y=44,z=-556,distance=..1,type=minecraft:area_effect_cloud,tag=press_wall] Range 6
scoreboard players set @e[x=-1900,y=44,z=-558,distance=..1,type=minecraft:area_effect_cloud,tag=press_wall] Range 3
setblock -1900 44 -560 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1906 44 -560
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=6] minecraft:night_vision 2 0 true
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=6] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=6] Battle 2
teleport @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=6] -1906 44 -560
summon minecraft:area_effect_cloud -1907 44 -554 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:boxer/robattle value 3600
bossbar set medabots_server:boxer/robattle players @a[scores={Stage=80}]