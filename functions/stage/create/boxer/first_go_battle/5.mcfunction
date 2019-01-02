execute unless entity @e[x=-1917,y=44,z=-572,distance=..10,tag=enemy_medabot] run tellraw @s {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @e[x=-1917,y=44,z=-572,distance=..10,tag=enemy_medabot] run scoreboard players set @s BattlingMedabots 1
summon minecraft:item -1920 44 -572 {Item:{id:"minecraft:lapis_lazuli",Count:10b,tag:{medabots_server:{id:"medabots_server:medallar_cent"},display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.medallar_cent\"}"}}},Tags:["hostile","do_not_teleport"],Age:-32768s}
summon minecraft:area_effect_cloud -1916 44 -578 {CustomName:"{\"translate\":\"medabots_server:block.hammer_punch\"}",Tags:["hammer_punch","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1918 44 -577 {CustomName:"{\"translate\":\"medabots_server:block.hammer_punch\"}",Tags:["hammer_punch","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1918 44 -576 {CustomName:"{\"translate\":\"medabots_server:block.hammer_punch\"}",Tags:["hammer_punch","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1919 44 -575 {CustomName:"{\"translate\":\"medabots_server:block.hammer_punch\"}",Tags:["hammer_punch","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1919 44 -574 {CustomName:"{\"translate\":\"medabots_server:block.hammer_punch\"}",Tags:["hammer_punch","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1919 44 -569 {CustomName:"{\"translate\":\"medabots_server:block.hammer_punch\"}",Tags:["hammer_punch","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1919 44 -568 {CustomName:"{\"translate\":\"medabots_server:block.hammer_punch\"}",Tags:["hammer_punch","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1918 44 -567 {CustomName:"{\"translate\":\"medabots_server:block.hammer_punch\"}",Tags:["hammer_punch","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1918 44 -566 {CustomName:"{\"translate\":\"medabots_server:block.hammer_punch\"}",Tags:["hammer_punch","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1916 44 -565 {CustomName:"{\"translate\":\"medabots_server:block.hammer_punch\"}",Tags:["hammer_punch","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1912 44 -573 {CustomName:"{\"translate\":\"medabots_server:block.hammer_punch\"}",Tags:["hammer_punch","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1911 44 -572 {CustomName:"{\"translate\":\"medabots_server:block.hammer_punch\"}",Tags:["hammer_punch","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1911 44 -571 {CustomName:"{\"translate\":\"medabots_server:block.hammer_punch\"}",Tags:["hammer_punch","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1912 44 -570 {CustomName:"{\"translate\":\"medabots_server:block.hammer_punch\"}",Tags:["hammer_punch","delay_10","enabled"],Duration:2147483647}
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
execute if entity @e[x=-1917,y=44,z=-572,distance=..10,tag=enemy_medabot] run setblock -1903 44 -572 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
execute if entity @e[x=-1917,y=44,z=-572,distance=..10,tag=enemy_medabot] run effect give @s minecraft:night_vision 2 0 true
execute if entity @e[x=-1917,y=44,z=-572,distance=..10,tag=enemy_medabot] run effect give @s minecraft:blindness 2 0 true
execute if entity @e[x=-1917,y=44,z=-572,distance=..10,tag=enemy_medabot] run scoreboard players set @s Battle 2
execute if entity @e[x=-1917,y=44,z=-572,distance=..10,tag=enemy_medabot] run effect give @e[x=-1917,y=44,z=-572,distance=..10,tag=enemy_medabot] minecraft:night_vision 2 0 true
execute if entity @e[x=-1917,y=44,z=-572,distance=..10,tag=enemy_medabot] run effect give @e[x=-1917,y=44,z=-572,distance=..10,tag=enemy_medabot] minecraft:blindness 2 0 true
execute if entity @e[x=-1917,y=44,z=-572,distance=..10,tag=enemy_medabot] run scoreboard players set @e[x=-1917,y=44,z=-572,distance=..10,tag=enemy_medabot] Battle 2
execute if entity @e[x=-1917,y=44,z=-572,distance=..10,tag=enemy_medabot] run summon minecraft:area_effect_cloud -1916 44 -571 {CustomName:"{\"translate\":\"medabots_server:message.stage.mission\"}",Tags:["mission","defeat_the_enemy"],Duration:2147483647}
execute if entity @e[x=-1917,y=44,z=-572,distance=..10,tag=enemy_medabot] run teleport @e[x=-1917,y=44,z=-572,distance=..10,tag=enemy_medabot] -1917 44 -572
execute if entity @e[x=-1917,y=44,z=-572,distance=..10,tag=enemy_medabot] run teleport @s -1914 44 -571
bossbar set medabots_server:boxer/time value 3600
bossbar set medabots_server:boxer/time players @a[scores={Stage=79}]