execute unless entity @a[x=-1729,y=50,z=-344,dx=90,dy=4,dz=92,tag=1] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1729,y=50,z=-344,dx=90,dy=4,dz=92,tag=1] run function medabots_server:stage/create/ruins_in_a/second_go_battle/1_cpu
execute positioned -1727 44 -343 run function medabots_server:spawn_entities/guard/slow
execute positioned -1721 44 -341 run function medabots_server:spawn_entities/guard/slow
execute positioned -1712 44 -341 run function medabots_server:spawn_entities/guard/slow
execute positioned -1706 44 -343 run function medabots_server:spawn_entities/guard/slow
execute positioned -1727 44 -322 run function medabots_server:spawn_entities/guard/slow
execute positioned -1721 44 -324 run function medabots_server:spawn_entities/guard/slow
execute positioned -1712 44 -324 run function medabots_server:spawn_entities/guard/slow
execute positioned -1706 44 -322 run function medabots_server:spawn_entities/guard/slow
execute positioned -1722 44 -330 run function medabots_server:set_blocks/hammer_punch/disabled/north/delay_10
execute positioned -1722 44 -335 run function medabots_server:set_blocks/hammer_punch/disabled/south/delay_10
execute positioned -1711 44 -330 run function medabots_server:set_blocks/hammer_punch/disabled/north/delay_10
execute positioned -1711 44 -335 run function medabots_server:set_blocks/hammer_punch/disabled/south/delay_10
execute positioned -1722 44 -331 run function medabots_server:set_blocks/floor_switch/blue
execute positioned -1722 44 -334 run function medabots_server:set_blocks/floor_switch/blue
execute positioned -1711 44 -331 run function medabots_server:set_blocks/floor_switch/blue
execute positioned -1711 44 -334 run function medabots_server:set_blocks/floor_switch/blue
tag @e[x=-1716.5,y=44,z=-319.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1717 44 -331
effect give @a[x=-1729,y=50,z=-344,dx=90,dy=4,dz=92,tag=1] minecraft:night_vision 2 0 true
effect give @a[x=-1729,y=50,z=-344,dx=90,dy=4,dz=92,tag=1] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1729,y=50,z=-344,dx=90,dy=4,dz=92,tag=1] Battle 2
teleport @a[x=-1729,y=50,z=-344,dx=90,dy=4,dz=92,tag=1] -1716 44 -334
summon minecraft:area_effect_cloud -1717 44 -333 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:ruins_in_a/robattle value 3600
bossbar set medabots_server:ruins_in_a/robattle players @a[scores={Stage=8}]