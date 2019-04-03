execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=5] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=5] run function medabots_server:stage/create/boxer/first_go_battle/5_cpu
summon minecraft:item -1920 44 -572 {Item:{id:"minecraft:lapis_lazuli",Count:10b,tag:{medabots_server:{stage_item:1b,id:"medabots_server:medallar_cent"},display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.medallar_cent"}'}}},Tags:["hostile","do_not_teleport"],Age:-32768s}
summon minecraft:area_effect_cloud -1916 44 -578 {CustomName:'{"translate":"medabots_server:block.hammer_punch"}',Tags:["hammer_punch","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1918 44 -577 {CustomName:'{"translate":"medabots_server:block.hammer_punch"}',Tags:["hammer_punch","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1918 44 -576 {CustomName:'{"translate":"medabots_server:block.hammer_punch"}',Tags:["hammer_punch","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1919 44 -575 {CustomName:'{"translate":"medabots_server:block.hammer_punch"}',Tags:["hammer_punch","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1919 44 -574 {CustomName:'{"translate":"medabots_server:block.hammer_punch"}',Tags:["hammer_punch","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1919 44 -569 {CustomName:'{"translate":"medabots_server:block.hammer_punch"}',Tags:["hammer_punch","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1919 44 -568 {CustomName:'{"translate":"medabots_server:block.hammer_punch"}',Tags:["hammer_punch","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1918 44 -567 {CustomName:'{"translate":"medabots_server:block.hammer_punch"}',Tags:["hammer_punch","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1918 44 -566 {CustomName:'{"translate":"medabots_server:block.hammer_punch"}',Tags:["hammer_punch","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1916 44 -565 {CustomName:'{"translate":"medabots_server:block.hammer_punch"}',Tags:["hammer_punch","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1912 44 -573 {CustomName:'{"translate":"medabots_server:block.hammer_punch"}',Tags:["hammer_punch","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1911 44 -572 {CustomName:'{"translate":"medabots_server:block.hammer_punch"}',Tags:["hammer_punch","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1911 44 -571 {CustomName:'{"translate":"medabots_server:block.hammer_punch"}',Tags:["hammer_punch","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1912 44 -570 {CustomName:'{"translate":"medabots_server:block.hammer_punch"}',Tags:["hammer_punch","delay_10","enabled"],Duration:2147483647}
setblock -1916 44 -578 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/hammer_punch",mode:"LOAD"}
setblock -1918 44 -577 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/hammer_punch",mode:"LOAD"}
setblock -1918 44 -576 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/hammer_punch",mode:"LOAD"}
setblock -1919 44 -575 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/hammer_punch",mode:"LOAD"}
setblock -1919 44 -574 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/hammer_punch",mode:"LOAD"}
setblock -1919 44 -569 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/hammer_punch",mode:"LOAD"}
setblock -1919 44 -568 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/hammer_punch",mode:"LOAD"}
setblock -1918 44 -567 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/hammer_punch",mode:"LOAD"}
setblock -1918 44 -566 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/hammer_punch",mode:"LOAD"}
setblock -1916 44 -565 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/hammer_punch",mode:"LOAD"}
setblock -1912 44 -573 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/hammer_punch",mode:"LOAD"}
setblock -1911 44 -572 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/hammer_punch",mode:"LOAD"}
setblock -1911 44 -571 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/hammer_punch",mode:"LOAD"}
setblock -1912 44 -570 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/hammer_punch",mode:"LOAD"}
setblock -1916 45 -578 minecraft:redstone_block
setblock -1918 45 -577 minecraft:redstone_block
setblock -1918 45 -576 minecraft:redstone_block
setblock -1919 45 -575 minecraft:redstone_block
setblock -1919 45 -574 minecraft:redstone_block
setblock -1919 45 -569 minecraft:redstone_block
setblock -1919 45 -568 minecraft:redstone_block
setblock -1918 45 -567 minecraft:redstone_block
setblock -1918 45 -566 minecraft:redstone_block
setblock -1916 45 -565 minecraft:redstone_block
setblock -1912 45 -573 minecraft:redstone_block
setblock -1911 45 -572 minecraft:redstone_block
setblock -1911 45 -571 minecraft:redstone_block
setblock -1912 45 -570 minecraft:redstone_block
setblock -1903 44 -572 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1914 44 -571
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=5] minecraft:night_vision 2 0 true
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=5] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=5] Battle 2
teleport @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=5] -1917 44 -572
summon minecraft:area_effect_cloud -1916 44 -571 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:boxer/robattle value 3600
bossbar set medabots_server:boxer/robattle players @a[scores={Stage=79}]