execute unless entity @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=1] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=1] run function medabots_server:stage/create/laboratory_a/second_go_battle/1_cpu
execute positioned -1794 44 -269 run function medabots_server:spawn_entities/guard/slow
execute positioned -1805 44 -269 run function medabots_server:spawn_entities/guard/slow
execute positioned -1794 44 -264 run function medabots_server:spawn_entities/guard/slow
execute positioned -1805 44 -264 run function medabots_server:spawn_entities/guard/slow
execute positioned -1794 44 -259 run function medabots_server:spawn_entities/guard/slow
execute positioned -1805 44 -259 run function medabots_server:spawn_entities/guard/slow
execute positioned -1794 44 -254 run function medabots_server:spawn_entities/guard/slow
execute positioned -1805 44 -254 run function medabots_server:spawn_entities/guard/slow
tag @e[x=-1798.5,y=44,z=-271.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1800 44 -264
effect give @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=1] minecraft:night_vision 2 0 true
effect give @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=1] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=1] Battle 2
teleport @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=1] -1799 44 -259
summon minecraft:area_effect_cloud -1800 44 -262 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:laboratory_a/robattle value 3600
bossbar set medabots_server:laboratory_a/robattle players @a[scores={Stage=27}]