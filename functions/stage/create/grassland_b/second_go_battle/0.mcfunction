execute unless entity @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=0] run function medabots_server:stage/create/grassland_b/second_go_battle/0_cpu
summon minecraft:area_effect_cloud -1521 45 -335 {CustomName:'{"translate":"medabots_server:block.hole"}',Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1514 45 -333 {CustomName:'{"translate":"medabots_server:block.hole"}',Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1527 45 -330 {CustomName:'{"translate":"medabots_server:block.hole"}',Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1524 45 -326 {CustomName:'{"translate":"medabots_server:block.hole"}',Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1518 45 -325 {CustomName:'{"translate":"medabots_server:block.hole"}',Tags:["hole","delay_5"],Duration:2147483647}
setblock -1518 45 -334 minecraft:stone_slab
setblock -1526 45 -332 minecraft:stone_slab
setblock -1522 45 -331 minecraft:stone_slab
setblock -1517 45 -330 minecraft:stone_slab
setblock -1525 45 -328 minecraft:stone_slab
setblock -1518 45 -327 minecraft:stone_slab
setblock -1521 45 -340 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/door",mode:"LOAD"}
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1521 45 -332
effect give @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=0] Battle 2
teleport @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=0] -1752 44 -271
summon minecraft:area_effect_cloud -1521 45 -329 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:grassland_b/robattle value 3600
bossbar set medabots_server:grassland_b/robattle players @a[scores={Stage=30}]