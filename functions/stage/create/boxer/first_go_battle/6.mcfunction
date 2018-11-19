execute unless entity @e[x=-1906,y=43,z=-553,distance=..10,tag=enemy_medabot] run tellraw @s {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @e[x=-1906,y=43,z=-553,distance=..10,tag=enemy_medabot] run scoreboard players set @s BattlingMedabots 1
summon minecraft:item -1906 44 -547 {Item:{id:"minecraft:lapis_lazuli",Count:10b,tag:{medabots_server:{id:"medabots_server:medallar_cent"},display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.medallar_cent\"}"}}},Tags:["hostile","do_not_teleport"],Age:-32768s}
execute if entity @e[x=-1906,y=43,z=-553,distance=..10,tag=enemy_medabot] run setblock -1899 44 -561 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
execute if entity @e[x=-1906,y=43,z=-553,distance=..10,tag=enemy_medabot] run effect give @s minecraft:night_vision 2 0 true
execute if entity @e[x=-1906,y=43,z=-553,distance=..10,tag=enemy_medabot] run effect give @s minecraft:blindness 2 0 true
execute if entity @e[x=-1906,y=43,z=-553,distance=..10,tag=enemy_medabot] run scoreboard players set @s Battle 2
execute if entity @e[x=-1906,y=43,z=-553,distance=..10,tag=enemy_medabot] run effect give @e[x=-1906,y=43,z=-553,distance=..10,tag=enemy_medabot] minecraft:night_vision 2 0 true
execute if entity @e[x=-1906,y=43,z=-553,distance=..10,tag=enemy_medabot] run effect give @e[x=-1906,y=43,z=-553,distance=..10,tag=enemy_medabot] minecraft:blindness 2 0 true
execute if entity @e[x=-1906,y=43,z=-553,distance=..10,tag=enemy_medabot] run scoreboard players set @e[x=-1906,y=43,z=-553,distance=..10,tag=enemy_medabot] Battle 2
execute if entity @e[x=-1906,y=43,z=-553,distance=..10,tag=enemy_medabot] run summon minecraft:area_effect_cloud -1907 44 -554 {CustomName:"{\"translate\":\"medabots_server:message.stage.mission\"}",Tags:["mission","defeat_the_enemy"],Duration:2147483647}
execute if entity @e[x=-1906,y=43,z=-553,distance=..10,tag=enemy_medabot] run teleport @e[x=-1906,y=43,z=-553,distance=..10,tag=enemy_medabot] -1906 43 -553
execute if entity @e[x=-1906,y=43,z=-553,distance=..10,tag=enemy_medabot] run teleport @s -1907 43 -556