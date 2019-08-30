execute unless entity @a[x=-1665,y=50,z=-704,dx=62,dy=4,dz=63,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1665,y=50,z=-704,dx=62,dy=4,dz=63,tag=0] positioned -1617 44 -688 run function medabots_server:spawn_entities/medabot/kanehachi_mk2/seven_colors/hellphoenix/kanehachi_mk2/kuwagata
execute unless entity @a[x=-1665,y=50,z=-704,dx=62,dy=4,dz=63,tag=0] positioned -1617 44 -688 run scoreboard players set @e[distance=..1] Stage 27
execute unless entity @a[x=-1665,y=50,z=-704,dx=62,dy=4,dz=63,tag=0] positioned -1617 44 -688 run tag @e[distance=..1] add enemy_medabot
execute positioned -1648 44 -698 run function medabots_server:set_blocks/stone
scoreboard players set @e[x=-1616.5,y=44,z=-683.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1617 44 -686
effect give @a[x=-1665,y=50,z=-704,dx=62,dy=4,dz=63,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1665,y=50,z=-704,dx=62,dy=4,dz=63,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1665,y=50,z=-704,dx=62,dy=4,dz=63,tag=0] Battle 2
teleport @a[x=-1665,y=50,z=-704,dx=62,dy=4,dz=63,tag=0] -1617 44 -687
summon minecraft:area_effect_cloud -1617 44 -687 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:ruins_out_c/robattle value 3600
bossbar set medabots_server:ruins_out_c/robattle players @a[scores={Stage=27}]
bossbar set medabots_server:ruins_out_c/time players