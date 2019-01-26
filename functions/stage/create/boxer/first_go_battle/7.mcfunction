execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=7] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=7] run function medabots_server:stage/create/boxer/first_go_battle/7_cpu
setblock -1891 44 -558 minecraft:structure_block[mode=load]{name:"medabots_server:stage/open_door",mode:"LOAD"}
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1890 44 -569
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=7] minecraft:night_vision 2 0 true
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=7] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=7] Battle 2
teleport @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=7] -1889 44 -574
summon minecraft:armor_stand -1892 44 -572 {Invisible:1b,Marker:1b,Small:1b,CustomName:"{\"translate\":\"medabots_server:entity.mr_referee\"}",Tags:["mr_referee"],Rotation:[-90.0f,0.0f]}
bossbar set medabots_server:boxer/time value 3600
bossbar set medabots_server:boxer/time players @a[scores={Stage=79}]