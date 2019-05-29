execute unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=1] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=1] positioned -1683 45 -714 run function medabots_server:spawn_entities/enemy_medabot/fly_falcon/grade_kabuki/maxsnake/fly_falcon/kabuto
execute unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=1] positioned -1683 45 -714 run scoreboard players set @e[distance=..1] Stage 21
execute positioned -1684 45 -708 run function medabots_server:set_blocks/floor_switch/green
execute positioned -1677 45 -708 run function medabots_server:set_blocks/floor_switch/green
execute positioned -1672 45 -709 run function medabots_server:set_blocks/floor_switch/green
execute positioned -1671 45 -715 run function medabots_server:set_blocks/floor_switch/green
execute positioned -1672 45 -720 run function medabots_server:set_blocks/floor_switch/green
execute positioned -1689 45 -715 run function medabots_server:set_blocks/floor_switch/green
execute positioned -1689 45 -720 run function medabots_server:set_blocks/floor_switch/green
execute positioned -1690 45 -727 run function medabots_server:set_blocks/floor_switch/green
execute positioned -1683 45 -721 run function medabots_server:set_blocks/floor_switch/green
execute positioned -1684 45 -726 run function medabots_server:set_blocks/floor_switch/green
execute positioned -1684 45 -715 run function medabots_server:set_blocks/floor_switch/green
execute positioned -1677 45 -715 run function medabots_server:set_blocks/floor_switch/green
execute positioned -1678 45 -721 run function medabots_server:set_blocks/floor_switch/green
execute positioned -1677 45 -726 run function medabots_server:set_blocks/floor_switch/green
execute positioned -1671 45 -727 run function medabots_server:set_blocks/floor_switch/green
tag @e[x=-1691.5,y=45,z=-707.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1688 45 -709
effect give @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=1] minecraft:night_vision 2 0 true
effect give @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=1] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=1] Battle 2
teleport @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=1] -1683 45 -714
summon minecraft:area_effect_cloud -1688 45 -714 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","open_the_exit_door"],Duration:2147483647}
bossbar set medabots_server:paradise_a/robattle value 3600
bossbar set medabots_server:paradise_a/robattle players @a[scores={Stage=21}]
bossbar set medabots_server:paradise_a/time players