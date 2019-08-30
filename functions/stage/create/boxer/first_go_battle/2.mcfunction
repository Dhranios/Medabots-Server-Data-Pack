execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=2] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=2] positioned -1873 43 -590 run function medabots_server:spawn_entities/medabot/peppercat/peppercat/peppercat/peppercat/kuwagata
execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=2] positioned -1873 43 -590 run scoreboard players set @e[distance=..1] Stage 29
execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=2] positioned -1873 43 -590 run tag @e[distance=..1] add enemy_medabot
execute positioned -1873 44 -596 run function medabots_server:spawn_entities/item/10_medallar_cents
execute positioned -1874 44 -583 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1871 44 -583 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1868 44 -584 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1867 44 -587 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1867 44 -590 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1868 44 -593 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1871 44 -594 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1874 44 -594 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1877 44 -593 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1878 44 -590 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1878 44 -587 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1877 44 -584 run function medabots_server:set_blocks/hole/delay_5
scoreboard players set @e[x=-1879.5,y=44,z=-581.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1872 43 -586
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=2] minecraft:night_vision 2 0 true
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=2] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=2] Battle 2
teleport @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=2] -1873 43 -590
summon minecraft:area_effect_cloud -1872 44 -589 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:boxer/robattle value 3600
bossbar set medabots_server:boxer/robattle players @a[scores={Stage=29}]
bossbar set medabots_server:boxer/time players