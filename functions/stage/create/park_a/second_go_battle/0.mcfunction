execute unless entity @a[x=-1854,y=51,z=-633,dx=91,dy=4,dz=94,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1854,y=51,z=-633,dx=91,dy=4,dz=94,tag=0] positioned -1811 45 -586 run function medabots_server:spawn_entities/medabot/shoot_spider/maxsnake/basstroyer/shoot_spider/chameleon
execute unless entity @a[x=-1854,y=51,z=-633,dx=91,dy=4,dz=94,tag=0] positioned -1811 45 -586 run scoreboard players set @e[distance=..1] Stage 19
execute unless entity @a[x=-1854,y=51,z=-633,dx=91,dy=4,dz=94,tag=0] positioned -1811 45 -586 run tag @e[distance=..1] add enemy_medabot
execute positioned -1802 45 -575 run function medabots_server:set_blocks/action_floor/guard/medium/power_0
execute positioned -1818 45 -585 run function medabots_server:set_blocks/action_floor/guard/medium/power_0
execute positioned -1802 45 -596 run function medabots_server:set_blocks/action_floor/guard/medium/power_0
execute positioned -1795 45 -587 run function medabots_server:set_blocks/action_floor/cannon/swiffle/west/delay_4/power_0
execute positioned -1795 45 -584 run function medabots_server:set_blocks/action_floor/cannon/swiffle/west/delay_4/power_0
execute positioned -1808 45 -577 run function medabots_server:set_blocks/action_floor/cannon/swiffle/north/delay_4/power_0
execute positioned -1812 45 -579 run function medabots_server:set_blocks/action_floor/cannon/swiffle/east/delay_4/power_0
execute positioned -1812 45 -592 run function medabots_server:set_blocks/action_floor/cannon/swiffle/east/delay_4/power_0
execute positioned -1808 45 -595 run function medabots_server:set_blocks/action_floor/cannon/swiffle/south/delay_4/power_0
scoreboard players set @e[x=-1793.5,y=45,z=-584.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1802 45 -585
effect give @a[x=-1854,y=51,z=-633,dx=91,dy=4,dz=94,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1854,y=51,z=-633,dx=91,dy=4,dz=94,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1854,y=51,z=-633,dx=91,dy=4,dz=94,tag=0] Battle 2
teleport @a[x=-1854,y=51,z=-633,dx=91,dy=4,dz=94,tag=0] -1811 45 -586
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1806 45 -591 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[0.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1807 45 -580 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[-180.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:park_a/robattle value 3600
bossbar set medabots_server:park_a/robattle players @a[scores={Stage=19}]
bossbar set medabots_server:park_a/time players