execute unless entity @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,tag=0] run function medabots_server:stage/create/rock_b/second_go_battle/0_cpu
setblock -1595 45 -344 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1590 45 -345
effect give @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,tag=0] Battle 2
teleport @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,tag=0] -1586 45 -344
summon minecraft:area_effect_cloud -1588 45 -345 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:rock_b/robattle value 3600
bossbar set medabots_server:rock_b/robattle players @a[scores={Stage=32}]