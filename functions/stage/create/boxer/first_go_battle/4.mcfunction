execute unless entity @e[x=-1908,y=44,z=-588,distance=..10,tag=enemy_medabot] run tellraw @s {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @e[x=-1908,y=44,z=-588,distance=..10,tag=enemy_medabot] run scoreboard players set @s BattlingMedabots 1
summon minecraft:item -1914 44 -588 {Item:{id:"minecraft:lapis_lazuli",Count:10b,tag:{medabots_server:{id:"medabots_server:medallar_cent"},display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.medallar_cent\"}"}}},Tags:["hostile","do_not_teleport"],Age:-32768s}
setblock -1902 44 -585 minecraft:stone_slab
setblock -1904 44 -583 minecraft:stone_slab
setblock -1906 44 -581 minecraft:stone_slab
setblock -1908 44 -584 minecraft:stone_slab
setblock -1911 44 -583 minecraft:stone_slab
setblock -1911 44 -586 minecraft:stone_slab
setblock -1913 44 -587 minecraft:stone_slab
setblock -1911 44 -590 minecraft:stone_slab
setblock -1911 44 -592 minecraft:stone_slab
setblock -1909 44 -595 minecraft:stone_slab
setblock -1906 44 -593 minecraft:stone_slab
setblock -1903 44 -594 minecraft:stone_slab
setblock -1902 44 -592 minecraft:stone_slab
setblock -1900 44 -590 minecraft:stone_slab
setblock -1900 44 -587 minecraft:stone_slab
execute if entity @e[x=-1871,y=44,z=-555,distance=..10,tag=enemy_medabot] run setblock -1900 44 -581 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/door",mode:"LOAD"}
execute if entity @e[x=-1908,y=44,z=-588,distance=..10,tag=enemy_medabot] run effect give @s minecraft:night_vision 2 0 true
execute if entity @e[x=-1908,y=44,z=-588,distance=..10,tag=enemy_medabot] run effect give @s minecraft:blindness 2 0 true
execute if entity @e[x=-1908,y=44,z=-588,distance=..10,tag=enemy_medabot] run scoreboard players set @s Battle 2
execute if entity @e[x=-1908,y=44,z=-588,distance=..10,tag=enemy_medabot] run effect give @e[x=-1908,y=44,z=-588,distance=..10,tag=enemy_medabot] minecraft:night_vision 2 0 true
execute if entity @e[x=-1908,y=44,z=-588,distance=..10,tag=enemy_medabot] run effect give @e[x=-1908,y=44,z=-588,distance=..10,tag=enemy_medabot] minecraft:blindness 2 0 true
execute if entity @e[x=-1908,y=44,z=-588,distance=..10,tag=enemy_medabot] run scoreboard players set @e[x=-1871,y=44,z=-555,distance=..10,tag=enemy_medabot] Battle 2
execute if entity @e[x=-1908,y=44,z=-588,distance=..10,tag=enemy_medabot] run summon minecraft:area_effect_cloud -1907 44 -589 {CustomName:"{\"translate\":\"medabots_server:message.stage.mission\"}",Tags:["mission","defeat_the_enemy"],Duration:2147483647}
execute if entity @e[x=-1908,y=44,z=-588,distance=..10,tag=enemy_medabot] run teleport @e[x=-1908,y=44,z=-588,distance=..10,tag=enemy_medabot] -1908 44 -588
execute if entity @e[x=-1908,y=44,z=-588,distance=..10,tag=enemy_medabot] run teleport @s -1905 44 -589