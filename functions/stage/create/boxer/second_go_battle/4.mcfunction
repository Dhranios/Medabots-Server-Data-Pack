execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=4] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=4] positioned -1912 44 -588 run function medabots_server:spawn_entities/medabot/sailor_multi/sailor_multi/sailor_multi/sailor_multi/kabuto
execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=4] positioned -1912 44 -588 run scoreboard players set @e[distance=..1] Stage 29
execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=4] positioned -1912 44 -588 run tag @e[distance=..1] add enemy_medabot
execute positioned -1914 44 -588 run function medabots_server:spawn_entities/item/10_medallar_cents
execute positioned -1902 44 -585 run function medabots_server:set_blocks/stone
execute positioned -1904 44 -583 run function medabots_server:set_blocks/stone
execute positioned -1906 44 -581 run function medabots_server:set_blocks/stone
execute positioned -1908 44 -584 run function medabots_server:set_blocks/stone
execute positioned -1911 44 -583 run function medabots_server:set_blocks/stone
execute positioned -1911 44 -586 run function medabots_server:set_blocks/stone
execute positioned -1913 44 -587 run function medabots_server:set_blocks/stone
execute positioned -1911 44 -590 run function medabots_server:set_blocks/stone
execute positioned -1911 44 -592 run function medabots_server:set_blocks/stone
execute positioned -1909 44 -595 run function medabots_server:set_blocks/stone
execute positioned -1906 44 -593 run function medabots_server:set_blocks/stone
execute positioned -1903 44 -594 run function medabots_server:set_blocks/stone
execute positioned -1902 44 -592 run function medabots_server:set_blocks/stone
execute positioned -1900 44 -590 run function medabots_server:set_blocks/stone
execute positioned -1900 44 -587 run function medabots_server:set_blocks/stone
scoreboard players set @e[x=-1900.5,y=44,z=-581.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1901 44 -588
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=4] minecraft:night_vision 2 0 true
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=4] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=4] Battle 2
teleport @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=4] -1912 44 -588
summon minecraft:area_effect_cloud -1907 44 -589 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:boxer/robattle value 3600
bossbar set medabots_server:boxer/robattle players @a[scores={Stage=29}]
bossbar set medabots_server:boxer/time players