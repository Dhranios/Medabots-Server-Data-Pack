execute unless entity @a[x=-1760,y=51,z=-633,dx=92,dy=8,dz=92,tag=2] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1760,y=51,z=-633,dx=92,dy=8,dz=92,tag=2] positioned -1743 44 -591 run function medabots_server:spawn_entities/medabot/nin_ninja/kasou_touchu/kanehachi_mk2/nin_ninja/knight
execute unless entity @a[x=-1760,y=51,z=-633,dx=92,dy=8,dz=92,tag=2] positioned -1743 44 -591 run scoreboard players set @e[distance=..1] Stage 18
execute unless entity @a[x=-1760,y=51,z=-633,dx=92,dy=8,dz=92,tag=2] positioned -1743 44 -591 run tag @e[distance=..1] add enemy_medabot
execute positioned -1749 44 -581 run function medabots_server:spawn_entities/guard/normal
execute positioned -1737 44 -580 run function medabots_server:spawn_entities/guard/normal
execute positioned -1749 44 -593 run function medabots_server:spawn_entities/guard/normal
execute positioned -1737 44 -593 run function medabots_server:spawn_entities/guard/normal
execute positioned -1754 44 -586 run function medabots_server:spawn_entities/cannon/detect/rotating/south/delay_4
execute positioned -1732 44 -583 run function medabots_server:spawn_entities/cannon/detect/rotating/west/delay_4
execute positioned -1755 44 -593 run function medabots_server:spawn_entities/cannon/detect/rotating/east/delay_4
execute positioned -1739 44 -598 run function medabots_server:spawn_entities/cannon/detect/rotating/south/delay_4
execute positioned -1755 44 -586 run function medabots_server:set_blocks/floor_switch/blue
execute positioned -1750 44 -580 run function medabots_server:set_blocks/floor_switch/blue
execute positioned -1731 44 -583 run function medabots_server:set_blocks/floor_switch/blue
execute positioned -1739 44 -579 run function medabots_server:set_blocks/floor_switch/blue
execute positioned -1756 44 -593 run function medabots_server:set_blocks/floor_switch/blue
execute positioned -1753 44 -597 run function medabots_server:set_blocks/floor_switch/blue
execute positioned -1739 44 -599 run function medabots_server:set_blocks/floor_switch/blue
execute positioned -1733 44 -599 run function medabots_server:set_blocks/floor_switch/blue
execute positioned -1755 44 -586 run function medabots_server:set_blocks/pot
execute positioned -1750 44 -580 run function medabots_server:set_blocks/pot
execute positioned -1731 44 -583 run function medabots_server:set_blocks/pot
execute positioned -1739 44 -579 run function medabots_server:set_blocks/pot
execute positioned -1756 44 -593 run function medabots_server:set_blocks/pot
execute positioned -1753 44 -597 run function medabots_server:set_blocks/pot
execute positioned -1739 44 -599 run function medabots_server:set_blocks/pot
execute positioned -1733 44 -599 run function medabots_server:set_blocks/pot
execute positioned -1743 44 -599 run function medabots_server:set_blocks/pot/6_medallar_cents
tag @e[x=-1742.5,y=44,z=-576.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1743 44 -587
effect give @a[x=-1760,y=51,z=-633,dx=92,dy=8,dz=92,tag=2] minecraft:night_vision 2 0 true
effect give @a[x=-1760,y=51,z=-633,dx=92,dy=8,dz=92,tag=2] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1760,y=51,z=-633,dx=92,dy=8,dz=92,tag=2] Battle 2
teleport @a[x=-1760,y=51,z=-633,dx=92,dy=8,dz=92,tag=2] -1743 44 -591
summon minecraft:area_effect_cloud -1744 44 -589 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","open_the_exit_door"],Duration:2147483647}
bossbar set medabots_server:laboratory_b/robattle value 3600
bossbar set medabots_server:laboratory_b/robattle players @a[scores={Stage=18}]
bossbar set medabots_server:laboratory_b/time players