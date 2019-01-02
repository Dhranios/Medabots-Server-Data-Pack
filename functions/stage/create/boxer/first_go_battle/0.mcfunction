execute unless entity @e[x=-1871,y=44,z=-555,distance=..10,tag=enemy_medabot] run tellraw @s {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @e[x=-1871,y=44,z=-555,distance=..10,tag=enemy_medabot] run scoreboard players set @s BattlingMedabots 1
summon minecraft:item -1865 44 -555 {Item:{id:"minecraft:lapis_lazuli",Count:10b,tag:{medabots_server:{id:"medabots_server:medallar_cent"},display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.medallar_cent\"}"}}},Tags:["hostile","do_not_teleport"],Age:-32768s}
summon minecraft:area_effect_cloud -1877 44 -557 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1875 44 -559 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1870 44 -559 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1868 44 -557 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1868 44 -552 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1870 44 -550 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1875 44 -550 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1877 44 -552 {CustomName:"{\"translate\":\"medabots_server:block.action_floor\"}",Tags:["action_floor","balloon_bomb","enabled"],Duration:2147483647}
execute if entity @e[x=-1871,y=44,z=-555,distance=..10,tag=enemy_medabot] run setblock -1879 44 -562 minecraft:structure_block[mode=load]{name:"medabots_server:stage/door",mode:"LOAD"}
execute if entity @e[x=-1871,y=44,z=-555,distance=..10,tag=enemy_medabot] run effect give @s minecraft:night_vision 2 0 true
execute if entity @e[x=-1871,y=44,z=-555,distance=..10,tag=enemy_medabot] run effect give @s minecraft:blindness 2 0 true
execute if entity @e[x=-1871,y=44,z=-555,distance=..10,tag=enemy_medabot] run scoreboard players set @s Battle 2
execute if entity @e[x=-1871,y=44,z=-555,distance=..10,tag=enemy_medabot] run effect give @e[x=-1871,y=44,z=-555,distance=..10,tag=enemy_medabot] minecraft:night_vision 2 0 true
execute if entity @e[x=-1871,y=44,z=-555,distance=..10,tag=enemy_medabot] run effect give @e[x=-1871,y=44,z=-555,distance=..10,tag=enemy_medabot] minecraft:blindness 2 0 true
execute if entity @e[x=-1871,y=44,z=-555,distance=..10,tag=enemy_medabot] run scoreboard players set @e[x=-1871,y=44,z=-555,distance=..10,tag=enemy_medabot] Battle 2
execute if entity @e[x=-1871,y=44,z=-555,distance=..10,tag=enemy_medabot] run summon minecraft:area_effect_cloud -1872 44 -554 {CustomName:"{\"translate\":\"medabots_server:message.stage.mission\"}",Tags:["mission","defeat_the_enemy"],Duration:2147483647}
execute if entity @e[x=-1871,y=44,z=-555,distance=..10,tag=enemy_medabot] run teleport @e[x=-1871,y=44,z=-555,distance=..10,tag=enemy_medabot] -1871 44 -555
execute if entity @e[x=-1871,y=44,z=-555,distance=..10,tag=enemy_medabot] run teleport @s -1874 44 -554
bossbar set medabots_server:boxer/time value 3600
bossbar set medabots_server:boxer/time players @a[scores={Stage=79}]