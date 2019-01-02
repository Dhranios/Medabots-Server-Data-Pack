execute unless entity @e[x=-1752,y=44,z=-271,distance=..10,tag=enemy_medabot] run tellraw @s {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @e[x=-1752,y=44,z=-271,distance=..10,tag=enemy_medabot] run scoreboard players set @s BattlingMedabots 1
summon minecraft:area_effect_cloud -1759 44 -264 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","bomb","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1759 44 -272 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","bomb","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1748 44 -267 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","bomb","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1748 44 -275 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","bomb","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1760 44 -264 {CustomName:"{\"translate\":\"medabots_server:block.spring_wall\"}",Tags:["spring_wall","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1760 44 -272 {CustomName:"{\"translate\":\"medabots_server:block.spring_wall\"}",Tags:["spring_wall","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1747 44 -267 {CustomName:"{\"translate\":\"medabots_server:block.spring_wall\"}",Tags:["spring_wall","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1747 44 -275 {CustomName:"{\"translate\":\"medabots_server:block.spring_wall\"}",Tags:["spring_wall","delay_10","enabled"],Duration:2147483647}
setblock -1760 44 -264 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/spring_wall",mode:"LOAD"}
setblock -1760 44 -272 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/spring_wall",mode:"LOAD"}
setblock -1747 44 -267 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/spring_wall",mode:"LOAD"}
setblock -1747 44 -275 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/spring_wall",mode:"LOAD"}
setblock -1760 45 -264 minecraft:redstone_block
setblock -1760 45 -272 minecraft:redstone_block
setblock -1747 45 -267 minecraft:redstone_block
setblock -1747 45 -275 minecraft:redstone_block
execute if entity @e[x=-1752,y=44,z=-271,distance=..10,tag=enemy_medabot] run setblock -1761 44 -271 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
execute if entity @e[x=-1752,y=44,z=-271,distance=..10,tag=enemy_medabot] run effect give @s minecraft:night_vision 2 0 true
execute if entity @e[x=-1752,y=44,z=-271,distance=..10,tag=enemy_medabot] run effect give @s minecraft:blindness 2 0 true
execute if entity @e[x=-1752,y=44,z=-271,distance=..10,tag=enemy_medabot] run scoreboard players set @s Battle 2
execute if entity @e[x=-1752,y=44,z=-271,distance=..10,tag=enemy_medabot] run effect give @e[x=-1752,y=44,z=-271,distance=..10,tag=enemy_medabot] minecraft:night_vision 2 0 true
execute if entity @e[x=-1752,y=44,z=-271,distance=..10,tag=enemy_medabot] run effect give @e[x=-1752,y=44,z=-271,distance=..10,tag=enemy_medabot] minecraft:blindness 2 0 true
execute if entity @e[x=-1752,y=44,z=-271,distance=..10,tag=enemy_medabot] run scoreboard players set @e[x=-1752,y=44,z=-271,distance=..10,tag=enemy_medabot] Battle 2
execute if entity @e[x=-1752,y=44,z=-271,distance=..10,tag=enemy_medabot] run summon minecraft:area_effect_cloud -1753 44 -270 {CustomName:"{\"translate\":\"medabots_server:message.stage.mission\"}",Tags:["mission","defeat_the_enemy"],Duration:2147483647}
execute if entity @e[x=-1752,y=44,z=-271,distance=..10,tag=enemy_medabot] run teleport @e[x=-1752,y=44,z=-271,distance=..10,tag=enemy_medabot] -1752 44 -271
execute if entity @e[x=-1752,y=44,z=-271,distance=..10,tag=enemy_medabot] run teleport @s -1755 44 -270
bossbar set medabots_server:laboratory_a/time value 3600
bossbar set medabots_server:laboratory_a/time players @a[scores={Stage=27}]