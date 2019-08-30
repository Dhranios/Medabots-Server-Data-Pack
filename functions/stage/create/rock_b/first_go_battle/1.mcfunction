execute unless entity @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,tag=1] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,tag=1] positioned -1612 45 -355 run function medabots_server:spawn_entities/medabot/kasou_touchu/seven_colors/basstroyer/kasou_touchu/alien
execute unless entity @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,tag=1] positioned -1612 45 -355 run scoreboard players set @e[distance=..1] Stage 11
execute unless entity @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,tag=1] positioned -1612 45 -355 run tag @e[distance=..1] add enemy_medabot
execute positioned -1604 45 -352 run function medabots_server:spawn_entities/guard/slow/mission
execute positioned -1604 45 -356 run function medabots_server:spawn_entities/guard/slow/mission
execute positioned -1607 45 -354 run function medabots_server:spawn_entities/guard/slow/mission
execute positioned -1634 45 -381 run function medabots_server:set_blocks/whirlpool
scoreboard players set @e[x=-1621.5,y=45,z=-358.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1616 45 -354
effect give @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,tag=1] minecraft:night_vision 2 0 true
effect give @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,tag=1] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,tag=1] Battle 2
teleport @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,tag=1] -1612 45 -355
summon minecraft:area_effect_cloud -1615 45 -356 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","defeat_all_guards"],Duration:2147483647}
bossbar set medabots_server:rock_b/robattle value 3600
bossbar set medabots_server:rock_b/robattle players @a[scores={Stage=11}]
bossbar set medabots_server:rock_b/time players