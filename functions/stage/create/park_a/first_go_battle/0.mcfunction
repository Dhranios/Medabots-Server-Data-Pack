execute unless entity @a[x=-1854,y=51,z=-633,dx=91,dy=4,dz=94,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1854,y=51,z=-633,dx=91,dy=4,dz=94,tag=0] positioned -1811 45 -605 run function medabots_server:spawn_entities/medabot/kasou_touchu/basstroyer/kasou_touchu/kasou_touchu/alien
execute unless entity @a[x=-1854,y=51,z=-633,dx=91,dy=4,dz=94,tag=0] positioned -1811 45 -605 run scoreboard players set @e[distance=..1] Stage 19
execute unless entity @a[x=-1854,y=51,z=-633,dx=91,dy=4,dz=94,tag=0] positioned -1811 45 -605 run tag @e[distance=..1] add enemy_medabot
execute positioned -1806 45 -604 run function medabots_server:set_blocks/floor_switch/green
scoreboard players set @e[x=-1817.5,y=45,z=-604.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1815 45 -605
effect give @a[x=-1854,y=51,z=-633,dx=91,dy=4,dz=94,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1854,y=51,z=-633,dx=91,dy=4,dz=94,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1854,y=51,z=-633,dx=91,dy=4,dz=94,tag=0] Battle 2
teleport @a[x=-1854,y=51,z=-633,dx=91,dy=4,dz=94,tag=0] -1811 45 -605
summon minecraft:area_effect_cloud -1812 45 -606 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","open_the_exit_door"],Duration:2147483647}
bossbar set medabots_server:park_a/robattle value 3600
bossbar set medabots_server:park_a/robattle players @a[scores={Stage=19}]
bossbar set medabots_server:park_a/time players