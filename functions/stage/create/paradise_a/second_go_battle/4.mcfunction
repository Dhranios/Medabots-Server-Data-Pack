execute unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] positioned -1715 45 -697 run function medabots_server:spawn_entities/enemy_medabot/blackstag/peppercat/blackstag/blackstag/knight
execute unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] positioned -1715 45 -697 run scoreboard players set @e[distance=..1] Stage 21
execute unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] positioned -1715 45 -697 as @e[distance=..1] run data merge entity @s {DeathLootTable:"medabots_server:entities/medabot"}
execute positioned -1716 45 -700 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1714 45 -695 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1708 45 -697 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1710 45 -701 run function medabots_server:set_blocks/stone
execute positioned -1720 45 -702 run function medabots_server:set_blocks/stone
execute positioned -1720 45 -697 run function medabots_server:set_blocks/stone
tag @e[x=-1713.5,y=45,z=-704.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1714 45 -701
effect give @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] minecraft:night_vision 2 0 true
effect give @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] Battle 2
teleport @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] -1715 45 -697
summon minecraft:area_effect_cloud -1714 45 -699 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:paradise_a/robattle value 3600
bossbar set medabots_server:paradise_a/robattle players @a[scores={Stage=21}]
bossbar set medabots_server:paradise_a/time players