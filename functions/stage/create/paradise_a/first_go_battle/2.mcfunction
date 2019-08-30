execute unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=2] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=2] positioned -1720 45 -718 run function medabots_server:spawn_entities/medabot/basstroyer/kasou_touchu/poison_scorpi/basstroyer/kuwagata
execute unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=2] positioned -1720 45 -718 run scoreboard players set @e[distance=..1] Stage 21
execute unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=2] positioned -1720 45 -718 run tag @e[distance=..1] add enemy_medabot
execute positioned -1713 45 -723 run function medabots_server:set_blocks/floor_switch/green
execute positioned -1720 45 -728 run function medabots_server:set_blocks/floor_switch/green
execute positioned -1722 45 -724 run function medabots_server:set_blocks/floor_switch/green
execute positioned -1725 45 -722 run function medabots_server:set_blocks/floor_switch/green
execute positioned -1731 45 -718 run function medabots_server:set_blocks/floor_switch/green
execute positioned -1733 45 -728 run function medabots_server:set_blocks/floor_switch/blue
tag @e[x=-1708.5,y=45,z=-711.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1719 45 -723
effect give @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=2] minecraft:night_vision 2 0 true
effect give @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=2] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=2] Battle 2
teleport @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=2] -1720 45 -718
summon minecraft:area_effect_cloud -1718 45 -719 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","open_the_exit_door"],Duration:2147483647}
bossbar set medabots_server:paradise_a/robattle value 3600
bossbar set medabots_server:paradise_a/robattle players @a[scores={Stage=21}]
bossbar set medabots_server:paradise_a/time players