execute unless entity @a[x=-1634,y=51,z=-315,dx=127,dy=4,dz=64,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1634,y=51,z=-315,dx=127,dy=4,dz=64,tag=0] positioned -1611 45 -297 run function medabots_server:spawn_entities/enemy_medabot/kasou_touchu/doctor_study/maxsnake/kasou_touchu/alien
execute unless entity @a[x=-1634,y=51,z=-315,dx=127,dy=4,dz=64,tag=0] positioned -1611 45 -297 run scoreboard players set @e[distance=..1] Stage 7
execute positioned -1608 45 -303 run function medabots_server:set_blocks/gas_floor/enabled/confuse
execute positioned -1608 45 -297 run function medabots_server:set_blocks/gas_floor/enabled/confuse
execute positioned -1605 45 -300 run function medabots_server:set_blocks/gas_floor/disabled/confuse
execute positioned -1611 45 -294 run function medabots_server:set_blocks/gas_floor/disabled/confuse
execute positioned -1604 45 -300 run function medabots_server:set_blocks/floor_switch/green
execute positioned -1611 45 -293 run function medabots_server:set_blocks/floor_switch/green
tag @e[x=-1609,y=45,z=-307.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1611 45 -303
effect give @a[x=-1634,y=51,z=-315,dx=127,dy=4,dz=64,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1634,y=51,z=-315,dx=127,dy=4,dz=64,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1634,y=51,z=-315,dx=127,dy=4,dz=64,tag=0] Battle 2
teleport @a[x=-1634,y=51,z=-315,dx=127,dy=4,dz=64,tag=0] -1611 45 -297
summon minecraft:area_effect_cloud -1610 45 -299 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:ruins_out_a/robattle value 3600
bossbar set medabots_server:ruins_out_a/robattle players @a[scores={Stage=7}]
bossbar set medabots_server:ruins_out_a/time players