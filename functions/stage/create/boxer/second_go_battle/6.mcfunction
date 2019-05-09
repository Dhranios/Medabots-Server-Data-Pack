execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=6] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=6] run function medabots_server:stage/create/boxer/second_go_battle/6_cpu
execute positioned -1906 44 -547 run function medabots_server:spawn_entities/item/10_medallar_cents
execute positioned -1903 44 -561 run function medabots_server:set_blocks/press_wall/disabled/south/range_5
execute positioned -1905 44 -562 run function medabots_server:set_blocks/press_wall/disabled/south/range_8
execute positioned -1908 44 -562 run function medabots_server:set_blocks/press_wall/disabled/south/range_8
execute positioned -1910 44 -561 run function medabots_server:set_blocks/press_wall/disabled/south/range_5
execute positioned -1913 44 -558 run function medabots_server:set_blocks/press_wall/disabled/east/range_3
execute positioned -1914 44 -556 run function medabots_server:set_blocks/press_wall/disabled/east/range_6
execute positioned -1914 44 -553 run function medabots_server:set_blocks/press_wall/disabled/east/range_6
execute positioned -1913 44 -551 run function medabots_server:set_blocks/press_wall/disabled/east/range_3
execute positioned -1910 44 -548 run function medabots_server:set_blocks/press_wall/disabled/north/range_5
execute positioned -1908 44 -547 run function medabots_server:set_blocks/press_wall/disabled/north/range_8
execute positioned -1905 44 -547 run function medabots_server:set_blocks/press_wall/disabled/north/range_8
execute positioned -1903 44 -548 run function medabots_server:set_blocks/press_wall/disabled/north/range_5
execute positioned -1900 44 -551 run function medabots_server:set_blocks/press_wall/disabled/west/range_3
execute positioned -1899 44 -553 run function medabots_server:set_blocks/press_wall/disabled/west/range_6
execute positioned -1899 44 -556 run function medabots_server:set_blocks/press_wall/disabled/west/range_6
execute positioned -1900 44 -558 run function medabots_server:set_blocks/press_wall/disabled/west/range_3
tag @e[x=-1899.5,y=44,z=-559.5,distance=..0.7,tag=door,tag=open] remove open
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
bossbar set medabots_server:boxer/robattle players @a[scores={Stage=29}]
bossbar set medabots_server:boxer/time players