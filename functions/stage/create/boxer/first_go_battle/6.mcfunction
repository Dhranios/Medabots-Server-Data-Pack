execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=6] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=6] positioned -1906 43 -553 run function medabots_server:spawn_entities/medabot/potato_insect/pretty_prime/peppercat/potato_insect/monkey
execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=6] positioned -1906 43 -553 run scoreboard players set @e[distance=..1] Stage 29
execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=6] positioned -1906 43 -553 run tag @e[distance=..1] add enemy_medabot
execute positioned -1906 44 -547 run function medabots_server:spawn_entities/item/10_medallar_cents
scoreboard players set @e[x=-1898.5,y=44,z=-560.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1907 43 -556
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=6] minecraft:night_vision 2 0 true
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=6] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=6] Battle 2
teleport @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=6] -1906 43 -553
summon minecraft:area_effect_cloud -1907 44 -554 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:boxer/robattle value 3600
bossbar set medabots_server:boxer/robattle players @a[scores={Stage=29}]
bossbar set medabots_server:boxer/time players