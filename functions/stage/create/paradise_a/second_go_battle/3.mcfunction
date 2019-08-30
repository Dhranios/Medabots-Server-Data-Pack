execute unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=3] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=3] positioned -1746 45 -715 run function medabots_server:spawn_entities/medabot/dondoguu/maxsnake/hellphoenix/dondoguu/mermaid
execute unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=3] positioned -1746 45 -715 run scoreboard players set @e[distance=..1] Stage 21
execute unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=3] positioned -1746 45 -715 run tag @e[distance=..1] add enemy_medabot
execute positioned -1744 45 -718 run function medabots_server:spawn_entities/cannon/search/east/delay_4/mission
execute positioned -1746 45 -723 run function medabots_server:spawn_entities/cannon/search/north/delay_4/mission
execute positioned -1749 45 -716 run function medabots_server:spawn_entities/cannon/search/south/delay_4/mission
execute positioned -1751 45 -721 run function medabots_server:spawn_entities/cannon/search/west/delay_4/mission
execute positioned -1749 45 -724 run function medabots_server:set_blocks/bridge
scoreboard players set @e[x=-1739.5,y=45,z=-707.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1741 45 -714
effect give @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=3] minecraft:night_vision 2 0 true
effect give @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=3] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=3] Battle 2
teleport @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=3] -1746 45 -715
summon minecraft:area_effect_cloud -1743 45 -713 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","destroy_all_cannons"],Duration:2147483647}
bossbar set medabots_server:paradise_a/robattle value 3600
bossbar set medabots_server:paradise_a/robattle players @a[scores={Stage=21}]
bossbar set medabots_server:paradise_a/time players