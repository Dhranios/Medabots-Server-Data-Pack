execute if entity @s[scores={Death=1..}] run function medabots_server:stage/clean_up/snowfield_a/second_go
execute store result score #temp Time run bossbar get medabots_server:snowfield_a/time value
execute store result bossbar medabots_server:snowfield_a/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute if block -1598 46 -213 minecraft:iron_door[open=false] if block -1594 44 -218 minecraft:yellow_wool run setblock -1598 45 -213 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1598 46 -213 minecraft:iron_door[open=true] if block -1594 44 -218 minecraft:orange_wool run setblock -1598 45 -213 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/door",mode:"LOAD"}
execute if block -1590 46 -207 minecraft:iron_door[open=false] if block -1594 44 -218 minecraft:yellow_wool run setblock -1590 45 -207 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1590 46 -207 minecraft:iron_door[open=true] if block -1594 44 -218 minecraft:orange_wool run setblock -1590 45 -207 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/door",mode:"LOAD"}
execute if block -1652 46 -229 minecraft:iron_door[open=false] if block -1649 44 -227 minecraft:lime_wool if block -1632 44 -225 minecraft:lime_wool if block -1627 44 -232 minecraft:lime_wool if block -1643 44 -236 minecraft:lime_wool run setblock -1652 45 -229 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
execute if block -1613 44 -203 minecraft:light_blue_wool run scoreboard players add @e[x=-1611.5,y=45,z=-202.5,distance=..0.7,type=minecraft:area_effect_cloud,tag=fan,tag=!changed] Moving 1
execute if block -1613 44 -203 minecraft:light_blue_wool run tag @e[x=-1611.5,y=45,z=-202.5,distance=..0.7,type=minecraft:area_effect_cloud,tag=fan,tag=!changed] add changed
execute if block -1613 44 -203 minecraft:blue_wool run scoreboard players remove @e[x=-1611.5,y=45,z=-202.5,distance=..0.7,type=minecraft:area_effect_cloud,tag=fan,tag=changed] Moving 1
execute if block -1613 44 -203 minecraft:blue_wool run tag @e[x=-1611.5,y=45,z=-202.5,distance=..0.7,type=minecraft:area_effect_cloud,tag=fan,tag=changed] remove changed
execute if block -1617 44 -226 minecraft:light_blue_wool run tag @e[x=-1617.5,y=45,z=-225.5,distance=..0.7,type=minecraft:area_effect_cloud,tag=laser_trap,tag=!enabled] add enabled
execute if block -1617 44 -226 minecraft:blue_wool run tag @e[x=-1617.5,y=45,z=-225.5,distance=..0.7,type=minecraft:area_effect_cloud,tag=laser_trap,tag=enabled] remove enabled
execute if block -1663 44 -187 minecraft:light_blue_wool run tag @e[x=-1656.5,y=45,z=-211,type=minecraft:area_effect_cloud,tag=spring_wall,distance=0.7] add enabled
execute if block -1663 44 -187 minecraft:blue_wool run tag @e[x=-1656.5,y=45,z=-211,type=minecraft:area_effect_cloud,tag=spring_wall,distance=0.7] remove enabled
execute if block -1649 44 -227 minecraft:lime_wool if block -1632 44 -225 minecraft:lime_wool if block -1627 44 -232 minecraft:lime_wool if block -1643 44 -236 minecraft:lime_wool run tag @e[x=-1660.5,y=45,z=-242,dx=6,dy=1,dz=19,type=minecraft:area_effect_cloud,tag=laser_trap] add enabled
execute if block -1592 45 -244 minecraft:chest run setblock -1592 46 -244 minecraft:barrier
execute if block -1588 45 -243 minecraft:chest run setblock -1588 46 -243 minecraft:barrier
execute if block -1596 45 -242 minecraft:chest run setblock -1596 46 -242 minecraft:barrier
execute if block -1587 45 -241 minecraft:chest run setblock -1587 46 -241 minecraft:barrier
execute if block -1594 45 -240 minecraft:chest run setblock -1594 46 -240 minecraft:barrier
execute if block -1598 45 -240 minecraft:chest run setblock -1598 46 -240 minecraft:barrier
execute if block -1596 45 -235 minecraft:chest run setblock -1596 46 -235 minecraft:barrier
execute if block -1579 45 -235 minecraft:chest run setblock -1579 46 -235 minecraft:barrier
execute if block -1577 45 -234 minecraft:chest run setblock -1577 46 -234 minecraft:barrier
execute if block -1577 45 -236 minecraft:chest run setblock -1577 46 -236 minecraft:barrier
execute if block -1575 45 -238 minecraft:chest run setblock -1575 46 -238 minecraft:barrier
execute if block -1576 45 -201 minecraft:chest run setblock -1576 46 -201 minecraft:barrier
execute if block -1615 45 -209 minecraft:chest run setblock -1615 46 -209 minecraft:barrier
execute if block -1610 45 -211 minecraft:chest run setblock -1610 46 -211 minecraft:barrier
execute if block -1610 45 -214 minecraft:chest run setblock -1610 46 -214 minecraft:barrier
execute if block -1618 45 -216 minecraft:chest run setblock -1618 46 -216 minecraft:barrier
execute if block -1620 45 -220 minecraft:chest run setblock -1620 46 -220 minecraft:barrier
execute if block -1613 45 -223 minecraft:chest run setblock -1613 46 -223 minecraft:barrier
execute if block -1644 45 -186 minecraft:chest run setblock -1644 46 -186 minecraft:barrier
execute if block -1634 45 -190 minecraft:chest run setblock -1634 46 -190 minecraft:barrier
execute if block -1630 45 -192 minecraft:chest run setblock -1630 46 -192 minecraft:barrier
execute if block -1626 45 -193 minecraft:chest run setblock -1626 46 -193 minecraft:barrier
execute if block -1622 45 -190 minecraft:chest run setblock -1622 46 -190 minecraft:barrier
execute if block -1612 45 -187 minecraft:chest run setblock -1612 46 -187 minecraft:barrier
execute if block -1607 45 -188 minecraft:chest run setblock -1607 46 -188 minecraft:barrier
execute if block -1603 45 -190 minecraft:chest run setblock -1603 46 -190 minecraft:barrier
execute if block -1596 45 -190 minecraft:chest run setblock -1596 46 -190 minecraft:barrier
execute if block -1594 45 -193 minecraft:chest run setblock -1594 46 -193 minecraft:barrier
execute if block -1593 45 -189 minecraft:chest run setblock -1593 46 -189 minecraft:barrier
execute if block -1592 45 -191 minecraft:chest run setblock -1592 46 -191 minecraft:barrier
execute if block -1590 45 -189 minecraft:chest run setblock -1590 46 -189 minecraft:barrier
execute if block -1589 45 -191 minecraft:chest run setblock -1589 46 -191 minecraft:barrier
execute if block -1666 45 -210 minecraft:chest run setblock -1666 46 -210 minecraft:barrier
execute if block -1664 45 -198 minecraft:chest run setblock -1664 46 -198 minecraft:barrier
execute if block -1629 45 -243 minecraft:chest run setblock -1629 46 -243 minecraft:barrier
execute if block -1629 45 -244 minecraft:chest run setblock -1629 46 -244 minecraft:barrier
execute if block -1623 45 -242 minecraft:chest run setblock -1623 46 -242 minecraft:barrier
execute if block -1623 45 -243 minecraft:chest run setblock -1623 46 -243 minecraft:barrier
execute if block -1603 45 -241 minecraft:chest run setblock -1603 46 -241 minecraft:barrier
execute if block -1605 45 -242 minecraft:chest run setblock -1605 46 -242 minecraft:barrier
execute if block -1603 45 -244 minecraft:chest run setblock -1603 46 -244 minecraft:barrier
execute if block -1606 45 -245 minecraft:chest run setblock -1606 46 -245 minecraft:barrier
execute if block -1592 45 -244 minecraft:air run setblock -1592 46 -244 minecraft:air
execute if block -1588 45 -243 minecraft:air run setblock -1588 46 -243 minecraft:air
execute if block -1596 45 -242 minecraft:air run setblock -1596 46 -242 minecraft:air
execute if block -1587 45 -241 minecraft:air run setblock -1587 46 -241 minecraft:air
execute if block -1594 45 -240 minecraft:air run setblock -1594 46 -240 minecraft:air
execute if block -1598 45 -240 minecraft:air run setblock -1598 46 -240 minecraft:air
execute if block -1596 45 -235 minecraft:air run setblock -1596 46 -235 minecraft:air
execute if block -1579 45 -235 minecraft:air run setblock -1579 46 -235 minecraft:air
execute if block -1577 45 -234 minecraft:air if block -1577 46 -234 minecraft:barrier run summon minecraft:creeper -1577 45 -234 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:'{"translate":"medabots_server:entity.guard"}',Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
execute if block -1577 45 -234 minecraft:air run setblock -1577 46 -234 minecraft:air
execute if block -1577 45 -236 minecraft:air run setblock -1577 46 -236 minecraft:air
execute if block -1575 45 -238 minecraft:air run setblock -1575 46 -238 minecraft:air
execute if block -1576 45 -201 minecraft:air run setblock -1576 46 -201 minecraft:air
execute if block -1615 45 -209 minecraft:air if block -1615 46 -209 minecraft:barrier run summon minecraft:tnt -1610 45 -211 {CustomName:'{"translate":"medabots_server:entity.bomb"}',Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1615 45 -209 minecraft:air run setblock -1615 46 -209 minecraft:air
execute if block -1610 45 -211 minecraft:air if block -1610 46 -211 minecraft:barrier run summon minecraft:tnt -1610 45 -211 {CustomName:'{"translate":"medabots_server:entity.bomb"}',Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1610 45 -211 minecraft:air run setblock -1610 46 -211 minecraft:air
execute if block -1610 45 -214 minecraft:air run setblock -1610 46 -214 minecraft:air
execute if block -1618 45 -216 minecraft:air if block -1618 46 -216 minecraft:barrier run summon minecraft:tnt -1618 45 -216 {CustomName:'{"translate":"medabots_server:entity.bomb"}',Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1618 45 -216 minecraft:air run setblock -1618 46 -216 minecraft:air
execute if block -1620 45 -220 minecraft:air if block -1620 46 -220 minecraft:barrier run summon minecraft:tnt -1620 45 -220 {CustomName:'{"translate":"medabots_server:entity.bomb"}',Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1620 45 -220 minecraft:air run setblock -1620 46 -220 minecraft:air
execute if block -1613 45 -223 minecraft:air if block -1613 46 -223 minecraft:barrier run summon minecraft:creeper -1613 45 -223 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:'{"translate":"medabots_server:entity.guard"}',Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
execute if block -1613 45 -223 minecraft:air run setblock -1613 46 -223 minecraft:air
execute if block -1644 45 -186 minecraft:air if block -1644 46 -186 minecraft:barrier run summon minecraft:tnt -1644 45 -186 {CustomName:'{"translate":"medabots_server:entity.bomb"}',Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1644 45 -186 minecraft:air run setblock -1644 46 -186 minecraft:air
execute if block -1634 45 -190 minecraft:air run setblock -1634 46 -190 minecraft:air
execute if block -1630 45 -192 minecraft:air run setblock -1630 46 -192 minecraft:air
execute if block -1626 45 -193 minecraft:air if block -1626 46 -193 minecraft:barrier run summon minecraft:creeper -1626 45 -193 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:'{"translate":"medabots_server:entity.guard"}',Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
execute if block -1626 45 -193 minecraft:air run setblock -1626 46 -193 minecraft:air
execute if block -1622 45 -190 minecraft:air run setblock -1622 46 -190 minecraft:air
execute if block -1612 45 -187 minecraft:air run setblock -1612 46 -187 minecraft:air
execute if block -1607 45 -188 minecraft:air run setblock -1607 46 -188 minecraft:air
execute if block -1603 45 -190 minecraft:air run setblock -1603 46 -190 minecraft:air
execute if block -1596 45 -190 minecraft:air if block -1596 46 -190 minecraft:barrier run summon minecraft:creeper -1596 45 -190 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:'{"translate":"medabots_server:entity.guard"}',Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard/4_medallar_cents",AbsorptionAmount:10.0f,Health:100.0f}
execute if block -1596 45 -190 minecraft:air run setblock -1596 46 -190 minecraft:air
execute if block -1594 45 -193 minecraft:air run setblock -1594 46 -193 minecraft:air
execute if block -1593 45 -189 minecraft:air run setblock -1593 46 -189 minecraft:air
execute if block -1592 45 -191 minecraft:air if block -1592 46 -191 minecraft:barrier run summon minecraft:tnt -1592 45 -191 {CustomName:'{"translate":"medabots_server:entity.bomb"}',Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1592 45 -191 minecraft:air run setblock -1592 46 -191 minecraft:air
execute if block -1590 45 -189 minecraft:air if block -1590 46 -189 minecraft:barrier run summon minecraft:zombie -1590 45 -189 {NoAI:1b,Silent:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:dispenser",Count:1b}],CustomName:'{"translate":"medabots_server:entity.cannon"}',Tags:["delay_4","hostile","killerable","rotate_over_z_negative","cannon"],DeathLootTable:"medabots_server:entities/cannon",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"generic.knockbackResistance",Base:1.0d},{Name:"zombie.spawnReinforcements",Base:0.0d},{Name:"generic.movementSpeed",Base:0.0d},{Name:"generic.maxHealth",Base:100.0d}],PersistenceRequired:1b,AbsorptionAmount:20.0f,Health:100.0f}
execute if block -1590 45 -189 minecraft:air run setblock -1590 46 -189 minecraft:air
execute if block -1589 45 -191 minecraft:air run setblock -1589 46 -191 minecraft:air
execute if block -1666 45 -210 minecraft:air run setblock -1666 46 -210 minecraft:air
execute if block -1664 45 -198 minecraft:air if block -1664 46 -198 minecraft:barrier run summon minecraft:creeper -1664 45 -198 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:'{"translate":"medabots_server:entity.guard"}',Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard/10_medallar_cents",AbsorptionAmount:10.0f,Health:100.0f}
execute if block -1664 45 -198 minecraft:air run setblock -1664 46 -198 minecraft:air
execute if block -1629 45 -243 minecraft:air run setblock -1629 46 -243 minecraft:air
execute if block -1629 45 -244 minecraft:air run setblock -1629 46 -244 minecraft:air
execute if block -1623 45 -242 minecraft:air run setblock -1623 46 -242 minecraft:air
execute if block -1623 45 -243 minecraft:air run setblock -1623 46 -243 minecraft:air
execute if block -1603 45 -241 minecraft:air run setblock -1603 46 -241 minecraft:air
execute if block -1605 45 -242 minecraft:air run setblock -1605 46 -242 minecraft:air
execute if block -1603 45 -244 minecraft:air run setblock -1603 46 -244 minecraft:air
execute if block -1606 45 -245 minecraft:air run setblock -1606 46 -245 minecraft:air
execute as @e[x=-1668,y=43,z=-247,dx=105,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=5}] run scoreboard players set @s Stage 5
execute if entity @s[x=-1659.5,y=45,z=-233.5,distance=..0.7,tag=hostile,gamemode=adventure] run function medabots_server:stage/clean_up/snowfield_a/second_go
stopsound @s[x=-1659.5,y=45,z=-233.5,distance=..0.7,tag=hostile,gamemode=adventure] music
playsound medabots_server:music.stage.stage_end music @s[x=-1659.5,y=45,z=-233.5,distance=..0.7,tag=hostile,gamemode=adventure] -1620 51 -216 14
scoreboard players set @s[x=-1659.5,y=45,z=-233.5,distance=..0.7,tag=hostile,gamemode=adventure] Battle 0
scoreboard players set @s[x=-1659.5,y=45,z=-233.5,distance=..0.7,tag=hostile,gamemode=adventure] MusicType 1
scoreboard players set @s[x=-1659.5,y=45,z=-233.5,distance=..0.7,tag=hostile,gamemode=adventure] Music 299
advancement grant @s[x=-1659.5,y=45,z=-233.5,distance=..0.7,tag=hostile,gamemode=adventure] only medabots_server:stages/wave_1/snowfield_a_second_go
teleport @s[x=-1659.5,y=45,z=-233.5,distance=..0.7,tag=hostile,gamemode=adventure] -1620 51 -216 -180 0
execute if block -1598 45 -213 minecraft:structure_block run setblock -1598 46 -213 minecraft:redstone_block
execute if block -1590 45 -207 minecraft:structure_block run setblock -1590 46 -207 minecraft:redstone_block
execute if block -1652 45 -229 minecraft:structure_block run setblock -1652 46 -229 minecraft:redstone_block