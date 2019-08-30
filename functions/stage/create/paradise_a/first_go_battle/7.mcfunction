execute unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] positioned -1715 45 -651 run function medabots_server:spawn_entities/medabot/basstroyer/fly_falcon/poison_scorpi/basstroyer/kuwagata
execute unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] positioned -1715 45 -651 run scoreboard players set @e[distance=..1] Stage 21
execute unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] positioned -1715 45 -651 run tag @e[distance=..1] add enemy_medabot
execute positioned -1721 45 -658 run function medabots_server:set_blocks/accelerator/north
execute positioned -1720 45 -659 run function medabots_server:set_blocks/accelerator/north
execute positioned -1719 45 -660 run function medabots_server:set_blocks/accelerator/north
execute positioned -1718 45 -661 run function medabots_server:set_blocks/accelerator/north
execute positioned -1711 45 -661 run function medabots_server:set_blocks/accelerator/north
execute positioned -1710 45 -660 run function medabots_server:set_blocks/accelerator/north
execute positioned -1709 45 -659 run function medabots_server:set_blocks/accelerator/north
execute positioned -1708 45 -658 run function medabots_server:set_blocks/accelerator/north
execute positioned -1721 45 -644 run function medabots_server:set_blocks/hammer_punch/north/delay_10/power_0
execute positioned -1720 45 -643 run function medabots_server:set_blocks/hammer_punch/north/delay_10/power_0
execute positioned -1719 45 -642 run function medabots_server:set_blocks/hammer_punch/north/delay_10/power_0
execute positioned -1718 45 -641 run function medabots_server:set_blocks/hammer_punch/north/delay_10/power_0
execute positioned -1711 45 -641 run function medabots_server:set_blocks/hammer_punch/north/delay_10/power_0
execute positioned -1710 45 -642 run function medabots_server:set_blocks/hammer_punch/north/delay_10/power_0
execute positioned -1709 45 -643 run function medabots_server:set_blocks/hammer_punch/north/delay_10/power_0
execute positioned -1708 45 -644 run function medabots_server:set_blocks/hammer_punch/north/delay_10/power_0
scoreboard players set @e[x=-1723.5,y=45,z=-649.5,distance=..0.7,tag=door,scores={NeededPower=0}] NeededPower 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1714 45 -647
effect give @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] minecraft:night_vision 2 0 true
effect give @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] Battle 2
teleport @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] -1715 45 -651
summon minecraft:area_effect_cloud -1714 45 -649 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:paradise_a/robattle value 3600
bossbar set medabots_server:paradise_a/robattle players @a[scores={Stage=21}]
bossbar set medabots_server:paradise_a/time players