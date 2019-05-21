execute unless entity @a[x=-1705,y=51,z=-179,dx=63,dy=4,dz=63,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1705,y=51,z=-179,dx=63,dy=4,dz=63,tag=0] positioned -1652 45 -129 run function medabots_server:spawn_entities/enemy_medabot/doctor_study/maxsnake/dondoguu/doctor_study/chameleon
execute unless entity @a[x=-1705,y=51,z=-179,dx=63,dy=4,dz=63,tag=0] positioned -1652 45 -129 run scoreboard players set @e[distance=..1] Stage 3
tag @e[x=-1661.5,y=45,z=-123.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1653 45 -124
effect give @a[x=-1705,y=51,z=-179,dx=63,dy=4,dz=63,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1705,y=51,z=-179,dx=63,dy=4,dz=63,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1705,y=51,z=-179,dx=63,dy=4,dz=63,tag=0] Battle 2
teleport @a[x=-1705,y=51,z=-179,dx=63,dy=4,dz=63,tag=0] -1652 45 -129
summon minecraft:area_effect_cloud -1652 45 -127 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:jungle_a/robattle value 3600
bossbar set medabots_server:jungle_a/robattle players @a[scores={Stage=3}]
bossbar set medabots_server:jungle_a/time players