execute unless entity @a[x=-1665,y=51,z=-638,dx=64,dy=4,dz=63,tag=1] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1665,y=51,z=-638,dx=64,dy=4,dz=63,tag=1] positioned -1656 45 -582 run function medabots_server:spawn_entities/enemy_medabot/kanehachi_mk2/dragonbeetle/basstroyer/kanehachi_mk2/kuwagata
execute unless entity @a[x=-1665,y=51,z=-638,dx=64,dy=4,dz=63,tag=1] positioned -1656 45 -582 run scoreboard players set @e[distance=..1] Stage 22
execute positioned -1655 45 -585 run function medabots_server:spawn_entities/ice_block
execute positioned -1653 45 -583 run function medabots_server:spawn_entities/ice_block
execute positioned -1654 45 -579 run function medabots_server:spawn_entities/ice_block
execute positioned -1657 45 -580 run function medabots_server:spawn_entities/ice_block
execute positioned -1659 45 -584 run function medabots_server:spawn_entities/ice_block
execute positioned -1660 45 -586 run function medabots_server:spawn_entities/ice_block
execute positioned -1662 45 -588 run function medabots_server:spawn_entities/ice_block
execute positioned -1654 45 -585 run function medabots_server:set_blocks/stone
execute positioned -1654 45 -583 run function medabots_server:set_blocks/stone
execute positioned -1654 45 -580 run function medabots_server:set_blocks/stone
execute positioned -1656 45 -580 run function medabots_server:set_blocks/stone
execute positioned -1659 45 -583 run function medabots_server:set_blocks/stone
execute positioned -1659 45 -586 run function medabots_server:set_blocks/stone
execute positioned -1662 45 -587 run function medabots_server:set_blocks/stone
tag @e[x=-1655.5,y=45,z=-588.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1657 45 -585
effect give @a[x=-1665,y=51,z=-638,dx=64,dy=4,dz=63,tag=1] minecraft:night_vision 2 0 true
effect give @a[x=-1665,y=51,z=-638,dx=64,dy=4,dz=63,tag=1] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1665,y=51,z=-638,dx=64,dy=4,dz=63,tag=1] Battle 2
teleport @a[x=-1665,y=51,z=-638,dx=64,dy=4,dz=63,tag=1] -1656 45 -582
summon minecraft:area_effect_cloud -1658 45 -583 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","run_until_the_time_is_up"],Duration:2147483647}
bossbar set medabots_server:paradise_b/robattle value 3600
bossbar set medabots_server:paradise_b/robattle players @a[scores={Stage=22}]
bossbar set medabots_server:paradise_b/time players