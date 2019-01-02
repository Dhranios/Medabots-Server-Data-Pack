execute unless entity @e[x=-1604,y=45,z=-170,distance=..10,tag=enemy_medabot] run tellraw @s {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @e[x=-1604,y=45,z=-170,distance=..10,tag=enemy_medabot] run scoreboard players set @s BattlingMedabots 1
execute if entity @e[x=-1604,y=45,z=-170,distance=..10,tag=enemy_medabot] run setblock -1616 45 -167 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
execute if entity @e[x=-1604,y=45,z=-170,distance=..10,tag=enemy_medabot] run effect give @s minecraft:night_vision 2 0 true
execute if entity @e[x=-1604,y=45,z=-170,distance=..10,tag=enemy_medabot] run effect give @s minecraft:blindness 2 0 true
execute if entity @e[x=-1604,y=45,z=-170,distance=..10,tag=enemy_medabot] run scoreboard players set @s Battle 2
execute if entity @e[x=-1604,y=45,z=-170,distance=..10,tag=enemy_medabot] run effect give @e[x=-1604,y=45,z=-170,distance=..10,tag=enemy_medabot] minecraft:night_vision 2 0 true
execute if entity @e[x=-1604,y=45,z=-170,distance=..10,tag=enemy_medabot] run effect give @e[x=-1604,y=45,z=-170,distance=..10,tag=enemy_medabot] minecraft:blindness 2 0 true
execute if entity @e[x=-1604,y=45,z=-170,distance=..10,tag=enemy_medabot] run scoreboard players set @e[x=-1604,y=45,z=-170,distance=..10,tag=enemy_medabot] Battle 2
execute if entity @e[x=-1604,y=45,z=-170,distance=..10,tag=enemy_medabot] run summon minecraft:armor_stand -1605 45 -172 {CustomName:"{\"translate\":\"medabots_server:entity.mr_referee\"}",Tags:["mr_referee"],Invisible:1b,Rotation:[45.0f,0.0f]}
execute if entity @e[x=-1604,y=45,z=-170,distance=..10,tag=enemy_medabot] run teleport @e[x=-1604,y=45,z=-170,distance=..10,tag=enemy_medabot] -1604 45 -170
execute if entity @e[x=-1604,y=45,z=-170,distance=..10,tag=enemy_medabot] run teleport @s -1608 45 -171
bossbar set medabots_server:rock_a/time value 3600
bossbar set medabots_server:rock_a/time players @a[scores={Stage=6}]