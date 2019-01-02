execute unless entity @e[x=-1652,y=45,z=-129,distance=..10,tag=enemy_medabot] run tellraw @s {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @e[x=-1652,y=45,z=-129,distance=..10,tag=enemy_medabot] run scoreboard players set @s BattlingMedabots 1
execute if entity @e[x=-1652,y=45,z=-129,distance=..10,tag=enemy_medabot] run setblock -1662 45 -124 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
execute if entity @e[x=-1652,y=45,z=-129,distance=..10,tag=enemy_medabot] run effect give @s minecraft:night_vision 2 0 true
execute if entity @e[x=-1652,y=45,z=-129,distance=..10,tag=enemy_medabot] run effect give @s minecraft:blindness 2 0 true
execute if entity @e[x=-1652,y=45,z=-129,distance=..10,tag=enemy_medabot] run scoreboard players set @s Battle 2
execute if entity @e[x=-1652,y=45,z=-129,distance=..10,tag=enemy_medabot] run effect give @e[x=-1652,y=45,z=-129,distance=..10,tag=enemy_medabot] minecraft:night_vision 2 0 true
execute if entity @e[x=-1652,y=45,z=-129,distance=..10,tag=enemy_medabot] run effect give @e[x=-1652,y=45,z=-129,distance=..10,tag=enemy_medabot] minecraft:blindness 2 0 true
execute if entity @e[x=-1652,y=45,z=-129,distance=..10,tag=enemy_medabot] run scoreboard players set @e[x=-1652,y=45,z=-129,distance=..10,tag=enemy_medabot] Battle 2
execute if entity @e[x=-1652,y=45,z=-129,distance=..10,tag=enemy_medabot] run summon minecraft:area_effect_cloud -1652 45 -127 {CustomName:"{\"translate\":\"medabots_server:message.stage.mission\"}",Tags:["mission","defeat_the_enemy"],Duration:2147483647}
execute if entity @e[x=-1652,y=45,z=-129,distance=..10,tag=enemy_medabot] run teleport @e[x=-1652,y=45,z=-129,distance=..10,tag=enemy_medabot] -1652 45 -129
execute if entity @e[x=-1652,y=45,z=-129,distance=..10,tag=enemy_medabot] run teleport @s -1653 45 -124
bossbar set medabots_server:jungle_a/time value 3600
bossbar set medabots_server:jungle_a/time players @a[scores={Stage=9}]