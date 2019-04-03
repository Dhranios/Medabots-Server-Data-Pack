execute unless entity @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=2] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=2] run function medabots_server:stage/create/jungle_b/second_go_battle/2_cpu
summon minecraft:zombie -1643 45 -449 {NoAI:1b,Silent:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:dispenser",Count:1b}],CustomName:'{"translate":"medabots_server:entity.cannon"}',Tags:["delay_4","detect","hostile","killerable","rotate_over_z_negative","cannon"],DeathLootTable:"medabots_server:entities/cannon",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"generic.knockbackResistance",Base:1.0d},{Name:"zombie.spawnReinforcements",Base:0.0d},{Name:"generic.movementSpeed",Base:0.0d},{Name:"generic.maxHealth",Base:100.0d}],PersistenceRequired:1b,AbsorptionAmount:20.0f,Health:100.0f}
summon minecraft:zombie -1649 45 -450 {NoAI:1b,Silent:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:dispenser",Count:1b}],CustomName:'{"translate":"medabots_server:entity.cannon"}',Tags:["delay_4","detect","hostile","killerable","rotate_over_z_negative","cannon"],DeathLootTable:"medabots_server:entities/cannon",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"generic.knockbackResistance",Base:1.0d},{Name:"zombie.spawnReinforcements",Base:0.0d},{Name:"generic.movementSpeed",Base:0.0d},{Name:"generic.maxHealth",Base:100.0d}],PersistenceRequired:1b,AbsorptionAmount:20.0f,Health:100.0f}
summon minecraft:zombie -1662 45 -457 {NoAI:1b,Silent:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:dispenser",Count:1b}],CustomName:'{"translate":"medabots_server:entity.cannon"}',Tags:["delay_4","detect","hostile","killerable","rotate_over_x_positive","cannon"],DeathLootTable:"medabots_server:entities/cannon",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"generic.knockbackResistance",Base:1.0d},{Name:"zombie.spawnReinforcements",Base:0.0d},{Name:"generic.movementSpeed",Base:0.0d},{Name:"generic.maxHealth",Base:100.0d}],PersistenceRequired:1b,AbsorptionAmount:20.0f,Health:100.0f}
summon minecraft:zombie -1661 45 -472 {NoAI:1b,Silent:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:dispenser",Count:1b}],CustomName:'{"translate":"medabots_server:entity.cannon"}',Tags:["delay_4","detect","hostile","killerable","rotate_over_x_positive","cannon"],DeathLootTable:"medabots_server:entities/cannon",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"generic.knockbackResistance",Base:1.0d},{Name:"zombie.spawnReinforcements",Base:0.0d},{Name:"generic.movementSpeed",Base:0.0d},{Name:"generic.maxHealth",Base:100.0d}],PersistenceRequired:1b,AbsorptionAmount:20.0f,Health:100.0f}
summon minecraft:zombie -1646 45 -475 {NoAI:1b,Silent:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:dispenser",Count:1b}],CustomName:'{"translate":"medabots_server:entity.cannon"}',Tags:["delay_4","detect","hostile","killerable","rotate_over_z_positive","cannon"],DeathLootTable:"medabots_server:entities/cannon",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"generic.knockbackResistance",Base:1.0d},{Name:"zombie.spawnReinforcements",Base:0.0d},{Name:"generic.movementSpeed",Base:0.0d},{Name:"generic.maxHealth",Base:100.0d}],PersistenceRequired:1b,AbsorptionAmount:20.0f,Health:100.0f}
summon minecraft:area_effect_cloud -1653 45 -460 {CustomName:'{"translate":"medabots_server:block.action_floor"}',Tags:["action_floor","bomb","delay_5","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1646 45 -464 {CustomName:'{"translate":"medabots_server:block.action_floor"}',Tags:["action_floor","bomb","delay_5","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1653 45 -473 {CustomName:'{"translate":"medabots_server:block.laser_trap"}',Tags:["laser_trap","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1640 45 -467 {CustomName:'{"translate":"medabots_server:block.laser_trap"}',Tags:["laser_trap","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1661 45 -462 {CustomName:'{"translate":"medabots_server:block.laser_trap"}',Tags:["laser_trap","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1640 45 -456 {CustomName:'{"translate":"medabots_server:block.laser_trap"}',Tags:["laser_trap","delay_10","enabled"],Duration:2147483647}
setblock -1653 45 -473 minecraft:structure_block[mode=load]{name:"medabots_server:stage/laser_trap",mode:"LOAD"}
setblock -1640 45 -467 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/laser_trap",mode:"LOAD"}
setblock -1661 45 -462 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/laser_trap",mode:"LOAD"}
setblock -1640 45 -456 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/laser_trap",mode:"LOAD"}
setblock -1653 46 -473 minecraft:redstone_block
setblock -1640 46 -467 minecraft:redstone_block
setblock -1661 46 -462 minecraft:redstone_block
setblock -1640 46 -456 minecraft:redstone_block
setblock -1635 45 -451 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1650 45 -461
effect give @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=2] minecraft:night_vision 2 0 true
effect give @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=2] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=2] Battle 2
teleport @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=2] -1651 45 -466
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1648 45 -463 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Invisible:1b,Rotation:[90.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1653 45 -464 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Invisible:1b,Rotation:[-90.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:jungle_b/robattle value 3600
bossbar set medabots_server:jungle_b/robattle players @a[scores={Stage=12}]