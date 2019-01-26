execute unless entity @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=1] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=1] run function medabots_server:stage/create/laboratory_a/second_go_battle/1_cpu
summon minecraft:creeper -1794 44 -269 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:"{\"translate\":\"medabots_server:entity.guard\"}",Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
summon minecraft:creeper -1805 44 -269 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:"{\"translate\":\"medabots_server:entity.guard\"}",Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
summon minecraft:creeper -1794 44 -264 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:"{\"translate\":\"medabots_server:entity.guard\"}",Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
summon minecraft:creeper -1805 44 -264 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:"{\"translate\":\"medabots_server:entity.guard\"}",Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
summon minecraft:creeper -1794 44 -259 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:"{\"translate\":\"medabots_server:entity.guard\"}",Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
summon minecraft:creeper -1805 44 -259 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:"{\"translate\":\"medabots_server:entity.guard\"}",Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
summon minecraft:creeper -1794 44 -254 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:"{\"translate\":\"medabots_server:entity.guard\"}",Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
summon minecraft:creeper -1805 44 -254 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:"{\"translate\":\"medabots_server:entity.guard\"}",Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
setblock -1799 44 -272 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/door",mode:"LOAD"}
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1800 44 -264
effect give @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=1] minecraft:night_vision 2 0 true
effect give @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=1] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=1] Battle 2
teleport @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=1] -1799 44 -259
summon minecraft:area_effect_cloud -1800 44 -262 {CustomName:"{\"translate\":\"medabots_server:message.stage.mission\"}",Tags:["mission","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:laboratory_a/time value 3600
bossbar set medabots_server:laboratory_a/time players @a[scores={Stage=27}]