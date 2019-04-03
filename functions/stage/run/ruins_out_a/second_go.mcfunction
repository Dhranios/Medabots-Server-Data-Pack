execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/ruins_out_a/second_go
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute unless entity @e[x=-1634,y=42,z=-315,dx=127,dy=7,dz=64,scores={Medabot=0..,Battle=1..2,Stage=7},tag=enemy_medabot] run bossbar set medabots_server:ruins_out_a/time players @s
execute unless entity @e[x=-1634,y=42,z=-315,dx=127,dy=7,dz=64,scores={Medabot=0..,Battle=1..2,Stage=7},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:ruins_out_a/time value
execute unless entity @e[x=-1634,y=42,z=-315,dx=127,dy=7,dz=64,scores={Medabot=0..,Battle=1..2,Stage=7},tag=enemy_medabot] store result bossbar medabots_server:ruins_out_a/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[x=-1634,y=42,z=-315,dx=127,dy=7,dz=64,scores={Medabot=0..,Battle=1..2,Stage=7},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:ruins_out_a/robattle value
execute if entity @e[x=-1634,y=42,z=-315,dx=127,dy=7,dz=64,scores={Medabot=0..,Battle=1..2,Stage=7},tag=enemy_medabot] store result bossbar medabots_server:ruins_out_a/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[x=-1634,y=42,z=-315,dx=127,dy=7,dz=64,scores={Medabot=0..,Battle=1..2,Stage=7},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1634,y=42,z=-315,dx=127,dy=7,dz=64,tag=mission] at @s run function medabots_server:stage/mission_time_up
scoreboard players reset #temp Time
execute if block -1513 46 -296 minecraft:iron_door[open=false] if block -1554 44 -284 minecraft:lime_wool run setblock -1513 45 -296 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1514 46 -296 minecraft:iron_door[open=false] if block -1581 44 -284 minecraft:lime_wool run setblock -1514 45 -296 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1568 46 -310 minecraft:iron_door[open=false] if block -1511 44 -296 minecraft:lime_wool run setblock -1568 45 -310 minecraft:structure_block[mode=load]{name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1568 46 -264 minecraft:iron_door[open=false] if block -1567 44 -266 minecraft:lime_wool run setblock -1568 45 -264 minecraft:structure_block[mode=load]{name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1554 44 -258 minecraft:light_blue_wool run tag @e[x=-1553.5,y=45,z=-256.5,distance=..0.7,tag=hammer_punch] add enabled
execute if block -1554 44 -258 minecraft:blue_wool run tag @e[x=-1553.5,y=45,z=-256.5,distance=..0.7,tag=hammer_punch] remove enabled
execute if block -1552 44 -260 minecraft:light_blue_wool run tag @e[x=-1551.5,y=45,z=-258.5,distance=..0.7,tag=hammer_punch] add enabled
execute if block -1552 44 -260 minecraft:blue_wool run tag @e[x=-1551.5,y=45,z=-258.5,distance=..0.7,tag=hammer_punch] remove enabled
execute if block -1511 44 -295 minecraft:light_blue_wool run tag @e[x=-1507.5,y=45,z=-291.5,distance=..0.7,tag=laser_trap] add enabled
execute if block -1511 44 -295 minecraft:blue_wool run tag @e[x=-1507.5,y=45,z=-291.5,distance=..0.7,tag=laser_trap] remove enabled
execute if block -1511 44 -295 minecraft:light_blue_wool run tag @e[x=-1507.5,y=45,z=-299.5,distance=..0.7,tag=laser_trap] add enabled
execute if block -1511 44 -295 minecraft:blue_wool run tag @e[x=-1507.5,y=45,z=-299.5,distance=..0.7,tag=laser_trap] remove enabled
execute if block -1511 44 -295 minecraft:light_blue_wool run tag @e[x=-1514.5,y=45,z=-293.5,distance=..0.7,tag=alarm] add enabled
execute if block -1511 44 -295 minecraft:blue_wool run tag @e[x=-1514.5,y=45,z=-293.5,distance=..0.7,tag=alarm] remove enabled
execute if block -1511 44 -295 minecraft:light_blue_wool run tag @e[x=-1514.5,y=45,z=-296.5,distance=..0.7,tag=alarm] add enabled
execute if block -1511 44 -295 minecraft:blue_wool run tag @e[x=-1514.5,y=45,z=-296.5,distance=..0.7,tag=alarm] remove enabled
execute if block -1578 44 -301 minecraft:yellow_wool run scoreboard players remove @e[x=-1577.5,y=45,z=-301.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1578 44 -301 minecraft:yellow_wool run tag @e[x=-1577.5,y=45,z=-301.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1578 44 -301 minecraft:yellow_wool run scoreboard players add @e[x=-1577.5,y=45,z=-282.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1578 44 -301 minecraft:yellow_wool run tag @e[x=-1577.5,y=45,z=-282.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1578 44 -301 minecraft:orange_wool run scoreboard players add @e[x=-1577.5,y=45,z=-301.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if block -1578 44 -301 minecraft:orange_wool run tag @e[x=-1577.5,y=45,z=-301.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if block -1578 44 -301 minecraft:orange_wool run scoreboard players remove @e[x=-1577.5,y=45,z=-282.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if block -1578 44 -301 minecraft:orange_wool run tag @e[x=-1577.5,y=45,z=-282.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if block -1595 44 -264 minecraft:lime_wool run tag @e[x=-1599.5,y=45,z=-263.5,distance=..0.7,tag=spring_wall] add enabled
execute if block -1624 46 -284 minecraft:iron_door[open=false] if block -1602 44 -286 minecraft:lime_wool run tag @e[x=-1601.5,y=45,z=-301.5,distance=..0.7,tag=press_wall] add extend
execute if block -1624 46 -284 minecraft:iron_door[open=true] run tag @e[x=-1601.5,y=45,z=-301.5,distance=..0.7,tag=press_wall] remove extend
execute if block -1624 46 -284 minecraft:iron_door[open=true] run tag @e[x=-1601.5,y=45,z=-301.5,distance=..0.7,tag=press_wall] add retract
execute if block -1624 46 -284 minecraft:iron_door[open=false] if block -1602 44 -286 minecraft:lime_wool run tag @e[x=-1596.5,y=45,z=-284.5,distance=..0.7,tag=press_wall] add extend
execute if block -1624 46 -284 minecraft:iron_door[open=true] run tag @e[x=-1596.5,y=45,z=-284.5,distance=..0.7,tag=press_wall] remove extend
execute if block -1624 46 -284 minecraft:iron_door[open=true] run tag @e[x=-1596.5,y=45,z=-284.5,distance=..0.7,tag=press_wall] add retract
execute if block -1609 44 -283 minecraft:orange_wool run tag @e[x=-1620.5,y=45,z=-253.5,distance=..0.7,tag=press_wall] add extend
execute if block -1609 44 -283 minecraft:yellow_wool run tag @e[x=-1620.5,y=45,z=-253.5,distance=..0.7,tag=press_wall] remove extend
execute if block -1609 44 -283 minecraft:yellow_wool run tag @e[x=-1620.5,y=45,z=-253.5,distance=..0.7,tag=press_wall] add retract
execute if block -1559 45 -284 minecraft:chest run setblock -1559 46 -284 minecraft:barrier
execute if block -1549 45 -284 minecraft:chest run setblock -1549 46 -284 minecraft:barrier
execute if block -1543 45 -256 minecraft:chest run setblock -1543 46 -256 minecraft:barrier
execute if block -1541 45 -256 minecraft:chest run setblock -1541 46 -256 minecraft:barrier
execute if block -1539 45 -256 minecraft:chest run setblock -1539 46 -256 minecraft:barrier
execute if block -1537 45 -256 minecraft:chest run setblock -1537 46 -256 minecraft:barrier
execute if block -1542 45 -264 minecraft:chest run setblock -1542 46 -264 minecraft:barrier
execute if block -1544 45 -273 minecraft:chest run setblock -1544 46 -273 minecraft:barrier
execute if block -1540 45 -273 minecraft:chest run setblock -1540 46 -273 minecraft:barrier
execute if block -1534 45 -266 minecraft:chest run setblock -1534 46 -266 minecraft:barrier
execute if block -1532 45 -270 minecraft:chest run setblock -1532 46 -270 minecraft:barrier
execute if block -1534 45 -276 minecraft:chest run setblock -1534 46 -276 minecraft:barrier
execute if block -1522 45 -280 minecraft:chest run setblock -1522 46 -280 minecraft:barrier
execute if block -1522 45 -281 minecraft:chest run setblock -1522 46 -281 minecraft:barrier
execute if block -1523 45 -280 minecraft:chest run setblock -1523 46 -280 minecraft:barrier
execute if block -1523 45 -281 minecraft:chest run setblock -1523 46 -281 minecraft:barrier
execute if block -1511 45 -293 minecraft:chest run setblock -1511 46 -293 minecraft:barrier
execute if block -1511 45 -298 minecraft:chest run setblock -1511 46 -298 minecraft:barrier
execute if block -1508 45 -290 minecraft:chest run setblock -1508 46 -290 minecraft:barrier
execute if block -1508 45 -301 minecraft:chest run setblock -1508 46 -301 minecraft:barrier
execute if block -1529 45 -290 minecraft:chest run setblock -1529 46 -290 minecraft:barrier
execute if block -1533 45 -287 minecraft:chest run setblock -1533 46 -287 minecraft:barrier
execute if block -1544 45 -286 minecraft:chest run setblock -1544 46 -286 minecraft:barrier
execute if block -1543 45 -300 minecraft:chest run setblock -1543 46 -300 minecraft:barrier
execute if block -1541 45 -293 minecraft:chest run setblock -1541 46 -293 minecraft:barrier
execute if block -1544 45 -293 minecraft:chest run setblock -1544 46 -293 minecraft:barrier
execute if block -1543 45 -309 minecraft:chest run setblock -1543 46 -309 minecraft:barrier
execute if block -1542 45 -310 minecraft:chest run setblock -1542 46 -310 minecraft:barrier
execute if block -1541 45 -309 minecraft:chest run setblock -1541 46 -309 minecraft:barrier
execute if block -1567 45 -265 minecraft:chest run setblock -1567 46 -265 minecraft:barrier
execute if block -1592 45 -309 minecraft:chest run setblock -1592 46 -309 minecraft:barrier
execute if block -1593 45 -310 minecraft:chest run setblock -1593 46 -310 minecraft:barrier
execute if block -1594 45 -309 minecraft:chest run setblock -1594 46 -309 minecraft:barrier
execute if block -1576 45 -284 minecraft:chest run setblock -1576 46 -284 minecraft:barrier
execute if block -1586 45 -284 minecraft:chest run setblock -1586 46 -284 minecraft:barrier
execute if block -1575 45 -262 minecraft:chest run setblock -1575 46 -262 minecraft:barrier
execute if block -1578 45 -262 minecraft:chest run setblock -1578 46 -262 minecraft:barrier
execute if block -1581 45 -257 minecraft:chest run setblock -1581 46 -257 minecraft:barrier
execute if block -1586 45 -258 minecraft:chest run setblock -1586 46 -258 minecraft:barrier
execute if block -1592 45 -256 minecraft:chest run setblock -1592 46 -256 minecraft:barrier
execute if block -1594 45 -260 minecraft:chest run setblock -1594 46 -260 minecraft:barrier
execute if block -1559 45 -284 minecraft:air if block -1559 46 -284 minecraft:barrier run summon minecraft:creeper -1559 45 -284 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:'{"translate":"medabots_server:entity.guard"}',Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
execute if block -1559 45 -284 minecraft:air run setblock -1559 46 -284 minecraft:air
execute if block -1549 45 -284 minecraft:air if block -1549 46 -284 minecraft:barrier run summon minecraft:creeper -1549 45 -284 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:'{"translate":"medabots_server:entity.guard"}',Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
execute if block -1549 45 -284 minecraft:air run setblock -1549 46 -284 minecraft:air
execute if block -1543 45 -256 minecraft:air run setblock -1543 46 -256 minecraft:air
execute if block -1541 45 -256 minecraft:air if block -1541 46 -256 minecraft:barrier run summon minecraft:creeper -1541 45 -256 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:'{"translate":"medabots_server:entity.guard"}',Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
execute if block -1541 45 -256 minecraft:air run setblock -1541 46 -256 minecraft:air
execute if block -1539 45 -256 minecraft:air run setblock -1539 46 -256 minecraft:air
execute if block -1537 45 -256 minecraft:air run setblock -1537 46 -256 minecraft:air
execute if block -1542 45 -264 minecraft:air run setblock -1542 46 -264 minecraft:air
execute if block -1544 45 -273 minecraft:air run setblock -1544 46 -273 minecraft:air
execute if block -1540 45 -273 minecraft:air run setblock -1540 46 -273 minecraft:air
execute if block -1534 45 -266 minecraft:air run setblock -1534 46 -266 minecraft:air
execute if block -1532 45 -270 minecraft:air run setblock -1532 46 -270 minecraft:air
execute if block -1534 45 -276 minecraft:air run setblock -1534 46 -276 minecraft:air
execute if block -1522 45 -280 minecraft:air run setblock -1522 46 -280 minecraft:air
execute if block -1522 45 -281 minecraft:air if block -1522 46 -281 minecraft:barrier run summon minecraft:tnt -1522 45 -281 {CustomName:'{"translate":"medabots_server:entity.bomb"}',Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1522 45 -281 minecraft:air run setblock -1522 46 -281 minecraft:air
execute if block -1523 45 -280 minecraft:air run setblock -1523 46 -280 minecraft:air
execute if block -1523 45 -281 minecraft:air run setblock -1523 46 -281 minecraft:air
execute if block -1511 45 -293 minecraft:air if block -1511 46 -293 minecraft:barrier run summon minecraft:creeper -1511 45 -293 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:'{"translate":"medabots_server:entity.guard"}',Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
execute if block -1511 45 -293 minecraft:air run setblock -1511 46 -293 minecraft:air
execute if block -1511 45 -298 minecraft:air if block -1511 46 -298 minecraft:barrier run summon minecraft:creeper -1511 45 -298 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:'{"translate":"medabots_server:entity.guard"}',Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
execute if block -1511 45 -298 minecraft:air run setblock -1511 46 -298 minecraft:air
execute if block -1508 45 -290 minecraft:air run setblock -1508 46 -290 minecraft:air
execute if block -1508 45 -301 minecraft:air run setblock -1508 46 -301 minecraft:air
execute if block -1529 45 -290 minecraft:air run setblock -1529 46 -290 minecraft:air
execute if block -1533 45 -287 minecraft:air if block -1533 46 -287 minecraft:barrier run summon minecraft:creeper -1533 45 -287 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:'{"translate":"medabots_server:entity.guard"}',Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
execute if block -1533 45 -287 minecraft:air run setblock -1533 46 -287 minecraft:air
execute if block -1544 45 -286 minecraft:air run setblock -1544 46 -286 minecraft:air
execute if block -1543 45 -300 minecraft:air if block -1543 46 -300 minecraft:barrier run summon minecraft:creeper -1543 45 -300 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:'{"translate":"medabots_server:entity.guard"}',Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
execute if block -1543 45 -300 minecraft:air run setblock -1543 46 -300 minecraft:air
execute if block -1541 45 -293 minecraft:air run setblock -1541 46 -293 minecraft:air
execute if block -1544 45 -293 minecraft:air run setblock -1544 46 -293 minecraft:air
execute if block -1543 45 -309 minecraft:air if block -1543 46 -309 minecraft:barrier run summon minecraft:tnt -1543 45 -309 {CustomName:'{"translate":"medabots_server:entity.bomb"}',Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1543 45 -309 minecraft:air run setblock -1543 46 -309 minecraft:air
execute if block -1542 45 -310 minecraft:air if block -1542 46 -310 minecraft:barrier run summon minecraft:tnt -1542 45 -310 {CustomName:'{"translate":"medabots_server:entity.bomb"}',Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1542 45 -310 minecraft:air run setblock -1542 46 -310 minecraft:air
execute if block -1541 45 -309 minecraft:air run setblock -1541 46 -309 minecraft:air
execute if block -1567 45 -265 minecraft:air run setblock -1567 46 -265 minecraft:air
execute if block -1592 45 -309 minecraft:air run setblock -1592 46 -309 minecraft:air
execute if block -1593 45 -310 minecraft:air if block -1593 46 -310 minecraft:barrier run summon minecraft:tnt -1593 45 -310 {CustomName:'{"translate":"medabots_server:entity.bomb"}',Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1593 45 -310 minecraft:air run setblock -1593 46 -310 minecraft:air
execute if block -1594 45 -309 minecraft:air run setblock -1594 46 -309 minecraft:air
execute if block -1576 45 -284 minecraft:air if block -1576 46 -284 minecraft:barrier run summon minecraft:creeper -1576 45 -284 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:'{"translate":"medabots_server:entity.guard"}',Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
execute if block -1576 45 -284 minecraft:air run setblock -1576 46 -284 minecraft:air
execute if block -1586 45 -284 minecraft:air if block -1586 46 -284 minecraft:barrier run summon minecraft:creeper -1586 45 -284 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:'{"translate":"medabots_server:entity.guard"}',Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
execute if block -1586 45 -284 minecraft:air run setblock -1586 46 -284 minecraft:air
execute if block -1575 45 -262 minecraft:air run setblock -1575 46 -262 minecraft:air
execute if block -1578 45 -262 minecraft:air run setblock -1578 46 -262 minecraft:air
execute if block -1581 45 -257 minecraft:air run setblock -1581 46 -257 minecraft:air
execute if block -1586 45 -258 minecraft:air if block -1586 46 -258 minecraft:barrier run summon minecraft:tnt -1586 45 -258 {CustomName:'{"translate":"medabots_server:entity.bomb"}',Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1586 45 -258 minecraft:air run setblock -1586 46 -258 minecraft:air
execute if block -1592 45 -256 minecraft:air run setblock -1592 46 -256 minecraft:air
execute if block -1594 45 -260 minecraft:air run setblock -1594 46 -260 minecraft:air
execute if block -1610 46 -308 minecraft:iron_door[open=true] if block -1624 46 -284 minecraft:iron_door[open=false] if entity @s[x=-1619,y=45,z=-308,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_out_a/second_go_battle/0
execute if entity @e[x=-1608.5,y=45,z=-299.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[x=-1538,y=42,z=-274,dx=17,dy=7,dz=17,scores={Stage=7,Medabot=0..,Battle=1..}]
execute if entity @e[x=-1608.5,y=45,z=-299.5,distance=..0.7,tag=mission,scores={Dialog=81}] run title @s[scores={BattlingMedabots=1}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @e[x=-1608.5,y=45,z=-299.5,distance=..0.7,tag=mission,scores={Dialog=81}] if block -1610 46 -308 minecraft:iron_door[open=false] if entity @s[scores={BattlingMedabots=1}] run setblock -1610 45 -308 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if entity @e[x=-1608.5,y=45,z=-299.5,distance=..0.7,tag=mission,scores={Dialog=81}] if block -1624 46 -284 minecraft:iron_door[open=false] if entity @s[scores={BattlingMedabots=1}] run setblock -1624 45 -284 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if entity @s[scores={BattlingMedabots=1}] run kill @e[x=-1634,y=42,z=-315,dx=127,dy=7,dz=64,tag=mission]
execute if entity @s[scores={BattlingMedabots=1}] run bossbar set medabots_server:ruins_out_a/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute as @e[x=-1634,y=42,z=-315,dx=127,dy=7,dz=64,type=!minecraft:player] unless entity @s[scores={Stage=7}] run scoreboard players set @s Stage 7
execute if entity @s[x=-1566.5,y=45,z=-311.5,distance=..0.7,tag=hostile,gamemode=adventure] run function medabots_server:stage/clean_up/ruins_out_a/second_go
stopsound @s[x=-1566.5,y=45,z=-311.5,distance=..0.7,tag=hostile,gamemode=adventure] music
playsound medabots_server:music.stage.stage_end music @s[x=-1566.5,y=45,z=-311.5,distance=..0.7,tag=hostile,gamemode=adventure] -1570 51 -284 14
scoreboard players set @s[x=-1566.5,y=45,z=-311.5,distance=..0.7,tag=hostile,gamemode=adventure] Battle 0
scoreboard players set @s[x=-1566.5,y=45,z=-311.5,distance=..0.7,tag=hostile,gamemode=adventure] MusicType 1
scoreboard players set @s[x=-1566.5,y=45,z=-311.5,distance=..0.7,tag=hostile,gamemode=adventure] Music 299
advancement grant @s[x=-1566.5,y=45,z=-311.5,distance=..0.7,tag=hostile,gamemode=adventure] only medabots_server:stages/wave_1/ruins_out_a_second_go
teleport @s[x=-1566.5,y=45,z=-311.5,distance=..0.7,tag=hostile,gamemode=adventure] -1570 51 -284 -180 0
execute if block -1513 45 -296 minecraft:structure_block run setblock -1512 45 -296 minecraft:redstone_block
execute if block -1512 45 -296 minecraft:redstone_block run setblock -1512 45 -296 minecraft:air
execute if block -1514 45 -296 minecraft:structure_block run setblock -1515 45 -296 minecraft:redstone_block
execute if block -1515 45 -296 minecraft:redstone_block run setblock -1515 45 -296 minecraft:air
execute if block -1568 45 -310 minecraft:structure_block run setblock -1568 46 -310 minecraft:redstone_block
execute if block -1568 45 -264 minecraft:structure_block run setblock -1568 46 -264 minecraft:redstone_block
execute if block -1610 45 -308 minecraft:structure_block run setblock -1610 46 -308 minecraft:redstone_block
execute if block -1624 45 -284 minecraft:structure_block run setblock -1624 46 -284 minecraft:redstone_block