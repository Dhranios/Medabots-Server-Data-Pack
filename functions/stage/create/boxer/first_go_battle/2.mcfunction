execute unless entity @e[x=-1873,y=43,z=-590,distance=..10,tag=enemy_medabot] run tellraw @s {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @e[x=-1873,y=43,z=-590,distance=..10,tag=enemy_medabot] run scoreboard players set @s BattlingMedabots 1
summon minecraft:item -1873 44 -596 {Item:{id:"minecraft:lapis_lazuli",Count:10b,tag:{medabots_server:{id:"medabots_server:medallar_cent"},display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.medallar_cent\"}"}}},Tags:["hostile","do_not_teleport"],Age:-32768s}
summon minecraft:area_effect_cloud -1874 44 -583 {CustomName:"{\"translate\":\"medabots_server:block.hole\"}",Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1871 44 -583 {CustomName:"{\"translate\":\"medabots_server:block.hole\"}",Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1868 44 -584 {CustomName:"{\"translate\":\"medabots_server:block.hole\"}",Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1867 44 -587 {CustomName:"{\"translate\":\"medabots_server:block.hole\"}",Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1867 44 -590 {CustomName:"{\"translate\":\"medabots_server:block.hole\"}",Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1868 44 -593 {CustomName:"{\"translate\":\"medabots_server:block.hole\"}",Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1871 44 -594 {CustomName:"{\"translate\":\"medabots_server:block.hole\"}",Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1874 44 -594 {CustomName:"{\"translate\":\"medabots_server:block.hole\"}",Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1877 44 -593 {CustomName:"{\"translate\":\"medabots_server:block.hole\"}",Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1878 44 -590 {CustomName:"{\"translate\":\"medabots_server:block.hole\"}",Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1878 44 -587 {CustomName:"{\"translate\":\"medabots_server:block.hole\"}",Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1877 44 -584 {CustomName:"{\"translate\":\"medabots_server:block.hole\"}",Tags:["hole","delay_5"],Duration:2147483647}
execute if entity @e[x=-1873,y=43,z=-590,distance=..10,tag=enemy_medabot] run setblock -1880 44 -582 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
execute if entity @e[x=-1873,y=43,z=-590,distance=..10,tag=enemy_medabot] run effect give @s minecraft:night_vision 2 0 true
execute if entity @e[x=-1873,y=43,z=-590,distance=..10,tag=enemy_medabot] run effect give @s minecraft:blindness 2 0 true
execute if entity @e[x=-1873,y=43,z=-590,distance=..10,tag=enemy_medabot] run scoreboard players set @s Battle 2
execute if entity @e[x=-1873,y=43,z=-590,distance=..10,tag=enemy_medabot] run effect give @e[x=-1873,y=43,z=-590,distance=..10,tag=enemy_medabot] minecraft:night_vision 2 0 true
execute if entity @e[x=-1873,y=43,z=-590,distance=..10,tag=enemy_medabot] run effect give @e[x=-1873,y=43,z=-590,distance=..10,tag=enemy_medabot] minecraft:blindness 2 0 true
execute if entity @e[x=-1873,y=43,z=-590,distance=..10,tag=enemy_medabot] run scoreboard players set @e[x=-1873,y=43,z=-590,distance=..10,tag=enemy_medabot] Battle 2
execute if entity @e[x=-1873,y=43,z=-590,distance=..10,tag=enemy_medabot] run summon minecraft:area_effect_cloud -1872 44 -589 {CustomName:"{\"translate\":\"medabots_server:message.stage.mission\"}",Tags:["mission","defeat_the_enemy"],Duration:2147483647}
execute if entity @e[x=-1873,y=43,z=-590,distance=..10,tag=enemy_medabot] run teleport @e[x=-1873,y=43,z=-590,distance=..10,tag=enemy_medabot] -1873 43 -590
execute if entity @e[x=-1873,y=43,z=-590,distance=..10,tag=enemy_medabot] run teleport @s -1872 43 -587
bossbar set medabots_server:boxer/time value 3600
bossbar set medabots_server:boxer/time players @a[scores={Stage=79}]