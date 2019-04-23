execute if entity @s[scores={Death=1..}] run function medabots_server:stage/clean_up/grassland_b/second_go
execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/grassland_b/second_go
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute unless entity @e[x=-1570,y=43,z=-414,dx=62,dy=7,dz=95,scores={Medabot=0..,Battle=1..2,Stage=10},tag=enemy_medabot] run bossbar set medabots_server:grassland_b/time players @s[scores={Death=0,Battle=1..}]
execute unless entity @e[x=-1570,y=43,z=-414,dx=62,dy=7,dz=95,scores={Medabot=0..,Battle=1..2,Stage=10},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:grassland_b/time value
execute unless entity @e[x=-1570,y=43,z=-414,dx=62,dy=7,dz=95,scores={Medabot=0..,Battle=1..2,Stage=10},tag=enemy_medabot] store result bossbar medabots_server:grassland_b/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[x=-1570,y=43,z=-414,dx=62,dy=7,dz=95,scores={Medabot=0..,Battle=1..2,Stage=10},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:grassland_b/robattle value
execute if entity @e[x=-1570,y=43,z=-414,dx=62,dy=7,dz=95,scores={Medabot=0..,Battle=1..2,Stage=10},tag=enemy_medabot] store result bossbar medabots_server:grassland_b/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[x=-1570,y=43,z=-414,dx=62,dy=7,dz=95,scores={Medabot=0..,Battle=1..2,Stage=10},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1570,y=43,z=-414,dx=62,dy=7,dz=95,tag=mission] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[x=-1570,y=43,z=-414,dx=62,dy=7,dz=95,scores={Medabot=0..,Battle=1..2,Stage=10},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1570,y=43,z=-414,dx=62,dy=7,dz=95,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if block -1543 46 -327 minecraft:iron_door[open=true] if block -1541 44 -327 minecraft:orange_wool run setblock -1543 45 -327 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
execute if block -1543 46 -327 minecraft:iron_door[open=false] if block -1541 44 -327 minecraft:yellow_wool run setblock -1543 45 -327 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1560 46 -341 minecraft:iron_door[open=true] if block -1564 44 -336 minecraft:orange_wool run setblock -1560 45 -341 minecraft:structure_block[mode=load]{name:"medabots_server:stage/door",mode:"LOAD"}
execute if block -1560 46 -341 minecraft:iron_door[open=false] if block -1564 44 -336 minecraft:yellow_wool run setblock -1560 45 -341 minecraft:structure_block[mode=load]{name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1556 46 -368 minecraft:iron_door[open=true] if block -1566 44 -366 minecraft:light_blue_wool run setblock -1556 45 -368 minecraft:structure_block[mode=load]{name:"medabots_server:stage/door",mode:"LOAD"}
execute if block -1556 46 -368 minecraft:iron_door[open=false] if block -1566 44 -366 minecraft:blue_wool if block -1559 44 -344 minecraft:lime_wool run setblock -1556 45 -368 minecraft:structure_block[mode=load]{name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1544 46 -361 minecraft:iron_door[open=true] if block -1522 44 -365 minecraft:orange_wool run setblock -1544 45 -361 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
execute if block -1544 46 -361 minecraft:iron_door[open=false] if block -1522 44 -365 minecraft:yellow_wool run setblock -1544 45 -361 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1544 46 -363 minecraft:iron_door[open=true] if block -1522 44 -367 minecraft:orange_wool run setblock -1544 45 -363 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
execute if block -1544 46 -363 minecraft:iron_door[open=false] if block -1522 44 -367 minecraft:yellow_wool run setblock -1544 45 -363 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1559 46 -385 minecraft:iron_door[open=false] if block -1544 44 -374 minecraft:lime_wool run setblock -1559 45 -385 minecraft:structure_block[mode=load]{name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1555 44 -351 minecraft:blue_wool run tag @e[x=-1567.5,y=45,z=-350.5,distance=..0.7,tag=action_floor] remove enabled
execute if block -1555 44 -351 minecraft:light_blue_wool run tag @e[x=-1567.5,y=45,z=-350.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1550 44 -352 minecraft:blue_wool run tag @e[x=-1568.5,y=45,z=-351.5,distance=..0.7,tag=action_floor] remove enabled
execute if block -1550 44 -352 minecraft:light_blue_wool run tag @e[x=-1568.5,y=45,z=-351.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1563 44 -353 minecraft:blue_wool run tag @e[x=-1568.5,y=45,z=-352.5,distance=..0.7,tag=action_floor] remove enabled
execute if block -1563 44 -353 minecraft:light_blue_wool run tag @e[x=-1568.5,y=45,z=-352.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1558 44 -354 minecraft:blue_wool run tag @e[x=-1568.5,y=45,z=-353.5,distance=..0.7,tag=action_floor] remove enabled
execute if block -1558 44 -354 minecraft:light_blue_wool run tag @e[x=-1568.5,y=45,z=-353.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1522 44 -366 minecraft:orange_wool run tag @e[x=-1522,y=44,z=-366,distance=..5,tag=alarm] remove enabled
execute if block -1522 44 -366 minecraft:yellow_wool run tag @e[x=-1522,y=44,z=-366,distance=..5,tag=alarm] add enabled
execute if block -1534 45 -324 minecraft:chest run setblock -1534 46 -324 minecraft:barrier
execute if block -1546 45 -324 minecraft:chest run setblock -1546 46 -324 minecraft:barrier
execute if block -1554 45 -321 minecraft:chest run setblock -1554 46 -321 minecraft:barrier
execute if block -1548 45 -341 minecraft:chest run setblock -1548 46 -341 minecraft:barrier
execute if block -1546 45 -341 minecraft:chest run setblock -1546 46 -341 minecraft:barrier
execute if block -1553 45 -329 minecraft:chest run setblock -1553 46 -329 minecraft:barrier
execute if block -1553 45 -327 minecraft:chest run setblock -1553 46 -327 minecraft:barrier
execute if block -1554 45 -328 minecraft:chest run setblock -1554 46 -328 minecraft:barrier
execute if block -1552 45 -328 minecraft:chest run setblock -1552 46 -328 minecraft:barrier
execute if block -1560 45 -332 minecraft:chest run setblock -1560 46 -332 minecraft:barrier
execute if block -1560 45 -330 minecraft:chest run setblock -1560 46 -330 minecraft:barrier
execute if block -1561 45 -331 minecraft:chest run setblock -1561 46 -331 minecraft:barrier
execute if block -1559 45 -331 minecraft:chest run setblock -1559 46 -331 minecraft:barrier
execute if block -1564 45 -337 minecraft:chest run setblock -1564 46 -337 minecraft:barrier
execute if block -1564 45 -335 minecraft:chest run setblock -1564 46 -335 minecraft:barrier
execute if block -1565 45 -336 minecraft:chest run setblock -1565 46 -336 minecraft:barrier
execute if block -1563 45 -336 minecraft:chest run setblock -1563 46 -336 minecraft:barrier
execute if block -1558 45 -346 minecraft:chest run setblock -1558 46 -346 minecraft:barrier
execute if block -1553 45 -347 minecraft:chest run setblock -1553 46 -347 minecraft:barrier
execute if block -1562 45 -349 minecraft:chest run setblock -1562 46 -349 minecraft:barrier
execute if block -1566 45 -366 minecraft:chest run setblock -1566 46 -366 minecraft:barrier
execute if block -1524 45 -348 minecraft:chest run setblock -1524 46 -348 minecraft:barrier
execute if block -1522 45 -352 minecraft:chest run setblock -1522 46 -352 minecraft:barrier
execute if block -1518 45 -365 minecraft:chest run setblock -1518 46 -365 minecraft:barrier
execute if block -1517 45 -363 minecraft:chest run setblock -1517 46 -363 minecraft:barrier
execute if block -1516 45 -368 minecraft:chest run setblock -1516 46 -368 minecraft:barrier
execute if block -1515 45 -365 minecraft:chest run setblock -1515 46 -365 minecraft:barrier
execute if block -1514 45 -363 minecraft:chest run setblock -1514 46 -363 minecraft:barrier
execute if block -1543 45 -373 minecraft:chest run setblock -1543 46 -373 minecraft:barrier
execute if block -1552 45 -409 minecraft:chest run setblock -1552 46 -409 minecraft:barrier
execute if block -1553 45 -408 minecraft:chest run setblock -1553 46 -408 minecraft:barrier
execute if block -1553 45 -409 minecraft:chest run setblock -1553 46 -409 minecraft:barrier
execute if block -1553 45 -410 minecraft:chest run setblock -1553 46 -410 minecraft:barrier
execute if block -1554 45 -409 minecraft:chest run setblock -1554 46 -409 minecraft:barrier
execute if block -1519 45 -384 minecraft:chest run setblock -1519 46 -384 minecraft:barrier
execute if block -1522 45 -384 minecraft:chest run setblock -1522 46 -384 minecraft:barrier
execute if block -1521 45 -382 minecraft:chest run setblock -1521 46 -382 minecraft:barrier
execute if block -1525 45 -382 minecraft:chest run setblock -1525 46 -382 minecraft:barrier
execute if block -1523 45 -381 minecraft:chest run setblock -1523 46 -381 minecraft:barrier
execute if block -1521 45 -379 minecraft:chest run setblock -1521 46 -379 minecraft:barrier
execute if block -1525 45 -379 minecraft:chest run setblock -1525 46 -379 minecraft:barrier
execute if block -1523 45 -377 minecraft:chest run setblock -1523 46 -377 minecraft:barrier
execute if block -1534 45 -324 minecraft:air run setblock -1534 46 -324 minecraft:air
execute if block -1546 45 -324 minecraft:air run setblock -1546 46 -324 minecraft:air
execute if block -1554 45 -321 minecraft:air run setblock -1554 46 -321 minecraft:air
execute if block -1548 45 -341 minecraft:air run setblock -1548 46 -341 minecraft:air
execute if block -1546 45 -341 minecraft:air run setblock -1546 46 -341 minecraft:air
execute if block -1553 45 -329 minecraft:air run setblock -1553 46 -329 minecraft:air
execute if block -1553 45 -327 minecraft:air run setblock -1553 46 -327 minecraft:air
execute if block -1554 45 -328 minecraft:air run setblock -1554 46 -328 minecraft:air
execute if block -1552 45 -328 minecraft:air run setblock -1552 46 -328 minecraft:air
execute if block -1560 45 -332 minecraft:air run setblock -1560 46 -332 minecraft:air
execute if block -1560 45 -330 minecraft:air run setblock -1560 46 -330 minecraft:air
execute if block -1561 45 -331 minecraft:air run setblock -1561 46 -331 minecraft:air
execute if block -1559 45 -331 minecraft:air run setblock -1559 46 -331 minecraft:air
execute if block -1564 45 -337 minecraft:air if block -1564 46 -337 minecraft:barrier run summon minecraft:creeper -1564 45 -337 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:'{"translate":"medabots_server:entity.guard"}',Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
execute if block -1564 45 -337 minecraft:air run setblock -1564 46 -337 minecraft:air
execute if block -1564 45 -335 minecraft:air if block -1564 46 -335 minecraft:barrier run summon minecraft:creeper -1564 45 -335 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:'{"translate":"medabots_server:entity.guard"}',Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
execute if block -1564 45 -335 minecraft:air run setblock -1564 46 -335 minecraft:air
execute if block -1565 45 -336 minecraft:air if block -1565 46 -336 minecraft:barrier run summon minecraft:creeper -1565 45 -336 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:'{"translate":"medabots_server:entity.guard"}',Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
execute if block -1565 45 -336 minecraft:air run setblock -1565 46 -336 minecraft:air
execute if block -1563 45 -336 minecraft:air if block -1563 46 -336 minecraft:barrier run summon minecraft:creeper -1563 45 -336 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:'{"translate":"medabots_server:entity.guard"}',Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
execute if block -1563 45 -336 minecraft:air run setblock -1563 46 -336 minecraft:air
execute if block -1558 45 -346 minecraft:air if block -1558 46 -346 minecraft:barrier run summon minecraft:creeper -1558 45 -346 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:'{"translate":"medabots_server:entity.guard"}',Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard/2_medallar_cents",AbsorptionAmount:10.0f,Health:100.0f}
execute if block -1558 45 -346 minecraft:air run setblock -1558 46 -346 minecraft:air
execute if block -1553 45 -347 minecraft:air run setblock -1553 46 -347 minecraft:air
execute if block -1562 45 -349 minecraft:air run setblock -1562 46 -349 minecraft:air
execute if block -1566 45 -366 minecraft:air run setblock -1566 46 -366 minecraft:air
execute if block -1524 45 -348 minecraft:air run setblock -1524 46 -348 minecraft:air
execute if block -1522 45 -352 minecraft:air run setblock -1522 46 -352 minecraft:air
execute if block -1518 45 -365 minecraft:air run setblock -1518 46 -365 minecraft:air
execute if block -1517 45 -363 minecraft:air run setblock -1517 46 -363 minecraft:air
execute if block -1516 45 -368 minecraft:air run setblock -1516 46 -368 minecraft:air
execute if block -1515 45 -365 minecraft:air run setblock -1515 46 -365 minecraft:air
execute if block -1514 45 -363 minecraft:air run setblock -1514 46 -363 minecraft:air
execute if block -1543 45 -373 minecraft:air if block -1543 46 -373 minecraft:barrier run summon minecraft:creeper -1543 45 -373 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:'{"translate":"medabots_server:entity.guard"}',Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
execute if block -1543 45 -373 minecraft:air run setblock -1543 46 -373 minecraft:air
execute if block -1552 45 -409 minecraft:air if block -1552 46 -409 minecraft:barrier run summon minecraft:tnt -1552 45 -409 {CustomName:'{"translate":"medabots_server:entity.bomb"}',Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1552 45 -409 minecraft:air run setblock -1552 46 -409 minecraft:air
execute if block -1553 45 -408 minecraft:air run setblock -1553 46 -408 minecraft:air
execute if block -1553 45 -409 minecraft:air run setblock -1553 46 -409 minecraft:air
execute if block -1553 45 -410 minecraft:air run setblock -1553 46 -410 minecraft:air
execute if block -1554 45 -409 minecraft:air run setblock -1554 46 -409 minecraft:air
execute if block -1519 45 -384 minecraft:air run setblock -1519 46 -384 minecraft:air
execute if block -1522 45 -384 minecraft:air if block -1522 46 -384 minecraft:barrier run summon minecraft:tnt -1522 45 -384 {CustomName:'{"translate":"medabots_server:entity.bomb"}',Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1522 45 -384 minecraft:air run setblock -1522 46 -384 minecraft:air
execute if block -1521 45 -382 minecraft:air run setblock -1521 46 -382 minecraft:air
execute if block -1525 45 -382 minecraft:air run setblock -1525 46 -382 minecraft:air
execute if block -1523 45 -381 minecraft:air run setblock -1523 46 -381 minecraft:air
execute if block -1521 45 -379 minecraft:air run setblock -1521 46 -379 minecraft:air
execute if block -1525 45 -379 minecraft:air run setblock -1525 46 -379 minecraft:air
execute if block -1523 45 -377 minecraft:air if block -1523 46 -377 minecraft:barrier run summon minecraft:zombie -1523 45 -377 {NoAI:1b,Silent:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:dispenser",Count:1b}],CustomName:'{"translate":"medabots_server:entity.cannon"}',Tags:["delay_4","detect","hostile","killerable","rotate_over_z_negative","cannon"],DeathLootTable:"medabots_server:entities/cannon/2_medallar_cents",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"generic.knockbackResistance",Base:1.0d},{Name:"zombie.spawnReinforcements",Base:0.0d},{Name:"generic.movementSpeed",Base:0.0d},{Name:"generic.maxHealth",Base:100.0d}],PersistenceRequired:1b,AbsorptionAmount:20.0f,Health:100.0f}
execute if block -1523 45 -377 minecraft:air run setblock -1523 46 -377 minecraft:air
execute if block -1521 46 -340 minecraft:iron_door[open=true] if block -1518 45 -334 minecraft:air if entity @s[x=-1523,y=45,z=-340,dx=3,dy=3,dz=3] run function medabots_server:stage/create/grassland_b/second_go_battle/0
execute if entity @e[x=-1520.5,y=45,z=-328.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[x=-1570,y=43,z=-414,dx=62,dy=7,dz=95,scores={Stage=10,Medabot=0..,Battle=1..}]
execute if entity @e[x=-1520.5,y=45,z=-328.5,distance=..0.7,tag=mission,scores={Dialog=81}] run title @s[scores={BattlingMedabots=1}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @e[x=-1520.5,y=45,z=-328.5,distance=..0.7,tag=mission,scores={Dialog=81}] if block -1521 46 -340 minecraft:iron_door[open=false] if entity @s[scores={BattlingMedabots=1}] run setblock -1521 45 -340 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if entity @s[scores={BattlingMedabots=1}] run kill @e[x=-1570,y=43,z=-414,dx=62,dy=7,dz=95,tag=mission]
execute if entity @s[scores={BattlingMedabots=1}] run bossbar set medabots_server:grassland_b/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1538 46 -403 minecraft:iron_door[open=true] if block -1520 46 -389 minecraft:iron_door[open=false] if entity @s[x=-1538,y=45,z=-404,dx=3,dy=3,dz=3] run function medabots_server:stage/create/grassland_b/second_go_battle/1
execute if entity @e[x=-1523.5,y=45,z=-398.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[x=-1570,y=43,z=-414,dx=62,dy=7,dz=95,scores={Stage=10,Medabot=0..,Battle=1..}]
execute if entity @e[x=-1523.5,y=45,z=-398.5,distance=..0.7,tag=mission,scores={Dialog=81}] if block -1531 44 -404 minecraft:yellow_wool if block -1530 44 -399 minecraft:yellow_wool if block -1526 44 -395 minecraft:yellow_wool if block -1519 44 -395 minecraft:yellow_wool if block -1516 44 -398 minecraft:yellow_wool if block -1517 44 -403 minecraft:yellow_wool if block -1521 44 -408 minecraft:yellow_wool if block -1527 44 -407 minecraft:yellow_wool run tag @e[x=-1570,y=43,z=-414,dx=62,dy=7,dz=95,scores={Stage=30,Medabot=0..,Battle=1..},type=!minecraft:player] add dead
execute if entity @e[x=-1523.5,y=45,z=-398.5,distance=..0.7,tag=mission,scores={Dialog=81}] if block -1531 44 -404 minecraft:yellow_wool if block -1530 44 -399 minecraft:yellow_wool if block -1526 44 -395 minecraft:yellow_wool if block -1519 44 -395 minecraft:yellow_wool if block -1516 44 -398 minecraft:yellow_wool if block -1517 44 -403 minecraft:yellow_wool if block -1521 44 -408 minecraft:yellow_wool if block -1527 44 -407 minecraft:yellow_wool run scoreboard players set @a[x=-1570,y=43,z=-414,dx=62,dy=7,dz=95,scores={Stage=30,Medabot=0..,Battle=1..},tag=enemy_medabot] LeaveStage 1
execute if entity @e[x=-1523.5,y=45,z=-398.5,distance=..0.7,tag=mission,scores={Dialog=81}] if block -1531 44 -404 minecraft:yellow_wool if block -1530 44 -399 minecraft:yellow_wool if block -1526 44 -395 minecraft:yellow_wool if block -1519 44 -395 minecraft:yellow_wool if block -1516 44 -398 minecraft:yellow_wool if block -1517 44 -403 minecraft:yellow_wool if block -1521 44 -408 minecraft:yellow_wool if block -1527 44 -407 minecraft:yellow_wool run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @e[x=-1523.5,y=45,z=-398.5,distance=..0.7,tag=mission,scores={Dialog=81}] if block -1538 46 -403 minecraft:iron_door[open=false] if block -1531 44 -404 minecraft:yellow_wool if block -1530 44 -399 minecraft:yellow_wool if block -1526 44 -395 minecraft:yellow_wool if block -1519 44 -395 minecraft:yellow_wool if block -1516 44 -398 minecraft:yellow_wool if block -1517 44 -403 minecraft:yellow_wool if block -1521 44 -408 minecraft:yellow_wool if block -1527 44 -407 minecraft:yellow_wool run setblock -1538 45 -403 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if entity @e[x=-1523.5,y=45,z=-398.5,distance=..0.7,tag=mission,scores={Dialog=81}] if block -1520 46 -389 minecraft:iron_door[open=false] if block -1531 44 -404 minecraft:yellow_wool if block -1530 44 -399 minecraft:yellow_wool if block -1526 44 -395 minecraft:yellow_wool if block -1519 44 -395 minecraft:yellow_wool if block -1516 44 -398 minecraft:yellow_wool if block -1517 44 -403 minecraft:yellow_wool if block -1521 44 -408 minecraft:yellow_wool if block -1527 44 -407 minecraft:yellow_wool run setblock -1520 45 -389 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if entity @e[x=-1523.5,y=45,z=-398.5,distance=..0.7,tag=mission,scores={Dialog=81}] if block -1531 44 -404 minecraft:yellow_wool if block -1530 44 -399 minecraft:yellow_wool if block -1526 44 -395 minecraft:yellow_wool if block -1519 44 -395 minecraft:yellow_wool if block -1516 44 -398 minecraft:yellow_wool if block -1517 44 -403 minecraft:yellow_wool if block -1521 44 -408 minecraft:yellow_wool if block -1527 44 -407 minecraft:yellow_wool run bossbar set medabots_server:grassland_b/robattle players
execute if entity @e[x=-1523.5,y=45,z=-398.5,distance=..0.7,tag=mission,scores={Dialog=81}] if block -1531 44 -404 minecraft:yellow_wool if block -1530 44 -399 minecraft:yellow_wool if block -1526 44 -395 minecraft:yellow_wool if block -1519 44 -395 minecraft:yellow_wool if block -1516 44 -398 minecraft:yellow_wool if block -1517 44 -403 minecraft:yellow_wool if block -1521 44 -408 minecraft:yellow_wool if block -1527 44 -407 minecraft:yellow_wool run kill @e[x=-1570,y=43,z=-414,dx=62,dy=7,dz=95,type=minecraft:area_effect_cloud,tag=mission]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1559 46 -386 minecraft:iron_door[open=true] if entity @s[x=-1560,y=45,z=-389,dx=3,dy=3,dz=3] run function medabots_server:stage/create/grassland_b/second_go_battle/2
execute if entity @e[x=-1570,y=43,z=-414,dx=62,dy=7,dz=95,tag=mr_referee] store result score @s BattlingMedabots if entity @e[x=-1570,y=43,z=-414,dx=62,dy=7,dz=95,scores={Stage=10,Medabot=0..,Battle=1..}]
execute as @e[x=-1570,y=43,z=-414,dx=62,dy=7,dz=95,type=!minecraft:player] unless entity @s[scores={Stage=10}] run scoreboard players set @s Stage 10
execute if entity @e[x=-1570,y=43,z=-414,dx=62,dy=7,dz=95,tag=mr_referee] if entity @s[scores={BattlingMedabots=1}] run function medabots_server:stage/clean_up/grassland_b/second_go
execute if entity @e[x=-1570,y=43,z=-414,dx=62,dy=7,dz=95,tag=mr_referee] run stopsound @s[scores={BattlingMedabots=1}] music
execute if entity @e[x=-1570,y=43,z=-414,dx=62,dy=7,dz=95,tag=mr_referee] run playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1}] -1540 51 -367 14
execute if entity @e[x=-1570,y=43,z=-414,dx=62,dy=7,dz=95,tag=mr_referee] run scoreboard players set @s[scores={BattlingMedabots=1}] Battle 0
execute if entity @e[x=-1570,y=43,z=-414,dx=62,dy=7,dz=95,tag=mr_referee] run scoreboard players set @s[scores={BattlingMedabots=1}] MusicType 1
execute if entity @e[x=-1570,y=43,z=-414,dx=62,dy=7,dz=95,tag=mr_referee] run scoreboard players set @s[scores={BattlingMedabots=1}] Music 299
execute if entity @e[x=-1570,y=43,z=-414,dx=62,dy=7,dz=95,tag=mr_referee] run advancement grant @s[scores={BattlingMedabots=1}] only medabots_server:stages/wave_1/grassland_b_second_go
execute if entity @e[x=-1570,y=43,z=-414,dx=62,dy=7,dz=95,tag=mr_referee] run teleport @s[scores={BattlingMedabots=1}] -1540 51 -367 -180 0
execute if entity @s[scores={BattlingMedabots=1}] run bossbar set medabots_server:grassland_b/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1543 45 -327 minecraft:structure_block run setblock -1543 46 -327 minecraft:redstone_block
execute if block -1560 45 -341 minecraft:structure_block run setblock -1560 46 -341 minecraft:redstone_block
execute if block -1556 45 -368 minecraft:structure_block run setblock -1556 46 -368 minecraft:redstone_block
execute if block -1521 45 -340 minecraft:structure_block run setblock -1521 46 -340 minecraft:redstone_block
execute if block -1544 45 -361 minecraft:structure_block run setblock -1543 45 -361 minecraft:redstone_block
execute if block -1543 45 -361 minecraft:redstone_block run setblock -1543 45 -361 minecraft:air
execute if block -1544 45 -363 minecraft:structure_block run setblock -1544 46 -363 minecraft:redstone_block
execute if block -1559 45 -385 minecraft:structure_block run setblock -1559 45 -384 minecraft:redstone_block
execute if block -1559 45 -384 minecraft:redstone_block run setblock -1559 45 -384 minecraft:air
execute if block -1559 45 -386 minecraft:structure_block run setblock -1559 45 -387 minecraft:redstone_block
execute if block -1559 45 -387 minecraft:redstone_block run setblock -1559 45 -387 minecraft:air
execute if block -1538 45 -403 minecraft:structure_block run setblock -1538 46 -403 minecraft:redstone_block
execute if block -1520 45 -389 minecraft:structure_block run setblock -1520 46 -389 minecraft:redstone_block