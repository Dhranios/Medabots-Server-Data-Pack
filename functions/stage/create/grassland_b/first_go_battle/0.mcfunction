execute unless entity @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=0] positioned -1521 45 -328 run function medabots_server:spawn_entities/medabot/fly_falcon/basstroyer/nin_ninja/fly_falcon/kabuto
execute unless entity @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=0] positioned -1521 45 -328 run scoreboard players set @e[distance=..1] Stage 10
execute unless entity @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=0] positioned -1521 45 -328 run tag @e[distance=..1] add enemy_medabot
execute positioned -1521 45 -336 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1514 45 -333 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1527 45 -331 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1524 45 -325 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1518 45 -325 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1518 45 -335 run function medabots_server:set_blocks/stone
execute positioned -1526 45 -333 run function medabots_server:set_blocks/stone
execute positioned -1522 45 -332 run function medabots_server:set_blocks/stone
execute positioned -1517 45 -330 run function medabots_server:set_blocks/stone
execute positioned -1525 45 -328 run function medabots_server:set_blocks/stone
execute positioned -1518 45 -327 run function medabots_server:set_blocks/stone
scoreboard players set @e[x=-1521.5,y=45,z=-339.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1520 45 -332
effect give @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=0] Battle 2
teleport @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=0] -1521 45 -328
summon minecraft:area_effect_cloud -1521 45 -329 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:grassland_b/robattle value 3600
bossbar set medabots_server:grassland_b/robattle players @a[scores={Stage=10}]
bossbar set medabots_server:grassland_b/time players