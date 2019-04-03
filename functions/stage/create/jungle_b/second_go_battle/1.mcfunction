execute unless entity @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=1] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=1] run function medabots_server:stage/create/jungle_b/second_go_battle/1_cpu
summon minecraft:area_effect_cloud -1601 45 -461 {CustomName:'{"translate":"medabots_server:block.hole"}',Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1606 45 -469 {CustomName:'{"translate":"medabots_server:block.hole"}',Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1606 45 -465 {CustomName:'{"translate":"medabots_server:block.hole"}',Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1608 45 -460 {CustomName:'{"translate":"medabots_server:block.hole"}',Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1611 45 -467 {CustomName:'{"translate":"medabots_server:block.hole"}',Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1613 45 -464 {CustomName:'{"translate":"medabots_server:block.hole"}',Tags:["hole","delay_5"],Duration:2147483647}
setblock -1605 45 -461 minecraft:comparator[facing=west,mode=compare,powered=false]
setblock -1607 45 -467 minecraft:comparator[facing=east,mode=compare,powered=false]
setblock -1608 45 -464 minecraft:comparator[facing=north,mode=compare,powered=false]
setblock -1611 45 -463 minecraft:comparator[facing=south,mode=compare,powered=false]
setblock -1601 45 -468 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1606 45 -463
effect give @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=1] minecraft:night_vision 2 0 true
effect give @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=1] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=1] Battle 2
teleport @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=1] -1610 45 -464
summon minecraft:area_effect_cloud -1609 45 -463 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:jungle_b/robattle value 3600
bossbar set medabots_server:jungle_b/robattle players @a[scores={Stage=12}]