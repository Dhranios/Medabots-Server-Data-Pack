execute unless entity @a[x=-1668,y=51,z=-247,dx=105,dy=4,dz=63,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1668,y=51,z=-247,dx=105,dy=4,dz=63,tag=0] positioned -1630 45 -208 run function medabots_server:spawn_entities/medabot/kanehachi_mk2/hellphoenix/basstroyer/kanehachi_mk2/kuwagata
execute unless entity @a[x=-1668,y=51,z=-247,dx=105,dy=4,dz=63,tag=0] positioned -1630 45 -208 run scoreboard players set @e[distance=..1] Stage 5
execute unless entity @a[x=-1668,y=51,z=-247,dx=105,dy=4,dz=63,tag=0] positioned -1630 45 -208 run tag @e[distance=..1] add enemy_medabot
execute positioned -1634 45 -201 run function medabots_server:spawn_entities/ice_block
execute positioned -1631 45 -203 run function medabots_server:spawn_entities/ice_block
execute positioned -1627 45 -204 run function medabots_server:spawn_entities/ice_block
execute positioned -1625 45 -207 run function medabots_server:spawn_entities/ice_block
execute positioned -1624 45 -211 run function medabots_server:spawn_entities/ice_block
execute positioned -1628 45 -212 run function medabots_server:spawn_entities/ice_block
execute positioned -1632 45 -210 run function medabots_server:spawn_entities/ice_block
execute positioned -1634 45 -208 run function medabots_server:spawn_entities/ice_block
tag @e[x=-1622.5,y=45,z=-202.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1629 45 -205
effect give @a[x=-1668,y=51,z=-247,dx=105,dy=4,dz=63,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1668,y=51,z=-247,dx=105,dy=4,dz=63,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1668,y=51,z=-247,dx=105,dy=4,dz=63,tag=0] Battle 2
teleport @a[x=-1668,y=51,z=-247,dx=105,dy=4,dz=63,tag=0] -1630 45 -208
summon minecraft:area_effect_cloud -1629 45 -207 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:snowfield_a/robattle value 3600
bossbar set medabots_server:snowfield_a/robattle players @a[scores={Stage=5}]
bossbar set medabots_server:snowfield_a/time players