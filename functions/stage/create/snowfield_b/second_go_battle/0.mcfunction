execute unless entity @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=0] positioned -1746 45 -460 run function medabots_server:spawn_entities/medabot/grade_kabuki/doctor_study/dragonbeetle/grade_kabuki/alien
execute unless entity @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=0] positioned -1746 45 -460 run scoreboard players set @e[distance=..1] Stage 14
execute unless entity @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=0] positioned -1746 45 -460 run tag @e[distance=..1] add enemy_medabot
execute positioned -1738 45 -468 run function medabots_server:spawn_entities/guard/slow
execute positioned -1751 45 -455 run function medabots_server:spawn_entities/item/6_medallar_cents
execute positioned -1751 45 -455 run function medabots_server:set_blocks/floor_switch/green
execute positioned -1739 45 -467 run function medabots_server:set_blocks/gas_floor/confuse/power_0
execute positioned -1740 45 -463 run function medabots_server:set_blocks/gas_floor/confuse/power_0
execute positioned -1743 45 -461 run function medabots_server:set_blocks/gas_floor/confuse/power_0
execute positioned -1741 45 -458 run function medabots_server:set_blocks/gas_floor/confuse/power_0
execute positioned -1744 45 -459 run function medabots_server:set_blocks/gas_floor/confuse/power_0
execute positioned -1747 45 -456 run function medabots_server:set_blocks/gas_floor/confuse/power_0
execute positioned -1748 45 -461 run function medabots_server:set_blocks/gas_floor/confuse/power_0
scoreboard players set @e[x=-1736.5,y=45,z=-460.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1742 45 -459
effect give @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=0] Battle 2
teleport @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=0] -1746 45 -460
summon minecraft:area_effect_cloud -1745 45 -458 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","open_the_exit_door"],Duration:2147483647}
bossbar set medabots_server:snowfield_b/robattle value 3600
bossbar set medabots_server:snowfield_b/robattle players @a[scores={Stage=14}]
bossbar set medabots_server:snowfield_b/time players