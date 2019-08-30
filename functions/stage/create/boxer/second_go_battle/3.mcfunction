execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=3] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=3] positioned -1890 44 -594 run function medabots_server:spawn_entities/medabot/aimflash/aimflash/aimflash/aimflash/monkey
execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=3] positioned -1890 44 -594 run scoreboard players set @e[distance=..1] Stage 29
execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=3] positioned -1890 44 -594 run tag @e[distance=..1] add enemy_medabot
execute positioned -1890 44 -602 run function medabots_server:spawn_entities/item/10_medallar_cents
execute positioned -1890 44 -598 run function medabots_server:spawn_entities/guard/medium
execute positioned -1889 44 -598 run function medabots_server:spawn_entities/guard/medium
execute positioned -1890 44 -601 run function medabots_server:spawn_entities/cannon/search/south/delay_4
execute positioned -1889 44 -601 run function medabots_server:spawn_entities/cannon/search/south/delay_4
execute positioned -1897 44 -593 run function medabots_server:set_blocks/laser_trap/south/delay_10/power_0
execute positioned -1882 44 -593 run function medabots_server:set_blocks/laser_trap/south/delay_10/power_0
execute positioned -1895 44 -590 run function medabots_server:set_blocks/laser_trap/south/delay_10/power_0
execute positioned -1884 44 -590 run function medabots_server:set_blocks/laser_trap/south/delay_10/power_0
execute positioned -1893 44 -588 run function medabots_server:set_blocks/laser_trap/south/delay_10/power_0
execute positioned -1886 44 -588 run function medabots_server:set_blocks/laser_trap/south/delay_10/power_0
execute positioned -1896 44 -598 run function medabots_server:set_blocks/laser_trap/south/delay_15/power_0
execute positioned -1883 44 -598 run function medabots_server:set_blocks/laser_trap/south/delay_15/power_0
execute positioned -1894 44 -600 run function medabots_server:set_blocks/laser_trap/south/delay_15/power_0
execute positioned -1885 44 -600 run function medabots_server:set_blocks/laser_trap/south/delay_15/power_0
execute positioned -1892 44 -601 run function medabots_server:set_blocks/laser_trap/south/delay_15/power_0
execute positioned -1887 44 -601 run function medabots_server:set_blocks/laser_trap/south/delay_15/power_0
scoreboard players set @e[x=-1888.5,y=44,z=-585.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1890 44 -588
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=3] minecraft:night_vision 2 0 true
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=3] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=3] Battle 2
teleport @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=3] -1890 44 -594
summon minecraft:area_effect_cloud -1889 44 -595 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:boxer/robattle value 3600
bossbar set medabots_server:boxer/robattle players @a[scores={Stage=29}]
bossbar set medabots_server:boxer/time players