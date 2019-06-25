execute unless entity @a[x=-1570,y=50,z=-545,dx=62,dy=4,dz=62,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1570,y=50,z=-545,dx=62,dy=4,dz=62,tag=0] positioned -1517 44 -492 run function medabots_server:spawn_entities/enemy_medabot/hippopojamas/baroncastle/baroncastle/hippopojamas/knight
execute unless entity @a[x=-1570,y=50,z=-545,dx=62,dy=4,dz=62,tag=0] positioned -1517 44 -492 run scoreboard players set @e[distance=..1] Stage 24
execute positioned -1524 44 -493 run function medabots_server:set_blocks/hammer_punch/enabled/east/delay_10
execute positioned -1521 44 -495 run function medabots_server:set_blocks/hammer_punch/enabled/south/delay_10
execute positioned -1517 44 -496 run function medabots_server:set_blocks/hammer_punch/enabled/south/delay_10
execute positioned -1514 44 -493 run function medabots_server:set_blocks/hammer_punch/enabled/west/delay_10
execute positioned -1517 44 -490 run function medabots_server:set_blocks/hammer_punch/enabled/north/delay_10
execute positioned -1521 44 -488 run function medabots_server:set_blocks/hammer_punch/enabled/north/delay_10
tag @e[x=-1521.5,y=44,z=-495.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1521 44 -492
effect give @a[x=-1570,y=50,z=-545,dx=62,dy=4,dz=62,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1570,y=50,z=-545,dx=62,dy=4,dz=62,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1570,y=50,z=-545,dx=62,dy=4,dz=62,tag=0] Battle 2
teleport @a[x=-1570,y=50,z=-545,dx=62,dy=4,dz=62,tag=0] -1517 44 -492
summon minecraft:area_effect_cloud -1519 44 -491 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","run_until_the_time_is_up"],Duration:2147483647}
bossbar set medabots_server:jungle_c/robattle value 3600
bossbar set medabots_server:jungle_c/robattle players @a[scores={Stage=24}]
bossbar set medabots_server:jungle_c/time players