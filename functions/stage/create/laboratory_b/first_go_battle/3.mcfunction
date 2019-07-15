execute unless entity @a[x=-1760,y=51,z=-633,dx=92,dy=4,dz=92,tag=3] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1760,y=51,z=-633,dx=92,dy=4,dz=92,tag=3] positioned -1743 44 -619 run function medabots_server:spawn_entities/enemy_medabot/poison_scorpi/knight_armor/kanehachi_mk2/poison_scorpi/kuwagata
execute unless entity @a[x=-1760,y=51,z=-633,dx=92,dy=4,dz=92,tag=3] positioned -1743 44 -619 run scoreboard players set @e[distance=..1] Stage 18
execute positioned -1732 44 -612 run function medabots_server:spawn_entities/guard/normal
execute positioned -1750 44 -613 run function medabots_server:spawn_entities/mission/cannon/detect/rotating/east/delay_4
execute positioned -1735 44 -606 run function medabots_server:spawn_entities/mission/cannon/no_detect/looking/north/delay_4
execute positioned -1756 44 -623 run function medabots_server:spawn_entities/mission/cannon/no_detect/looking/east/delay_4
execute positioned -1736 44 -624 run function medabots_server:spawn_entities/mission/cannon/detect/rotating/south/delay_4
execute positioned -1743 44 -627 run function medabots_server:spawn_entities/item/6_medallar_cents
execute positioned -1733 44 -624 run function medabots_server:spawn_entities/ice_block
execute positioned -1750 44 -612 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1750 44 -614 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1737 44 -623 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1735 44 -613 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1753 44 -623 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1745 44 -613 run function medabots_server:set_blocks/glass
tag @e[x=-1742.5,y=44,z=-604.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1743 44 -615
effect give @a[x=-1760,y=51,z=-633,dx=92,dy=4,dz=92,tag=3] minecraft:night_vision 2 0 true
effect give @a[x=-1760,y=51,z=-633,dx=92,dy=4,dz=92,tag=3] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1760,y=51,z=-633,dx=92,dy=4,dz=92,tag=3] Battle 2
teleport @a[x=-1760,y=51,z=-633,dx=92,dy=4,dz=92,tag=3] -1743 44 -619
summon minecraft:area_effect_cloud -1744 44 -617 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","destroy_all_cannons"],Duration:2147483647}
bossbar set medabots_server:laboratory_b/robattle value 3600
bossbar set medabots_server:laboratory_b/robattle players @a[scores={Stage=18}]
bossbar set medabots_server:laboratory_b/time players