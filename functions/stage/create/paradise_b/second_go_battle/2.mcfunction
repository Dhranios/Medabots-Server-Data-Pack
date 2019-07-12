execute unless entity @a[x=-1665,y=51,z=-638,dx=64,dy=4,dz=63,tag=2] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1665,y=51,z=-638,dx=64,dy=4,dz=63,tag=2] positioned -1655 45 -603 run function medabots_server:spawn_entities/enemy_medabot/nin_ninja/fly_falcon/poison_scorpi/nin_ninja/knight
execute unless entity @a[x=-1665,y=51,z=-638,dx=64,dy=4,dz=63,tag=2] positioned -1655 45 -603 run scoreboard players set @e[distance=..1] Stage 22
execute positioned -1648 45 -601 run function medabots_server:set_blocks/hammer_punch/enabled/west/delay_3
execute positioned -1648 45 -602 run function medabots_server:set_blocks/hammer_punch/enabled/west/delay_5
execute positioned -1648 45 -603 run function medabots_server:set_blocks/hammer_punch/enabled/west/delay_4
tag @e[x=-1649.5,y=45,z=-599.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1650 45 -603
effect give @a[x=-1665,y=51,z=-638,dx=64,dy=4,dz=63,tag=2] minecraft:night_vision 2 0 true
effect give @a[x=-1665,y=51,z=-638,dx=64,dy=4,dz=63,tag=2] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1665,y=51,z=-638,dx=64,dy=4,dz=63,tag=2] Battle 2
teleport @a[x=-1665,y=51,z=-638,dx=64,dy=4,dz=63,tag=2] -1655 45 -603
summon minecraft:area_effect_cloud -1652 45 -602 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","run_until_the_time_is_up"],Duration:2147483647}
bossbar set medabots_server:paradise_b/robattle value 3600
bossbar set medabots_server:paradise_b/robattle players @a[scores={Stage=22}]
bossbar set medabots_server:paradise_b/time players