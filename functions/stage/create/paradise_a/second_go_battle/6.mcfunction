execute unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] positioned -1743 45 -652 run function medabots_server:spawn_entities/enemy_medabot/seven_colors/kasou_touchu/poison_scorpi/seven_colors/chameleon
execute unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] positioned -1743 45 -652 run scoreboard players set @e[distance=..1] Stage 21
execute positioned -1744 45 -652 run function medabots_server:spawn_entities/mission/guard/slow
execute positioned -1749 45 -646 run function medabots_server:spawn_entities/mission/guard/slow
execute positioned -1739 45 -650 run function medabots_server:spawn_entities/mission/guard/slow
execute positioned -1738 45 -642 run function medabots_server:spawn_entities/mission/guard/slow
tag @e[x=-1741.5,y=45,z=-661.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1744 45 -655
effect give @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] minecraft:night_vision 2 0 true
effect give @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] Battle 2
teleport @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] -1743 45 -652
summon minecraft:area_effect_cloud -1745 45 -653 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","defeat_all_guards"],Duration:2147483647}
bossbar set medabots_server:paradise_a/robattle value 3600
bossbar set medabots_server:paradise_a/robattle players @a[scores={Stage=21}]
bossbar set medabots_server:paradise_a/time players