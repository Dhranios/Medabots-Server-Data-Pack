execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=6] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=6] run function medabots_server:stage/create/boxer/first_go_battle/6_cpu
summon minecraft:item -1906 44 -547 {Item:{id:"minecraft:lapis_lazuli",Count:10b,tag:{medabots_server:{id:"medabots_server:medallar_cent"},display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.medallar_cent\"}"}}},Tags:["hostile","do_not_teleport"],Age:-32768s}
setblock -1899 44 -561 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1907 43 -556
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=6] minecraft:night_vision 2 0 true
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=6] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=6] Battle 2
teleport @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=6] -1906 43 -553
summon minecraft:area_effect_cloud -1907 44 -554 {CustomName:"{\"translate\":\"medabots_server:message.stage.mission\"}",Tags:["mission","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:boxer/time value 3600
bossbar set medabots_server:boxer/time players @a[scores={Stage=79}]