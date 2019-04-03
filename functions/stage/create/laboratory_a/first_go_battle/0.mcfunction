execute unless entity @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=0] run function medabots_server:stage/create/laboratory_a/first_go_battle/0_cpu
summon minecraft:area_effect_cloud -1759 44 -264 {CustomName:'{"translate":"medabots_server:block.action_floor"}',Tags:["action_floor","bomb","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1759 44 -272 {CustomName:'{"translate":"medabots_server:block.action_floor"}',Tags:["action_floor","bomb","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1748 44 -267 {CustomName:'{"translate":"medabots_server:block.action_floor"}',Tags:["action_floor","bomb","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1748 44 -275 {CustomName:'{"translate":"medabots_server:block.action_floor"}',Tags:["action_floor","bomb","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1760 44 -264 {CustomName:'{"translate":"medabots_server:block.spring_wall"}',Tags:["spring_wall","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1760 44 -272 {CustomName:'{"translate":"medabots_server:block.spring_wall"}',Tags:["spring_wall","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1747 44 -267 {CustomName:'{"translate":"medabots_server:block.spring_wall"}',Tags:["spring_wall","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1747 44 -275 {CustomName:'{"translate":"medabots_server:block.spring_wall"}',Tags:["spring_wall","delay_10","enabled"],Duration:2147483647}
setblock -1760 44 -264 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/spring_wall",mode:"LOAD"}
setblock -1760 44 -272 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/spring_wall",mode:"LOAD"}
setblock -1747 44 -267 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/spring_wall",mode:"LOAD"}
setblock -1747 44 -275 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/spring_wall",mode:"LOAD"}
setblock -1760 45 -264 minecraft:redstone_block
setblock -1760 45 -272 minecraft:redstone_block
setblock -1747 45 -267 minecraft:redstone_block
setblock -1747 45 -275 minecraft:redstone_block
setblock -1761 44 -271 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1755 44 -270
effect give @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=0] Battle 2
teleport @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=0] -1752 44 -271
summon minecraft:area_effect_cloud -1753 44 -270 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:laboratory_a/robattle value 3600
bossbar set medabots_server:laboratory_a/robattle players @a[scores={Stage=26}]