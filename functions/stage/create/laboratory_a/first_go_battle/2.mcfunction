execute unless entity @e[x=-1773,y=44,z=-298,distance=..10,tag=enemy_medabot] run tellraw @s {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @e[x=-1773,y=44,z=-298,distance=..10,tag=enemy_medabot] run scoreboard players set @s BattlingMedabots 1
summon minecraft:armor_stand -1764 44 -302 {CustomName:"{\"translate\":\"medabots_server:block.mirror\"}",Tags:["mirror"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_pane",Count:1b}],Rotation:[-45.0f,0.0f]}
summon minecraft:armor_stand -1766 44 -300 {CustomName:"{\"translate\":\"medabots_server:block.mirror\"}",Tags:["mirror"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_pane",Count:1b}],Rotation:[-45.0f,0.0f]}
summon minecraft:armor_stand -1768 44 -298 {CustomName:"{\"translate\":\"medabots_server:block.mirror\"}",Tags:["mirror"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_pane",Count:1b}],Rotation:[-45.0f,0.0f]}
summon minecraft:armor_stand -1770 44 -296 {CustomName:"{\"translate\":\"medabots_server:block.mirror\"}",Tags:["mirror"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_pane",Count:1b}],Rotation:[-45.0f,0.0f]}
summon minecraft:armor_stand -1772 44 -293 {CustomName:"{\"translate\":\"medabots_server:block.mirror\"}",Tags:["mirror"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_pane",Count:1b}],Rotation:[-45.0f,0.0f]}
summon minecraft:armor_stand -1773 44 -293 {CustomName:"{\"translate\":\"medabots_server:block.mirror\"}",Tags:["mirror"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_pane",Count:1b}],Rotation:[45.0f,0.0f]}
summon minecraft:armor_stand -1774 44 -295 {CustomName:"{\"translate\":\"medabots_server:block.mirror\"}",Tags:["mirror"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_pane",Count:1b}],Rotation:[45.0f,0.0f]}
summon minecraft:armor_stand -1776 44 -297 {CustomName:"{\"translate\":\"medabots_server:block.mirror\"}",Tags:["mirror"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_pane",Count:1b}],Rotation:[45.0f,0.0f]}
summon minecraft:armor_stand -1778 44 -299 {CustomName:"{\"translate\":\"medabots_server:block.mirror\"}",Tags:["mirror"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_pane",Count:1b}],Rotation:[45.0f,0.0f]}
summon minecraft:armor_stand -1780 44 -301 {CustomName:"{\"translate\":\"medabots_server:block.mirror\"}",Tags:["mirror"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_pane",Count:1b}],Rotation:[45.0f,0.0f]}
setblock -1764 44 -302 minecraft:structure_block[mode=load]{name:"medabots_server:stage/mirror",mode:"LOAD"}
setblock -1766 44 -300 minecraft:structure_block[mode=load]{name:"medabots_server:stage/mirror",mode:"LOAD"}
setblock -1768 44 -298 minecraft:structure_block[mode=load]{name:"medabots_server:stage/mirror",mode:"LOAD"}
setblock -1770 44 -296 minecraft:structure_block[mode=load]{name:"medabots_server:stage/mirror",mode:"LOAD"}
setblock -1772 44 -293 minecraft:structure_block[mode=load]{name:"medabots_server:stage/mirror",mode:"LOAD"}
setblock -1773 44 -293 minecraft:structure_block[mode=load]{name:"medabots_server:stage/mirror",mode:"LOAD"}
setblock -1774 44 -295 minecraft:structure_block[mode=load]{name:"medabots_server:stage/mirror",mode:"LOAD"}
setblock -1776 44 -297 minecraft:structure_block[mode=load]{name:"medabots_server:stage/mirror",mode:"LOAD"}
setblock -1778 44 -299 minecraft:structure_block[mode=load]{name:"medabots_server:stage/mirror",mode:"LOAD"}
setblock -1780 44 -301 minecraft:structure_block[mode=load]{name:"medabots_server:stage/mirror",mode:"LOAD"}
setblock -1764 45 -302 minecraft:redstone_block
setblock -1766 45 -300 minecraft:redstone_block
setblock -1768 45 -298 minecraft:redstone_block
setblock -1770 45 -296 minecraft:redstone_block
setblock -1772 45 -293 minecraft:redstone_block
setblock -1773 45 -293 minecraft:redstone_block
setblock -1774 45 -295 minecraft:redstone_block
setblock -1776 45 -297 minecraft:redstone_block
setblock -1778 45 -299 minecraft:redstone_block
setblock -1780 45 -301 minecraft:redstone_block
execute if entity @e[x=-1773,y=44,z=-298,distance=..10,tag=enemy_medabot] run setblock -1772 44 -313 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/door",mode:"LOAD"}
execute if entity @e[x=-1773,y=44,z=-298,distance=..10,tag=enemy_medabot] run effect give @s minecraft:night_vision 2 0 true
execute if entity @e[x=-1773,y=44,z=-298,distance=..10,tag=enemy_medabot] run effect give @s minecraft:blindness 2 0 true
execute if entity @e[x=-1773,y=44,z=-298,distance=..10,tag=enemy_medabot] run scoreboard players set @s Battle 2
execute if entity @e[x=-1773,y=44,z=-298,distance=..10,tag=enemy_medabot] run effect give @e[x=-1773,y=44,z=-298,distance=..10,tag=enemy_medabot] minecraft:night_vision 2 0 true
execute if entity @e[x=-1773,y=44,z=-298,distance=..10,tag=enemy_medabot] run effect give @e[x=-1773,y=44,z=-298,distance=..10,tag=enemy_medabot] minecraft:blindness 2 0 true
execute if entity @e[x=-1773,y=44,z=-298,distance=..10,tag=enemy_medabot] run scoreboard players set @e[x=-1773,y=44,z=-298,distance=..10,tag=enemy_medabot] Battle 2
execute if entity @e[x=-1773,y=44,z=-298,distance=..10,tag=enemy_medabot] run summon minecraft:armor_stand -1774 44 -300 {Invisible:1b,Marker:1b,Small:1b,CustomName:"{\"translate\":\"medabots_server:entity.mr_referee\"}",Tags:["mr_referee"],Rotation:[-90.0f,0.0f]}
execute if entity @e[x=-1773,y=44,z=-298,distance=..10,tag=enemy_medabot] run teleport @e[x=-1773,y=44,z=-298,distance=..10,tag=enemy_medabot] -1773 44 -298
execute if entity @e[x=-1773,y=44,z=-298,distance=..10,tag=enemy_medabot] run teleport @s -1772 44 -302
bossbar set medabots_server:laboratory_a/time value 3600
bossbar set medabots_server:laboratory_a/time players @a[scores={Stage=26}]