execute if entity @s[scores={Death=1..}] run function medabots_server:stage/clean_up/jungle_b/second_go
execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/jungle_b/second_go
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute unless entity @e[x=-1666,y=0,z=-477,dx=94,dy=50,dz=92,scores={Medabot=0..,Battle=1..2,Stage=12},tag=enemy_medabot] run bossbar set medabots_server:jungle_b/time players @s
execute unless entity @e[x=-1666,y=0,z=-477,dx=94,dy=50,dz=92,scores={Medabot=0..,Battle=1..2,Stage=12},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:jungle_b/time value
execute unless entity @e[x=-1666,y=0,z=-477,dx=94,dy=50,dz=92,scores={Medabot=0..,Battle=1..2,Stage=12},tag=enemy_medabot] store result bossbar medabots_server:jungle_b/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[x=-1666,y=0,z=-477,dx=94,dy=50,dz=92,scores={Medabot=0..,Battle=1..2,Stage=12},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:jungle_b/robattle value
execute if entity @e[x=-1666,y=0,z=-477,dx=94,dy=50,dz=92,scores={Medabot=0..,Battle=1..2,Stage=12},tag=enemy_medabot] store result bossbar medabots_server:jungle_b/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[x=-1666,y=0,z=-477,dx=94,dy=50,dz=92,scores={Medabot=0..,Battle=1..2,Stage=12},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1666,y=0,z=-477,dx=94,dy=50,dz=92,tag=mission] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[x=-1666,y=0,z=-477,dx=94,dy=50,dz=92,scores={Medabot=0..,Battle=1..2,Stage=12},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1666,y=0,z=-477,dx=94,dy=50,dz=92,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if block -1645 44 -409 minecraft:blue_wool if block -1629 44 -420 minecraft:blue_wool if block -1629 44 -421 minecraft:yellow_wool run tag @e[x=-1627.5,y=45,z=-419.5,distance=..0.7,tag=alarm,tag=!enabled] add enabled
execute if block -1645 44 -409 minecraft:light_blue_wool run tag @e[x=-1627.5,y=45,z=-419.5,distance=..0.7,tag=alarm,tag=enabled] remove enabled
execute if block -1629 44 -420 minecraft:light_blue_wool run tag @e[x=-1627.5,y=45,z=-419.5,distance=..0.7,tag=alarm,tag=enabled] remove enabled
execute if block -1629 44 -421 minecraft:orange_wool run tag @e[x=-1627.5,y=45,z=-419.5,distance=..0.7,tag=alarm,tag=enabled] remove enabled
execute if block -1579 44 -434 minecraft:light_blue_wool run tag @e[x=-1579.5,y=45,z=-459.5,distance=..0.7,tag=action_floor,tag=!enabled] add enabled
execute if block -1580 44 -441 minecraft:light_blue_wool run tag @e[x=-1579.5,y=45,z=-459.5,distance=..0.7,tag=action_floor,tag=!enabled] add enabled
execute if block -1580 44 -449 minecraft:light_blue_wool run tag @e[x=-1579.5,y=45,z=-459.5,distance=..0.7,tag=action_floor,tag=!enabled] add enabled
execute if block -1580 44 -452 minecraft:light_blue_wool run tag @e[x=-1579.5,y=45,z=-459.5,distance=..0.7,tag=action_floor,tag=!enabled] add enabled
execute if block -1580 44 -456 minecraft:light_blue_wool run tag @e[x=-1579.5,y=45,z=-459.5,distance=..0.7,tag=action_floor,tag=!enabled] add enabled
execute if block -1579 44 -434 minecraft:blue_wool if block -1580 44 -441 minecraft:blue_wool if block -1580 44 -449 minecraft:blue_wool if block -1580 44 -452 minecraft:blue_wool if block -1580 44 -456 minecraft:blue_wool run tag @e[x=-1579.5,y=45,z=-459.5,distance=..0.7,tag=action_floor,tag=enabled] remove enabled
execute if block -1599 44 -453 minecraft:lime_wool run tag @e[x=-1601.5,y=45,z=-471.5,distance=..0.7,tag=action_floor,tag=!enabled] add enabled
execute if block -1644 45 -402 minecraft:chest run setblock -1644 46 -402 minecraft:barrier
execute if block -1641 45 -409 minecraft:chest run setblock -1641 46 -409 minecraft:barrier
execute if block -1647 45 -406 minecraft:chest run setblock -1647 46 -406 minecraft:barrier
execute if block -1653 45 -402 minecraft:chest run setblock -1653 46 -402 minecraft:barrier
execute if block -1651 45 -405 minecraft:chest run setblock -1651 46 -405 minecraft:barrier
execute if block -1653 45 -405 minecraft:chest run setblock -1653 46 -405 minecraft:barrier
execute if block -1653 45 -406 minecraft:chest run setblock -1653 46 -406 minecraft:barrier
execute if block -1653 45 -407 minecraft:chest run setblock -1653 46 -407 minecraft:barrier
execute if block -1661 45 -406 minecraft:chest run setblock -1661 46 -406 minecraft:barrier
execute if block -1654 45 -433 minecraft:chest run setblock -1654 46 -433 minecraft:barrier
execute if block -1654 45 -437 minecraft:chest run setblock -1654 46 -437 minecraft:barrier
execute if block -1659 45 -426 minecraft:chest run setblock -1659 46 -426 minecraft:barrier
execute if block -1662 45 -432 minecraft:chest run setblock -1662 46 -432 minecraft:barrier
execute if block -1663 45 -431 minecraft:chest run setblock -1663 46 -431 minecraft:barrier
execute if block -1663 45 -430 minecraft:chest run setblock -1663 46 -430 minecraft:barrier
execute if block -1629 45 -421 minecraft:chest run setblock -1629 46 -421 minecraft:barrier
execute if block -1629 45 -420 minecraft:chest run setblock -1629 46 -420 minecraft:barrier
execute if block -1629 45 -413 minecraft:chest run setblock -1629 46 -413 minecraft:barrier
execute if block -1627 45 -413 minecraft:chest run setblock -1627 46 -413 minecraft:barrier
execute if block -1624 45 -422 minecraft:chest run setblock -1624 46 -422 minecraft:barrier
execute if block -1622 45 -422 minecraft:chest run setblock -1622 46 -422 minecraft:barrier
execute if block -1619 45 -424 minecraft:chest run setblock -1619 46 -424 minecraft:barrier
execute if block -1616 45 -424 minecraft:chest run setblock -1616 46 -424 minecraft:barrier
execute if block -1613 45 -426 minecraft:chest run setblock -1613 46 -426 minecraft:barrier
execute if block -1610 45 -429 minecraft:chest run setblock -1610 46 -429 minecraft:barrier
execute if block -1607 45 -429 minecraft:chest run setblock -1607 46 -429 minecraft:barrier
execute if block -1612 45 -435 minecraft:chest run setblock -1612 46 -435 minecraft:barrier
execute if block -1613 45 -435 minecraft:chest run setblock -1613 46 -435 minecraft:barrier
execute if block -1589 45 -428 minecraft:chest run setblock -1589 46 -428 minecraft:barrier
execute if block -1589 45 -427 minecraft:chest run setblock -1589 46 -427 minecraft:barrier
execute if block -1595 45 -448 minecraft:chest run setblock -1595 46 -448 minecraft:barrier
execute if block -1594 45 -448 minecraft:chest run setblock -1594 46 -448 minecraft:barrier
execute if block -1595 45 -447 minecraft:chest run setblock -1595 46 -447 minecraft:barrier
execute if block -1594 45 -447 minecraft:chest run setblock -1594 46 -447 minecraft:barrier
execute if block -1596 45 -474 minecraft:chest run setblock -1596 46 -474 minecraft:barrier
execute if block -1579 45 -475 minecraft:chest run setblock -1579 46 -475 minecraft:barrier
execute if block -1629 45 -474 minecraft:chest run setblock -1629 46 -474 minecraft:barrier
execute if block -1630 45 -474 minecraft:chest run setblock -1630 46 -474 minecraft:barrier
execute if block -1629 45 -475 minecraft:chest run setblock -1629 46 -475 minecraft:barrier
execute if block -1630 45 -475 minecraft:chest run setblock -1630 46 -475 minecraft:barrier
execute if block -1631 45 -475 minecraft:chest run setblock -1631 46 -475 minecraft:barrier
execute if block -1644 45 -402 minecraft:air run setblock -1644 46 -402 minecraft:air
execute if block -1641 45 -409 minecraft:air run setblock -1641 46 -409 minecraft:air
execute if block -1647 45 -406 minecraft:air run setblock -1647 46 -406 minecraft:air
execute if block -1653 45 -402 minecraft:air run setblock -1653 46 -402 minecraft:air
execute if block -1651 45 -405 minecraft:air run setblock -1651 46 -405 minecraft:air
execute if block -1653 45 -405 minecraft:air run setblock -1653 46 -405 minecraft:air
execute if block -1653 45 -406 minecraft:air run setblock -1653 46 -406 minecraft:air
execute if block -1653 45 -407 minecraft:air run setblock -1653 46 -407 minecraft:air
execute if block -1661 45 -406 minecraft:air if block -1661 46 -406 minecraft:barrier run summon minecraft:zombie -1661 45 -406 {NoAI:1b,Silent:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:dispenser",Count:1b}],CustomName:'{"translate":"medabots_server:entity.cannon"}',Tags:["delay_4","detect","hostile","killerable","rotate_over_x_positive","cannon"],DeathLootTable:"medabots_server:entities/cannon",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"generic.knockbackResistance",Base:1.0d},{Name:"zombie.spawnReinforcements",Base:0.0d},{Name:"generic.movementSpeed",Base:0.0d},{Name:"generic.maxHealth",Base:100.0d}],PersistenceRequired:1b,AbsorptionAmount:20.0f,Health:100.0f}
execute if block -1661 45 -406 minecraft:air run setblock -1661 46 -406 minecraft:air
execute if block -1654 45 -433 minecraft:air run setblock -1654 46 -433 minecraft:air
execute if block -1654 45 -437 minecraft:air if block -1654 46 -437 minecraft:barrier run summon minecraft:creeper -1654 45 -437 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:'{"translate":"medabots_server:entity.guard"}',Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
execute if block -1654 45 -437 minecraft:air run setblock -1654 46 -437 minecraft:air
execute if block -1659 45 -426 minecraft:air if block -1659 46 -426 minecraft:barrier run summon minecraft:creeper -1659 45 -426 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:'{"translate":"medabots_server:entity.guard"}',Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
execute if block -1659 45 -426 minecraft:air run setblock -1659 46 -426 minecraft:air
execute if block -1662 45 -432 minecraft:air run setblock -1662 46 -432 minecraft:air
execute if block -1663 45 -431 minecraft:air run setblock -1663 46 -431 minecraft:air
execute if block -1663 45 -430 minecraft:air run setblock -1663 46 -430 minecraft:air
execute if block -1629 45 -421 minecraft:air run setblock -1629 46 -421 minecraft:air
execute if block -1629 45 -420 minecraft:air run setblock -1629 46 -420 minecraft:air
execute if block -1629 45 -413 minecraft:air run setblock -1629 46 -413 minecraft:air
execute if block -1627 45 -413 minecraft:air run setblock -1627 46 -413 minecraft:air
execute if block -1624 45 -422 minecraft:air run setblock -1624 46 -422 minecraft:air
execute if block -1622 45 -422 minecraft:air run setblock -1622 46 -422 minecraft:air
execute if block -1619 45 -424 minecraft:air run setblock -1619 46 -424 minecraft:air
execute if block -1616 45 -424 minecraft:air run setblock -1616 46 -424 minecraft:air
execute if block -1613 45 -426 minecraft:air run setblock -1613 46 -426 minecraft:air
execute if block -1610 45 -429 minecraft:air run setblock -1610 46 -429 minecraft:air
execute if block -1607 45 -429 minecraft:air run setblock -1607 46 -429 minecraft:air
execute if block -1612 45 -435 minecraft:air run setblock -1612 46 -435 minecraft:air
execute if block -1613 45 -435 minecraft:air run setblock -1613 46 -435 minecraft:air
execute if block -1589 45 -428 minecraft:air run setblock -1589 46 -428 minecraft:air
execute if block -1589 45 -427 minecraft:air run setblock -1589 46 -427 minecraft:air
execute if block -1595 45 -448 minecraft:air if block -1595 46 -448 minecraft:barrier run summon minecraft:tnt -1595 45 -448 {CustomName:'{"translate":"medabots_server:entity.bomb"}',Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1595 45 -448 minecraft:air run setblock -1595 46 -448 minecraft:air
execute if block -1594 45 -448 minecraft:air if block -1594 46 -448 minecraft:barrier run summon minecraft:tnt -1594 45 -448 {CustomName:'{"translate":"medabots_server:entity.bomb"}',Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1594 45 -448 minecraft:air run setblock -1594 46 -448 minecraft:air
execute if block -1595 45 -447 minecraft:air if block -1595 46 -447 minecraft:barrier run summon minecraft:tnt -1595 45 -447 {CustomName:'{"translate":"medabots_server:entity.bomb"}',Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1595 45 -447 minecraft:air run setblock -1595 46 -447 minecraft:air
execute if block -1594 45 -447 minecraft:air if block -1594 46 -447 minecraft:barrier run summon minecraft:tnt -1594 45 -447 {CustomName:'{"translate":"medabots_server:entity.bomb"}',Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1594 45 -447 minecraft:air run setblock -1594 46 -447 minecraft:air
execute if block -1596 45 -474 minecraft:air if block -1596 46 -474 minecraft:barrier run summon minecraft:tnt -1596 45 -474 {CustomName:'{"translate":"medabots_server:entity.bomb"}',Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1596 45 -474 minecraft:air run setblock -1596 46 -474 minecraft:air
execute if block -1579 45 -475 minecraft:air run setblock -1579 46 -475 minecraft:air
execute if block -1629 45 -474 minecraft:air run setblock -1629 46 -474 minecraft:air
execute if block -1630 45 -474 minecraft:air run setblock -1630 46 -474 minecraft:air
execute if block -1629 45 -475 minecraft:air if block -1629 46 -475 minecraft:barrier run summon minecraft:tnt -1629 45 -475 {CustomName:'{"translate":"medabots_server:entity.bomb"}',Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1629 45 -475 minecraft:air run setblock -1629 46 -475 minecraft:air
execute if block -1630 45 -475 minecraft:air run setblock -1630 46 -475 minecraft:air
execute if block -1631 45 -475 minecraft:air run setblock -1631 46 -475 minecraft:air
execute if block -1590 46 -412 minecraft:iron_door[open=true] if block -1579 46 -417 minecraft:iron_door[open=false] if entity @s[x=-1592,y=45,z=-412,dx=3,dy=3,dz=3] run function medabots_server:stage/create/jungle_b/second_go_battle/0
execute if entity @e[x=-1583.5,y=45,z=-408.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[x=-1666,y=0,z=-477,dx=94,dy=50,dz=92,scores={Stage=12,Medabot=0..,Battle=1..}]
execute if entity @s[scores={BattlingMedabots=1,Death=0}] as @e[x=-1583.5,y=45,z=-408.5,distance=..0.7,tag=mission,scores={Dialog=81}] unless entity @e[tag=!mission,tag=run_until_the_time_is_up,scores={Stage=12}] run tag @s remove run_until_the_time_is_up
execute if entity @e[x=-1583.5,y=45,z=-408.5,distance=..0.7,tag=mission,tag=!run_until_the_time_is_up] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @e[x=-1583.5,y=45,z=-408.5,distance=..0.7,tag=mission,tag=!run_until_the_time_is_up] run setblock -1590 45 -412 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if entity @e[x=-1583.5,y=45,z=-408.5,distance=..0.7,tag=mission,tag=!run_until_the_time_is_up] run setblock -1579 45 -417 minecraft:structure_block[mode=load]{name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if entity @e[x=-1583.5,y=45,z=-408.5,distance=..0.7,tag=mission,tag=!run_until_the_time_is_up] run bossbar set medabots_server:jungle_b/robattle players
kill @e[x=-1583.5,y=45,z=-408.5,distance=..0.7,tag=mission,tag=!run_until_the_time_is_up]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1601 46 -468 minecraft:iron_door[open=true] if block -1606 46 -457 minecraft:iron_door[open=false] if entity @s[x=-1604,y=45,z=-470,dx=3,dy=3,dz=3] run function medabots_server:stage/create/jungle_b/second_go_battle/1
execute if entity @e[x=-1608.5,y=45,z=-462.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[x=-1666,y=0,z=-477,dx=94,dy=50,dz=92,scores={Stage=12,Medabot=0..,Battle=1..}]
execute if entity @s[scores={BattlingMedabots=1,Death=0}] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,Death=0}] run setblock -1601 45 -468 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if entity @s[scores={BattlingMedabots=1,Death=0}] run setblock -1606 45 -457 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if entity @s[scores={BattlingMedabots=1,Death=0}] run setblock -1616 45 -464 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if entity @s[scores={BattlingMedabots=1,Death=0}] run bossbar set medabots_server:jungle_b/robattle players
execute if entity @s[scores={BattlingMedabots=1,Death=0}] run kill @e[x=-1608.5,y=45,z=-462.5,distance=..0.7,tag=mission,scores={Dialog=81}]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1635 46 -451 minecraft:iron_door[open=true] if entity @s[x=-1638,y=45,z=-453,dx=3,dy=3,dz=3] run function medabots_server:stage/create/jungle_b/second_go_battle/2
execute if entity @e[x=-1666,y=0,z=-477,dx=94,dy=50,dz=92,tag=mr_referee] store result score @s BattlingMedabots if entity @e[x=-1666,y=0,z=-477,dx=94,dy=50,dz=92,scores={Stage=12,Medabot=0..,Battle=1..}]
execute as @e[x=-1666,y=0,z=-477,dx=94,dy=50,dz=92,type=!minecraft:player] unless entity @s[scores={Stage=12}] run scoreboard players set @s Stage 12
execute if entity @s[scores={BattlingMedabots=1,Death=0}] run function medabots_server:stage/clean_up/jungle_b/second_go
stopsound @s[scores={BattlingMedabots=1,Death=0}] music
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1,Death=0}] -1620 51 -431 14
scoreboard players set @s[scores={BattlingMedabots=1,Death=0}] Battle 0
scoreboard players set @s[scores={BattlingMedabots=1,Death=0}] MusicType 1
scoreboard players set @s[scores={BattlingMedabots=1,Death=0}] Music 299
advancement grant @s[scores={BattlingMedabots=1,Death=0}] only medabots_server:stages/wave_1/jungle_b_second_go
teleport @s[scores={BattlingMedabots=1,Death=0}] -1620 51 -431 -180 0
execute if entity @s[scores={BattlingMedabots=1,Death=0}] run bossbar set medabots_server:jungle_b/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1590 45 -412 minecraft:structure_block run setblock -1590 46 -412 minecraft:redstone_block
execute if block -1579 45 -417 minecraft:structure_block run setblock -1579 46 -417 minecraft:redstone_block
execute if block -1601 45 -468 minecraft:structure_block run setblock -1601 46 -468 minecraft:redstone_block
execute if block -1606 45 -457 minecraft:structure_block run setblock -1606 46 -457 minecraft:redstone_block
execute if block -1616 45 -464 minecraft:structure_block run setblock -1616 46 -464 minecraft:redstone_block
execute if block -1635 45 -451 minecraft:structure_block run setblock -1635 46 -451 minecraft:redstone_block