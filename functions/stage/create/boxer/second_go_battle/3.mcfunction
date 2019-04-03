execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=3] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=3] run function medabots_server:stage/create/boxer/second_go_battle/3_cpu
summon minecraft:item -1890 44 -602 {Item:{id:"minecraft:lapis_lazuli",Count:10b,tag:{medabots_server:{stage_item:1b,id:"medabots_server:medallar_cent"},display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.medallar_cent"}'}}},Tags:["hostile","do_not_teleport"],Age:-32768s}
summon minecraft:creeper -1890 44 -598 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:'{"translate":"medabots_server:entity.guard"}',Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
summon minecraft:creeper -1889 44 -598 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:'{"translate":"medabots_server:entity.guard"}',Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
summon minecraft:zombie -1890 44 -601 {NoAI:1b,Silent:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:dispenser",Count:1b}],CustomName:'{"translate":"medabots_server:entity.cannon"}',Tags:["delay_4","detect","hostile","killerable","rotate_over_z_positive","cannon"],DeathLootTable:"medabots_server:entities/cannon",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"generic.knockbackResistance",Base:1.0d},{Name:"zombie.spawnReinforcements",Base:0.0d},{Name:"generic.movementSpeed",Base:0.0d},{Name:"generic.maxHealth",Base:100.0d}],PersistenceRequired:1b,AbsorptionAmount:20.0f,Health:100.0f}
summon minecraft:zombie -1889 44 -601 {NoAI:1b,Silent:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:dispenser",Count:1b}],CustomName:'{"translate":"medabots_server:entity.cannon"}',Tags:["delay_4","detect","hostile","killerable","rotate_over_z_positive","cannon"],DeathLootTable:"medabots_server:entities/cannon",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"generic.knockbackResistance",Base:1.0d},{Name:"zombie.spawnReinforcements",Base:0.0d},{Name:"generic.movementSpeed",Base:0.0d},{Name:"generic.maxHealth",Base:100.0d}],PersistenceRequired:1b,AbsorptionAmount:20.0f,Health:100.0f}
summon minecraft:area_effect_cloud -1897 44 -593 {CustomName:'{"translate":"medabots_server:block.laser_trap"}',Tags:["laser_trap","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1882 44 -593 {CustomName:'{"translate":"medabots_server:block.laser_trap"}',Tags:["laser_trap","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1895 44 -590 {CustomName:'{"translate":"medabots_server:block.laser_trap"}',Tags:["laser_trap","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1884 44 -590 {CustomName:'{"translate":"medabots_server:block.laser_trap"}',Tags:["laser_trap","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1893 44 -588 {CustomName:'{"translate":"medabots_server:block.laser_trap"}',Tags:["laser_trap","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1886 44 -588 {CustomName:'{"translate":"medabots_server:block.laser_trap"}',Tags:["laser_trap","delay_10","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1896 44 -598 {CustomName:'{"translate":"medabots_server:block.laser_trap"}',Tags:["laser_trap","delay_15","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1883 44 -598 {CustomName:'{"translate":"medabots_server:block.laser_trap"}',Tags:["laser_trap","delay_15","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1894 44 -600 {CustomName:'{"translate":"medabots_server:block.laser_trap"}',Tags:["laser_trap","delay_15","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1885 44 -600 {CustomName:'{"translate":"medabots_server:block.laser_trap"}',Tags:["laser_trap","delay_15","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1892 44 -601 {CustomName:'{"translate":"medabots_server:block.laser_trap"}',Tags:["laser_trap","delay_15","enabled"],Duration:2147483647}
summon minecraft:area_effect_cloud -1887 44 -601 {CustomName:'{"translate":"medabots_server:block.laser_trap"}',Tags:["laser_trap","delay_15","enabled"],Duration:2147483647}
setblock -1897 44 -593 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/laser_trap",mode:"LOAD"}
setblock -1882 44 -593 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/laser_trap",mode:"LOAD"}
setblock -1895 44 -590 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/laser_trap",mode:"LOAD"}
setblock -1884 44 -590 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/laser_trap",mode:"LOAD"}
setblock -1893 44 -588 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/laser_trap",mode:"LOAD"}
setblock -1886 44 -588 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/laser_trap",mode:"LOAD"}
setblock -1896 44 -598 minecraft:structure_block[mode=load]{name:"medabots_server:stage/laser_trap",mode:"LOAD"}
setblock -1883 44 -598 minecraft:structure_block[mode=load]{name:"medabots_server:stage/laser_trap",mode:"LOAD"}
setblock -1894 44 -600 minecraft:structure_block[mode=load]{name:"medabots_server:stage/laser_trap",mode:"LOAD"}
setblock -1885 44 -600 minecraft:structure_block[mode=load]{name:"medabots_server:stage/laser_trap",mode:"LOAD"}
setblock -1892 44 -601 minecraft:structure_block[mode=load]{name:"medabots_server:stage/laser_trap",mode:"LOAD"}
setblock -1887 44 -601 minecraft:structure_block[mode=load]{name:"medabots_server:stage/laser_trap",mode:"LOAD"}
setblock -1897 45 -593 minecraft:redstone_block
setblock -1882 45 -593 minecraft:redstone_block
setblock -1895 45 -590 minecraft:redstone_block
setblock -1884 45 -590 minecraft:redstone_block
setblock -1893 45 -588 minecraft:redstone_block
setblock -1886 45 -588 minecraft:redstone_block
setblock -1896 45 -598 minecraft:redstone_block
setblock -1883 45 -598 minecraft:redstone_block
setblock -1894 45 -600 minecraft:redstone_block
setblock -1885 45 -600 minecraft:redstone_block
setblock -1892 45 -601 minecraft:redstone_block
setblock -1887 45 -601 minecraft:redstone_block
setblock -1889 44 -586 minecraft:structure_block[mode=load]{name:"medabots_server:stage/door",mode:"LOAD"}
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1890 44 -588
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=3] minecraft:night_vision 2 0 true
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=3] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=3] Battle 2
teleport @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=3] -1890 44 -594
summon minecraft:area_effect_cloud -1889 44 -595 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:boxer/robattle value 3600
bossbar set medabots_server:boxer/robattle players @a[scores={Stage=80}]