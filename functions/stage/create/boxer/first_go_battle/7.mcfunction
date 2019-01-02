execute unless entity @e[x=-1889,y=44,z=-574,distance=..10,tag=enemy_medabot] run tellraw @s {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @e[x=-1889,y=44,z=-574,distance=..10,tag=enemy_medabot] run scoreboard players set @s BattlingMedabots 1
execute if entity @e[x=-1889,y=44,z=-574,distance=..10,tag=enemy_medabot] run setblock -1891 44 -558 minecraft:structure_block[mode=load]{name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if entity @e[x=-1889,y=44,z=-574,distance=..10,tag=enemy_medabot] run effect give @s minecraft:night_vision 2 0 true
execute if entity @e[x=-1889,y=44,z=-574,distance=..10,tag=enemy_medabot] run effect give @s minecraft:blindness 2 0 true
execute if entity @e[x=-1889,y=44,z=-574,distance=..10,tag=enemy_medabot] run scoreboard players set @s Battle 2
execute if entity @e[x=-1889,y=44,z=-574,distance=..10,tag=enemy_medabot] run effect give @e[x=-1890,y=44,z=-569,distance=..10,tag=enemy_medabot] minecraft:night_vision 2 0 true
execute if entity @e[x=-1889,y=44,z=-574,distance=..10,tag=enemy_medabot] run effect give @e[x=-1890,y=44,z=-569,distance=..10,tag=enemy_medabot] minecraft:blindness 2 0 true
execute if entity @e[x=-1889,y=44,z=-574,distance=..10,tag=enemy_medabot] run scoreboard players set @e[x=-1861,y=44,z=-571,distance=..10,tag=enemy_medabot] Battle 2
execute if entity @e[x=-1889,y=44,z=-574,distance=..10,tag=enemy_medabot] run summon minecraft:armor_stand -1892 44 -572 {Invisible:1b,Marker:1b,Small:1b,CustomName:"{\"translate\":\"medabots_server:entity.mr_referee\"}",Tags:["mr_referee"],Rotation:[-90.0f,0.0f]}
execute if entity @e[x=-1889,y=44,z=-574,distance=..10,tag=enemy_medabot] run teleport @e[x=-1890,y=44,z=-569,distance=..10,tag=enemy_medabot] -1889 44 -574
execute if entity @e[x=-1889,y=44,z=-574,distance=..10,tag=enemy_medabot] run teleport @s -1890 44 -569
bossbar set medabots_server:boxer/time value 3600
bossbar set medabots_server:boxer/time players @a[scores={Stage=79}]