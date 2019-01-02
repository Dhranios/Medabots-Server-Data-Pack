execute unless entity @e[x=-1799,y=44,z=-259,distance=..10,tag=enemy_medabot] run tellraw @s {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @e[x=-1799,y=44,z=-259,distance=..10,tag=enemy_medabot] run scoreboard players set @s BattlingMedabots 1
summon minecraft:creeper -1794 44 -269 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:"{\"translate\":\"medabots_server:entity.guard\"}",Team:"StageEnemy",Tags:["hostile","killerable","guard"],DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
summon minecraft:creeper -1805 44 -264 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:"{\"translate\":\"medabots_server:entity.guard\"}",Team:"StageEnemy",Tags:["hostile","killerable","guard"],DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
summon minecraft:creeper -1794 44 -259 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:"{\"translate\":\"medabots_server:entity.guard\"}",Team:"StageEnemy",Tags:["hostile","killerable","guard"],DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
summon minecraft:creeper -1805 44 -254 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:"{\"translate\":\"medabots_server:entity.guard\"}",Team:"StageEnemy",Tags:["hostile","killerable","guard"],DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
execute if entity @e[x=-1799,y=44,z=-259,distance=..10,tag=enemy_medabot] run setblock -1799 44 -272 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/door",mode:"LOAD"}
execute if entity @e[x=-1799,y=44,z=-259,distance=..10,tag=enemy_medabot] run effect give @s minecraft:night_vision 2 0 true
execute if entity @e[x=-1799,y=44,z=-259,distance=..10,tag=enemy_medabot] run effect give @s minecraft:blindness 2 0 true
execute if entity @e[x=-1799,y=44,z=-259,distance=..10,tag=enemy_medabot] run scoreboard players set @s Battle 2
execute if entity @e[x=-1799,y=44,z=-259,distance=..10,tag=enemy_medabot] run effect give @e[x=-1799,y=44,z=-259,distance=..10,tag=enemy_medabot] minecraft:night_vision 2 0 true
execute if entity @e[x=-1799,y=44,z=-259,distance=..10,tag=enemy_medabot] run effect give @e[x=-1799,y=44,z=-259,distance=..10,tag=enemy_medabot] minecraft:blindness 2 0 true
execute if entity @e[x=-1799,y=44,z=-259,distance=..10,tag=enemy_medabot] run scoreboard players set @e[x=-1799,y=44,z=-259,distance=..10,tag=enemy_medabot] Battle 2
execute if entity @e[x=-1799,y=44,z=-259,distance=..10,tag=enemy_medabot] run summon minecraft:area_effect_cloud -1800 44 -262 {CustomName:"{\"translate\":\"medabots_server:message.stage.mission\"}",Tags:["mission","defeat_the_enemy"],Duration:2147483647}
execute if entity @e[x=-1799,y=44,z=-259,distance=..10,tag=enemy_medabot] run teleport @e[x=-1799,y=44,z=-259,distance=..10,tag=enemy_medabot] -1799 44 -259
execute if entity @e[x=-1799,y=44,z=-259,distance=..10,tag=enemy_medabot] run teleport @s -1800 44 -264
bossbar set medabots_server:laboratory_a/time value 3600
bossbar set medabots_server:laboratory_a/time players @a[scores={Stage=26}]