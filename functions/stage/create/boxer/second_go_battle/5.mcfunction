execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=5] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=5] run function medabots_server:stage/create/boxer/second_go_battle/5_cpu
execute positioned -1920 44 -572 run function medabots_server:spawn_entities/item/10_medallar_cents
execute positioned -1916 44 -578 run function medabots_server:set_blocks/hammer_punch/enabled/east/delay_10
execute positioned -1918 44 -577 run function medabots_server:set_blocks/hammer_punch/enabled/east/delay_10
execute positioned -1918 44 -576 run function medabots_server:set_blocks/hammer_punch/enabled/east/delay_10
execute positioned -1919 44 -575 run function medabots_server:set_blocks/hammer_punch/enabled/east/delay_10
execute positioned -1919 44 -574 run function medabots_server:set_blocks/hammer_punch/enabled/east/delay_10
execute positioned -1919 44 -569 run function medabots_server:set_blocks/hammer_punch/enabled/east/delay_10
execute positioned -1919 44 -568 run function medabots_server:set_blocks/hammer_punch/enabled/east/delay_10
execute positioned -1918 44 -567 run function medabots_server:set_blocks/hammer_punch/enabled/east/delay_10
execute positioned -1918 44 -566 run function medabots_server:set_blocks/hammer_punch/enabled/east/delay_10
execute positioned -1916 44 -565 run function medabots_server:set_blocks/hammer_punch/enabled/east/delay_10
execute positioned -1912 44 -573 run function medabots_server:set_blocks/hammer_punch/enabled/west/delay_10
execute positioned -1911 44 -572 run function medabots_server:set_blocks/hammer_punch/enabled/west/delay_10
execute positioned -1911 44 -571 run function medabots_server:set_blocks/hammer_punch/enabled/west/delay_10
execute positioned -1912 44 -570 run function medabots_server:set_blocks/hammer_punch/enabled/west/delay_10
tag @e[x=-1903.5,y=44,z=-571.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1906 44 -572
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=5] minecraft:night_vision 2 0 true
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=5] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=5] Battle 2
teleport @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=5] -1918 44 -572
summon minecraft:area_effect_cloud -1916 44 -571 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:boxer/robattle value 3600
bossbar set medabots_server:boxer/robattle players @a[scores={Stage=80}]