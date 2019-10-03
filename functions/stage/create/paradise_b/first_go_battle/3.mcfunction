execute unless entity @a[x=-1665,y=51,z=-638,dx=64,dy=4,dz=63,tag=3] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1665,y=51,z=-638,dx=64,dy=4,dz=63,tag=3] positioned -1640 45 -611 run function medabots_server:spawn_entities/medabot/poison_scorpi/kasou_touchu/attack_tyrano/poison_scorpi/kuwagata
execute unless entity @a[x=-1665,y=51,z=-638,dx=64,dy=4,dz=63,tag=3] positioned -1640 45 -611 run scoreboard players set @e[distance=..1] Stage 22
execute unless entity @a[x=-1665,y=51,z=-638,dx=64,dy=4,dz=63,tag=3] positioned -1640 45 -611 run tag @e[distance=..1] add enemy_medabot
execute positioned -1646 45 -609 run function medabots_server:set_blocks/mirror/45
execute positioned -1646 45 -611 run function medabots_server:set_blocks/mirror/45
execute positioned -1645 45 -612 run function medabots_server:set_blocks/mirror/45
execute positioned -1643 45 -612 run function medabots_server:set_blocks/mirror/45
execute positioned -1642 45 -613 run function medabots_server:set_blocks/mirror/45
execute positioned -1640 45 -613 run function medabots_server:set_blocks/mirror/45
execute positioned -1638 45 -612 run function medabots_server:set_blocks/mirror/45
execute positioned -1637 45 -610 run function medabots_server:set_blocks/mirror/45
execute positioned -1638 45 -609 run function medabots_server:set_blocks/mirror/45
execute positioned -1642 45 -608 run function medabots_server:set_blocks/mirror/45
scoreboard players set @e[x=-1643.5,y=45,z=-606.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1643 45 -610
effect give @a[x=-1665,y=51,z=-638,dx=64,dy=4,dz=63,tag=3] minecraft:night_vision 2 0 true
effect give @a[x=-1665,y=51,z=-638,dx=64,dy=4,dz=63,tag=3] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1665,y=51,z=-638,dx=64,dy=4,dz=63,tag=3] Battle 2
teleport @a[x=-1665,y=51,z=-638,dx=64,dy=4,dz=63,tag=3] -1640 45 -611
summon minecraft:area_effect_cloud -1641 45 -609 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","run_until_the_time_is_up"],Duration:2147483647}
bossbar set medabots_server:paradise_b/robattle value 3600
bossbar set medabots_server:paradise_b/robattle players @a[scores={Stage=22}]
bossbar set medabots_server:paradise_b/time players