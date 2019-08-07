execute unless entity @a[x=-1634,y=51,z=-315,dx=127,dy=4,dz=64,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1634,y=51,z=-315,dx=127,dy=4,dz=64,tag=0] positioned -1611 45 -297 run function medabots_server:spawn_entities/medabot/kasou_touchu/doctor_study/maxsnake/kasou_touchu/alien
execute unless entity @a[x=-1634,y=51,z=-315,dx=127,dy=4,dz=64,tag=0] positioned -1611 45 -297 run scoreboard players set @e[distance=..1] Stage 7
execute unless entity @a[x=-1634,y=51,z=-315,dx=127,dy=4,dz=64,tag=0] positioned -1611 45 -297 run tag @e[distance=..1] add enemy_medabot
execute positioned -1615 45 -304 run function medabots_server:set_blocks/gas_floor/enabled/ineffective
execute positioned -1611 45 -306 run function medabots_server:set_blocks/gas_floor/enabled/confuse
execute positioned -1607 45 -304 run function medabots_server:set_blocks/gas_floor/enabled/no_defend
execute positioned -1605 45 -300 run function medabots_server:set_blocks/gas_floor/enabled/confuse
execute positioned -1607 45 -296 run function medabots_server:set_blocks/gas_floor/enabled/ineffective
execute positioned -1611 45 -294 run function medabots_server:set_blocks/gas_floor/enabled/confuse
execute positioned -1615 45 -296 run function medabots_server:set_blocks/gas_floor/enabled/no_defend
tag @e[x=-1609.5,y=45,z=-307.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1611 45 -303
effect give @a[x=-1634,y=51,z=-315,dx=127,dy=4,dz=64,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1634,y=51,z=-315,dx=127,dy=4,dz=64,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1634,y=51,z=-315,dx=127,dy=4,dz=64,tag=0] Battle 2
teleport @a[x=-1634,y=51,z=-315,dx=127,dy=4,dz=64,tag=0] -1611 45 -297
summon minecraft:area_effect_cloud -1609 45 -300 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:ruins_out_a/robattle value 3600
bossbar set medabots_server:ruins_out_a/robattle players @a[scores={Stage=7}]
bossbar set medabots_server:ruins_out_a/time players