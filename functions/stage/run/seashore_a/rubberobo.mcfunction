execute if entity @s[scores={Death=1..}] run function medabots_server:stage/clean_up/seashore_a/rubberobo
execute store result score #temp Time run bossbar get medabots_server:seashore_a/time value
execute store result bossbar medabots_server:seashore_a/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute if block -1551 46 -194 minecraft:iron_door[open=false] if block -1537 44 -187 minecraft:lime_wool run setblock -1551 45 -194 minecraft:structure_block[mode=load]{name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1533 46 -196 minecraft:iron_door[open=false] if block -1549 44 -186 minecraft:lime_wool run setblock -1533 45 -196 minecraft:structure_block[mode=load]{name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1534 46 -207 minecraft:iron_door[open=false] if block -1534 44 -206 minecraft:light_blue_wool run setblock -1534 45 -207 minecraft:structure_block[mode=load]{name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1534 46 -207 minecraft:iron_door[open=false] if block -1551 44 -206 minecraft:lime_wool run setblock -1534 45 -207 minecraft:structure_block[mode=load]{name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1534 46 -207 minecraft:iron_door[open=true] if block -1534 44 -206 minecraft:blue_wool if block -1551 44 -206 minecraft:green_wool run setblock -1534 45 -207 minecraft:structure_block[mode=load]{name:"medabots_server:stage/door",mode:"LOAD"}
execute if block -1515 46 -230 minecraft:iron_door[open=false] if block -1563 44 -235 minecraft:lime_wool run setblock -1515 45 -230 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1517 45 -189 minecraft:chest run setblock -1517 46 -189 minecraft:barrier
execute if block -1518 45 -188 minecraft:chest run setblock -1518 46 -188 minecraft:barrier
execute if block -1517 45 -188 minecraft:chest run setblock -1517 46 -188 minecraft:barrier
execute if block -1517 45 -187 minecraft:chest run setblock -1517 46 -187 minecraft:barrier
execute if block -1523 45 -187 minecraft:chest run setblock -1523 46 -187 minecraft:barrier
execute if block -1524 45 -187 minecraft:chest run setblock -1524 46 -187 minecraft:barrier
execute if block -1537 45 -188 minecraft:chest run setblock -1537 46 -188 minecraft:barrier
execute if block -1536 45 -187 minecraft:chest run setblock -1536 46 -187 minecraft:barrier
execute if block -1538 45 -187 minecraft:chest run setblock -1538 46 -187 minecraft:barrier
execute if block -1537 45 -186 minecraft:chest run setblock -1537 46 -186 minecraft:barrier
execute if block -1549 45 -187 minecraft:chest run setblock -1549 46 -187 minecraft:barrier
execute if block -1548 45 -186 minecraft:chest run setblock -1548 46 -186 minecraft:barrier
execute if block -1550 45 -186 minecraft:chest run setblock -1550 46 -186 minecraft:barrier
execute if block -1547 45 -207 minecraft:chest run setblock -1547 46 -207 minecraft:barrier
execute if block -1547 45 -205 minecraft:chest run setblock -1547 46 -205 minecraft:barrier
execute if block -1548 45 -208 minecraft:chest run setblock -1548 46 -208 minecraft:barrier
execute if block -1548 45 -206 minecraft:chest run setblock -1548 46 -206 minecraft:barrier
execute if block -1549 45 -207 minecraft:chest run setblock -1549 46 -207 minecraft:barrier
execute if block -1549 45 -205 minecraft:chest run setblock -1549 46 -205 minecraft:barrier
execute if block -1550 45 -208 minecraft:chest run setblock -1550 46 -208 minecraft:barrier
execute if block -1550 45 -206 minecraft:chest run setblock -1550 46 -206 minecraft:barrier
execute if block -1551 45 -207 minecraft:chest run setblock -1551 46 -207 minecraft:barrier
execute if block -1551 45 -205 minecraft:chest run setblock -1551 46 -205 minecraft:barrier
execute if block -1556 45 -193 minecraft:chest run setblock -1556 46 -193 minecraft:barrier
execute if block -1565 45 -239 minecraft:chest run setblock -1565 46 -239 minecraft:barrier
execute if block -1562 45 -234 minecraft:chest run setblock -1562 46 -234 minecraft:barrier
execute if block -1563 45 -231 minecraft:chest run setblock -1563 46 -231 minecraft:barrier
execute if block -1567 45 -235 minecraft:chest run setblock -1567 46 -235 minecraft:barrier
execute if block -1512 45 -230 minecraft:chest run setblock -1512 46 -230 minecraft:barrier
execute if block -1511 45 -227 minecraft:chest run setblock -1511 46 -227 minecraft:barrier
execute if block -1513 45 -225 minecraft:chest run setblock -1513 46 -225 minecraft:barrier
execute if block -1509 45 -225 minecraft:chest run setblock -1509 46 -225 minecraft:barrier
execute if block -1514 45 -223 minecraft:chest run setblock -1514 46 -223 minecraft:barrier
execute if block -1510 45 -223 minecraft:chest run setblock -1510 46 -223 minecraft:barrier
execute if block -1517 45 -189 minecraft:air run setblock -1517 46 -189 minecraft:air
execute if block -1518 45 -188 minecraft:air run setblock -1518 46 -188 minecraft:air
execute if block -1517 45 -188 minecraft:air if block -1517 46 -188 minecraft:barrier run summon minecraft:tnt -1517 45 -188 {CustomName:'{"translate":"medabots_server:entity.bomb"}',Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1517 45 -188 minecraft:air run setblock -1517 46 -188 minecraft:air
execute if block -1517 45 -187 minecraft:air run setblock -1517 46 -187 minecraft:air
execute if block -1523 45 -187 minecraft:air run setblock -1523 46 -187 minecraft:air
execute if block -1524 45 -187 minecraft:air if block -1524 46 -187 minecraft:barrier run summon minecraft:tnt -1524 45 -187 {CustomName:'{"translate":"medabots_server:entity.bomb"}',Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1524 45 -187 minecraft:air run setblock -1524 46 -187 minecraft:air
execute if block -1537 45 -188 minecraft:air run setblock -1537 46 -188 minecraft:air
execute if block -1536 45 -187 minecraft:air run setblock -1536 46 -187 minecraft:air
execute if block -1538 45 -187 minecraft:air run setblock -1538 46 -187 minecraft:air
execute if block -1537 45 -186 minecraft:air if block -1537 46 -186 minecraft:barrier run summon minecraft:creeper -1537 45 -186 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:'{"translate":"medabots_server:entity.guard"}',Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
execute if block -1537 45 -186 minecraft:air run setblock -1537 46 -186 minecraft:air
execute if block -1549 45 -187 minecraft:air run setblock -1549 46 -187 minecraft:air
execute if block -1548 45 -186 minecraft:air run setblock -1548 46 -186 minecraft:air
execute if block -1550 45 -186 minecraft:air run setblock -1550 46 -186 minecraft:air
execute if block -1547 45 -207 minecraft:air run setblock -1547 46 -207 minecraft:air
execute if block -1547 45 -205 minecraft:air run setblock -1547 46 -205 minecraft:air
execute if block -1548 45 -208 minecraft:air run setblock -1548 46 -208 minecraft:air
execute if block -1548 45 -206 minecraft:air if block -1548 46 -206 minecraft:barrier run summon minecraft:creeper -1548 45 -206 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:'{"translate":"medabots_server:entity.guard"}',Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard/6_medallar_cents",AbsorptionAmount:10.0f,Health:100.0f}
execute if block -1548 45 -206 minecraft:air run setblock -1548 46 -206 minecraft:air
execute if block -1549 45 -207 minecraft:air run setblock -1549 46 -207 minecraft:air
execute if block -1549 45 -205 minecraft:air run setblock -1549 46 -205 minecraft:air
execute if block -1550 45 -208 minecraft:air run setblock -1550 46 -208 minecraft:air
execute if block -1550 45 -206 minecraft:air if block -1550 46 -206 minecraft:barrier run summon minecraft:creeper -1550 45 -206 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:'{"translate":"medabots_server:entity.guard"}',Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
execute if block -1550 45 -206 minecraft:air run setblock -1550 46 -206 minecraft:air
execute if block -1551 45 -207 minecraft:air run setblock -1551 46 -207 minecraft:air
execute if block -1551 45 -205 minecraft:air run setblock -1551 46 -205 minecraft:air
execute if block -1556 45 -193 minecraft:air run setblock -1556 46 -193 minecraft:air
execute if block -1565 45 -239 minecraft:air run setblock -1565 46 -239 minecraft:air
execute if block -1562 45 -234 minecraft:air run setblock -1562 46 -234 minecraft:air
execute if block -1563 45 -231 minecraft:air run setblock -1563 46 -231 minecraft:air
execute if block -1567 45 -235 minecraft:air run setblock -1567 46 -235 minecraft:air
execute if block -1512 45 -230 minecraft:air if block -1512 46 -230 minecraft:barrier run summon minecraft:creeper -1512 45 -230 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:'{"translate":"medabots_server:entity.guard"}',Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard/2_medallar_cents",AbsorptionAmount:10.0f,Health:100.0f}
execute if block -1512 45 -230 minecraft:air run setblock -1512 46 -230 minecraft:air
execute if block -1511 45 -227 minecraft:air run setblock -1511 46 -227 minecraft:air
execute if block -1513 45 -225 minecraft:air run setblock -1513 46 -225 minecraft:air
execute if block -1509 45 -225 minecraft:air run setblock -1509 46 -225 minecraft:air
execute if block -1514 45 -223 minecraft:air if block -1514 46 -223 minecraft:barrier run summon minecraft:creeper -1514 45 -223 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:'{"translate":"medabots_server:entity.guard"}',Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard/4_medallar_cents",AbsorptionAmount:10.0f,Health:100.0f}
execute if block -1514 45 -223 minecraft:air run setblock -1514 46 -223 minecraft:air
execute if block -1510 45 -223 minecraft:air run setblock -1510 46 -223 minecraft:air
execute as @e[x=-1570,y=43,z=-247,dx=63,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=4}] run scoreboard players set @s Stage 4
execute unless entity @e[scores={Stage=4},tag=rubberobo,type=!minecraft:player] if entity @s[x=-1537.5,y=45,z=-227.5,distance=..0.7,tag=hostile,gamemode=adventure] run function medabots_server:stage/clean_up/seashore_a/second_go
execute unless entity @e[scores={Stage=4},tag=rubberobo,type=!minecraft:player] run stopsound @s[x=-1537.5,y=45,z=-227.5,distance=..0.7,tag=hostile,gamemode=adventure] music
execute unless entity @e[scores={Stage=4},tag=rubberobo,type=!minecraft:player] run playsound medabots_server:music.stage.stage_end music @s[x=-1537.5,y=45,z=-227.5,distance=..0.7,tag=hostile,gamemode=adventure] -1539 51 -216 14
execute unless entity @e[scores={Stage=4},tag=rubberobo,type=!minecraft:player] run scoreboard players set @s[x=-1537.5,y=45,z=-227.5,distance=..0.7,tag=hostile,gamemode=adventure] Battle 0
execute unless entity @e[scores={Stage=4},tag=rubberobo,type=!minecraft:player] run scoreboard players set @s[x=-1537.5,y=45,z=-227.5,distance=..0.7,tag=hostile,gamemode=adventure] MusicType 1
execute unless entity @e[scores={Stage=4},tag=rubberobo,type=!minecraft:player] run scoreboard players set @s[x=-1537.5,y=45,z=-227.5,distance=..0.7,tag=hostile,gamemode=adventure] Music 299
execute unless entity @e[scores={Stage=4},tag=rubberobo,type=!minecraft:player] run advancement grant @s[x=-1537.5,y=45,z=-227.5,distance=..0.7,tag=hostile,gamemode=adventure] only medabots_server:stages/wave_1/seashore_a_second_go
execute unless entity @e[scores={Stage=4},tag=rubberobo,type=!minecraft:player] run teleport @s[x=-1537.5,y=45,z=-227.5,distance=..0.7,tag=hostile,gamemode=adventure] -1539 51 -216 -180 0
execute if block -1551 45 -194 minecraft:structure_block run setblock -1551 46 -194 minecraft:redstone_block
execute if block -1533 45 -196 minecraft:structure_block run setblock -1533 46 -196 minecraft:redstone_block
execute if block -1534 45 -207 minecraft:structure_block run setblock -1534 46 -207 minecraft:redstone_block
execute if block -1515 45 -230 minecraft:structure_block run setblock -1515 46 -230 minecraft:redstone_block