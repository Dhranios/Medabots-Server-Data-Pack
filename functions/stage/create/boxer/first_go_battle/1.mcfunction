execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=1] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=1] positioned -1861 44 -571 run function medabots_server:spawn_entities/medabot/keithturtle/keithturtle/keithturtle/keithturtle/kabuto
execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=1] positioned -1861 44 -571 run scoreboard players set @e[distance=..1] Stage 29
execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=1] positioned -1861 44 -571 run tag @e[distance=..1] add enemy_medabot
execute positioned -1859 44 -571 run function medabots_server:spawn_entities/item/10_medallar_cents
execute positioned -1861 44 -573 run function medabots_server:spawn_entities/ice_block
execute positioned -1861 44 -570 run function medabots_server:spawn_entities/ice_block
execute positioned -1865 44 -577 run function medabots_server:spawn_entities/ice_block
execute positioned -1868 44 -577 run function medabots_server:spawn_entities/ice_block
execute positioned -1872 44 -573 run function medabots_server:spawn_entities/ice_block
execute positioned -1872 44 -570 run function medabots_server:spawn_entities/ice_block
execute positioned -1868 44 -566 run function medabots_server:spawn_entities/ice_block
execute positioned -1865 44 -566 run function medabots_server:spawn_entities/ice_block
execute positioned -1861 44 -576 run function medabots_server:set_blocks/mirror/45
execute positioned -1862 44 -577 run function medabots_server:set_blocks/mirror/45
execute positioned -1871 44 -566 run function medabots_server:set_blocks/mirror/45
execute positioned -1872 44 -567 run function medabots_server:set_blocks/mirror/45
execute positioned -1871 44 -577 run function medabots_server:set_blocks/mirror/-45
execute positioned -1872 44 -576 run function medabots_server:set_blocks/mirror/-45
execute positioned -1861 44 -567 run function medabots_server:set_blocks/mirror/-45
execute positioned -1862 44 -566 run function medabots_server:set_blocks/mirror/-45
tag @e[x=-1875.5,y=44,z=-570.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1865 44 -572
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=1] minecraft:night_vision 2 0 true
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=1] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=1] Battle 2
teleport @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=1] -1862 44 -571
summon minecraft:area_effect_cloud -1863 44 -572 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:boxer/robattle value 3600
bossbar set medabots_server:boxer/robattle players @a[scores={Stage=29}]
bossbar set medabots_server:boxer/time players