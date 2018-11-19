summon minecraft:zombie -1535 45 -176 {NoAI:1b,Silent:1b,CustomName:"{\"translate\":\"medabots_server:entity.cannon\"}",ArmorItems:[{},{},{},{id:"minecraft:dispenser",Count:1b}],Tags:["delay_4","detect","hostile","killerable","rotate_over_z_positive","cannon"],DeathLootTable:"medabots_server:entities/cannon",ArmorDropChances:[1.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"generic.knockbackResistance",Base:1.0d},{Name:"zombie.spawnReinforcements",Base:0.0d},{Name:"generic.movementSpeed",Base:0.0d},{Name:"generic.maxHealth",Base:100.0d}],PersistenceRequired:1b,Team:"StageEnemy",AbsorptionAmount:20.0f,Health:100.0f}
summon minecraft:zombie -1539 45 -176 {NoAI:1b,Silent:1b,CustomName:"{\"translate\":\"medabots_server:entity.cannon\"}",ArmorItems:[{},{},{},{id:"minecraft:dispenser",Count:1b}],Tags:["delay_4","detect","hostile","killerable","rotate_over_z_positive","cannon"],DeathLootTable:"medabots_server:entities/cannon",ArmorDropChances:[1.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"generic.knockbackResistance",Base:1.0d},{Name:"zombie.spawnReinforcements",Base:0.0d},{Name:"generic.movementSpeed",Base:0.0d},{Name:"generic.maxHealth",Base:100.0d}],PersistenceRequired:1b,Team:"StageEnemy",AbsorptionAmount:20.0f,Health:100.0f}
summon minecraft:item -1520 45 -175 {Item:{id:"minecraft:lapis_lazuli",Count:1b,tag:{medabots_server:{id:"medabots_server:medallar_cent"},display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.medallar_cent\"}"}}},Tags:["hostile","do_not_teleport"],Age:-32768s}
summon minecraft:area_effect_cloud -1539 45 -172 {CustomName:"{\"translate\":\"medabots_server:entity.round_stone\"}",Tags:["round_stone","hostile","killerable"],Duration:2147483647,Passengers:[{id:"minecraft:falling_block",Time:1,BlockState:{Name:"minecraft:diorite"},NoGravity:1b,Tags:["round_stone","hostile","killerable"]},{id:"minecraft:shulker",Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",Tags:["round_stone","hostile","killerable"]}]}
summon minecraft:area_effect_cloud -1543 45 -171 {CustomName:"{\"translate\":\"medabots_server:entity.ice_block\"}",Tags:["ice_block","hostile","killerable"],Duration:2147483647,Passengers:[{id:"minecraft:falling_block",Time:1,BlockState:{Name:"minecraft:ice"},NoGravity:1b,Tags:["ice_block","hostile","killerable"]},{id:"minecraft:shulker",Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",Tags:["ice_block","hostile","killerable"]}]}
summon minecraft:area_effect_cloud -1539 45 -169 {CustomName:"{\"translate\":\"medabots_server:entity.balloon_bomb\"}",Tags:["balloon_bomb"],Duration:2147483647}
summon minecraft:area_effect_cloud -1520 44 -155 {CustomName:"{\"translate\":\"medabots_server:entity.raft\"}",Tags:["raft"],Duration:2147483647}
summon minecraft:area_effect_cloud -1529 44 -154 {CustomName:"{\"translate\":\"medabots_server:entity.raft\"}",Tags:["raft"],Duration:2147483647}
summon minecraft:area_effect_cloud -1539 44 -154 {CustomName:"{\"translate\":\"medabots_server:entity.raft\"}",Tags:["raft"],Duration:2147483647}
summon minecraft:area_effect_cloud -1514 45 -159 {CustomName:"{\"translate\":\"medabots_server:block.laser_trap\"}",Tags:["laser_trap","delay_10","enabled"],Duration:2147483647}
summon minecraft:armor_stand -1532 45 -159 {CustomName:"{\"translate\":\"medabots_server:block.mirror\"}",Tags:["mirror"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass_pane",Count:1b}],Rotation:[45.0f,0.0f]}
summon minecraft:tnt -1534 45 -170 {CustomName:"{\"translate\":\"medabots_server:entity.bomb\"}",Fuse:100s,Tags:["bomb","hostile","killerable"]}
summon minecraft:tnt -1533 45 -170 {CustomName:"{\"translate\":\"medabots_server:entity.bomb\"}",Fuse:100s,Tags:["bomb","hostile","killerable"]}
#summon minecraft:zombie -1524 45 -177 Rubberrobo
#summon minecraft:zombie -1513 45 -170 Rubberrobo
setblock -1515 45 -168 minecraft:chest[facing=south,type=single]
fill -1523 45 -172 -1523 45 -171 minecraft:stone_slab
fill -1531 45 -159 -1531 48 -159 minecraft:gray_stained_glass
setblock -1532 45 -159 minecraft:structure_block[mode=load]{name:"medabots_server:stage/mirror",mode:"LOAD"}
setblock -1532 46 -159 minecraft:redstone_block
setblock -1514 45 -159 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/laser_trap",mode:"LOAD"}
setblock -1514 46 -159 minecraft:redstone_block
setblock -1562 45 -139 minecraft:structure_block[mode=load]{name:"medabots_server:stage/open_door",mode:"LOAD"}
setblock -1563 45 -142 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
setblock -1560 45 -143 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/open_door",mode:"LOAD"}
setblock -1559 45 -140 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
setblock -1562 46 -139 minecraft:redstone_block
setblock -1563 46 -142 minecraft:redstone_block
setblock -1560 46 -143 minecraft:redstone_block
setblock -1559 46 -140 minecraft:redstone_block
setblock -1516 44 -174 minecraft:structure_block[mode=load]{name:"medabots_server:stage/goal_area",mode:"LOAD"}
setblock -1516 45 -174 minecraft:redstone_block
setblock -1519 44 -171 minecraft:structure_block[mode=load]{name:"medabots_server:stage/starting_area",mode:"LOAD"}
setblock -1519 45 -171 minecraft:redstone_block
teleport @a[limit=1,gamemode=adventure] -1519 45 -171
scoreboard players set @a[x=-1570,y=43,z=-180,dx=63,dy=7,dz=63] Battle 1
scoreboard players set @a[x=-1570,y=43,z=-180,dx=63,dy=7,dz=63] Music 0
scoreboard players set @a[x=-1570,y=43,z=-180,dx=63,dy=7,dz=63] MusicType 7