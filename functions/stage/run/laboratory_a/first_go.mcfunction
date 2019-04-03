execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/laboratory_a/first_go
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute unless entity @e[x=-1812,y=43,z=-322,dx=80,dy=7,dz=72,scores={Medabot=0..,Battle=1..2,Stage=9},tag=enemy_medabot] run bossbar set medabots_server:laboratory_a/time players @s
execute unless entity @e[x=-1812,y=43,z=-322,dx=80,dy=7,dz=72,scores={Medabot=0..,Battle=1..2,Stage=9},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:laboratory_a/time value
execute unless entity @e[x=-1812,y=43,z=-322,dx=80,dy=7,dz=72,scores={Medabot=0..,Battle=1..2,Stage=9},tag=enemy_medabot] store result bossbar medabots_server:laboratory_a/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[x=-1812,y=43,z=-322,dx=80,dy=7,dz=72,scores={Medabot=0..,Battle=1..2,Stage=9},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:laboratory_a/robattle value
execute if entity @e[x=-1812,y=43,z=-322,dx=80,dy=7,dz=72,scores={Medabot=0..,Battle=1..2,Stage=9},tag=enemy_medabot] store result bossbar medabots_server:laboratory_a/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[x=-1812,y=43,z=-322,dx=80,dy=7,dz=72,scores={Medabot=0..,Battle=1..2,Stage=9},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1812,y=43,z=-322,dx=80,dy=7,dz=72,tag=mission] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[x=-1812,y=43,z=-322,dx=80,dy=7,dz=72,scores={Medabot=0..,Battle=1..2,Stage=9},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1812,y=43,z=-322,dx=80,dy=7,dz=72,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if block -1763 45 -271 minecraft:iron_door[open=false] if block -1775 43 -258 minecraft:green_wool if block -1770 43 -258 minecraft:green_wool if block -1770 43 -253 minecraft:green_wool if block -1775 43 -253 minecraft:green_wool run setblock -1763 44 -271 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1763 45 -271 minecraft:iron_door[open=false] if block -1780 43 -270 minecraft:yellow_wool run setblock -1763 44 -271 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1763 45 -271 minecraft:iron_door[open=true] if block -1775 43 -258 minecraft:lime_wool if block -1780 43 -270 minecraft:orange_wool run setblock -1763 44 -271 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
execute if block -1763 45 -271 minecraft:iron_door[open=true] if block -1770 43 -258 minecraft:lime_wool if block -1780 43 -270 minecraft:orange_wool run setblock -1763 44 -271 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
execute if block -1763 45 -271 minecraft:iron_door[open=true] if block -1770 43 -253 minecraft:lime_wool if block -1780 43 -270 minecraft:orange_wool run setblock -1763 44 -271 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
execute if block -1763 45 -271 minecraft:iron_door[open=true] if block -1775 43 -253 minecraft:lime_wool if block -1780 43 -270 minecraft:orange_wool run setblock -1763 44 -271 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
execute if block -1754 45 -285 minecraft:iron_door[open=false] if block -1754 43 -282 minecraft:blue_wool if block -1752 43 -289 minecraft:orange_wool if block -1752 43 -292 minecraft:orange_wool run setblock -1754 44 -285 minecraft:structure_block[mode=load]{name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1754 45 -285 minecraft:iron_door[open=false] if block -1754 43 -282 minecraft:blue_wool if block -1752 43 -292 minecraft:yellow_wool run setblock -1754 44 -285 minecraft:structure_block[mode=load]{name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1754 45 -285 minecraft:iron_door[open=true] if block -1754 43 -282 minecraft:light_blue_wool run setblock -1754 44 -285 minecraft:structure_block[mode=load]{name:"medabots_server:stage/door",mode:"LOAD"}
execute if block -1754 45 -285 minecraft:iron_door[open=true] if block -1752 43 -289 minecraft:yellow_wool if block -1752 43 -292 minecraft:orange_wool run setblock -1754 44 -285 minecraft:structure_block[mode=load]{name:"medabots_server:stage/door",mode:"LOAD"}
execute if block -1746 45 -271 minecraft:iron_door[open=false] if block -1752 43 -292 minecraft:yellow_wool run setblock -1746 44 -271 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1746 45 -271 minecraft:iron_door[open=false] if block -1739 43 -321 minecraft:lime_wool run setblock -1746 44 -271 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1746 45 -271 minecraft:iron_door[open=true] if block -1739 43 -321 minecraft:green_wool if block -1752 43 -292 minecraft:orange_wool run setblock -1746 44 -271 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
execute if block -1773 45 -278 minecraft:iron_door[open=false] if block -1752 43 -292 minecraft:yellow_wool if block -1775 43 -258 minecraft:green_wool if block -1770 43 -258 minecraft:green_wool if block -1770 43 -253 minecraft:green_wool if block -1775 43 -253 minecraft:green_wool run setblock -1773 44 -278 minecraft:structure_block[mode=load]{name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1773 45 -278 minecraft:iron_door[open=false] if block -1738 43 -321 minecraft:lime_wool run setblock -1782 44 -301 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1773 45 -278 minecraft:iron_door[open=true] if block -1738 43 -321 minecraft:green_wool if block -1775 43 -258 minecraft:lime_wool run setblock -1773 44 -278 minecraft:structure_block[mode=load]{name:"medabots_server:stage/door",mode:"LOAD"}
execute if block -1773 45 -278 minecraft:iron_door[open=true] if block -1738 43 -321 minecraft:green_wool if block -1770 43 -258 minecraft:lime_wool run setblock -1773 44 -278 minecraft:structure_block[mode=load]{name:"medabots_server:stage/door",mode:"LOAD"}
execute if block -1773 45 -278 minecraft:iron_door[open=true] if block -1738 43 -321 minecraft:green_wool if block -1770 43 -253 minecraft:lime_wool run setblock -1773 44 -278 minecraft:structure_block[mode=load]{name:"medabots_server:stage/door",mode:"LOAD"}
execute if block -1773 45 -278 minecraft:iron_door[open=true] if block -1738 43 -321 minecraft:green_wool if block -1775 43 -253 minecraft:lime_wool run setblock -1773 44 -278 minecraft:structure_block[mode=load]{name:"medabots_server:stage/door",mode:"LOAD"}
execute if block -1773 45 -278 minecraft:iron_door[open=true] if block -1738 43 -321 minecraft:green_wool if block -1752 43 -292 minecraft:orange_wool run setblock -1773 44 -278 minecraft:structure_block[mode=load]{name:"medabots_server:stage/door",mode:"LOAD"}
execute if block -1788 45 -288 minecraft:iron_door[open=false] if block -1760 43 -293 minecraft:lime_wool if block -1760 43 -296 minecraft:lime_wool if block -1763 43 -296 minecraft:lime_wool if block -1763 43 -293 minecraft:lime_wool run setblock -1788 44 -288 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
execute if block -1793 45 -314 minecraft:iron_door[open=false] if block -1807 43 -319 minecraft:blue_wool run setblock -1793 44 -314 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1793 45 -314 minecraft:iron_door[open=true] if block -1807 43 -319 minecraft:light_blue_wool run setblock -1793 44 -314 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
execute if block -1772 45 -315 minecraft:iron_door[open=false] if block -1781 43 -319 minecraft:lime_wool run setblock -1772 44 -315 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/door",mode:"LOAD"}
execute if block -1740 43 -265 minecraft:light_blue_wool run tag @e[x=-1739.5,y=44,z=-265.5,distance=..0.7,tag=spring_wall] add enabled
execute if block -1740 43 -265 minecraft:blue_wool run tag @e[x=-1739.5,y=44,z=-265.5,distance=..0.7,tag=spring_wall] remove enabled
execute if block -1739 43 -279 minecraft:lime_wool run tag @e[x=-1738.5,y=44,z=-279.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1739 43 -279 minecraft:lime_wool run tag @e[x=-1739.5,y=44,z=-307.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1740 43 -309 minecraft:lime_wool run tag @e[x=-1738.5,y=44,z=-279.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1740 43 -309 minecraft:lime_wool run tag @e[x=-1739.5,y=44,z=-307.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1760 43 -283 minecraft:light_blue_wool run tag @e[x=-1759.5,y=44,z=-283.5,distance=..0.7,tag=spring_wall] add enabled
execute if block -1768 43 -284 minecraft:light_blue_wool run tag @e[x=-1759.5,y=44,z=-283.5,distance=..0.7,tag=spring_wall] add enabled
execute if block -1777 43 -284 minecraft:light_blue_wool run tag @e[x=-1759.5,y=44,z=-283.5,distance=..0.7,tag=spring_wall] add enabled
execute if block -1772 43 -290 minecraft:light_blue_wool run tag @e[x=-1759.5,y=44,z=-283.5,distance=..0.7,tag=spring_wall] add enabled
execute if block -1760 43 -283 minecraft:blue_wool if block -1768 43 -284 minecraft:blue_wool if block -1777 43 -284 minecraft:blue_wool if block -1772 43 -290 minecraft:blue_wool run tag @e[x=-1759.5,y=44,z=-283.5,distance=..0.7,tag=spring_wall] remove enabled
execute if block -1768 43 -285 minecraft:light_blue_wool run tag @e[x=-1759.5,y=44,z=-284.5,distance=..0.7,tag=spring_wall] add enabled
execute if block -1777 43 -285 minecraft:light_blue_wool run tag @e[x=-1759.5,y=44,z=-284.5,distance=..0.7,tag=spring_wall] add enabled
execute if block -1773 43 -290 minecraft:light_blue_wool run tag @e[x=-1759.5,y=44,z=-284.5,distance=..0.7,tag=spring_wall] add enabled
execute if block -1768 43 -285 minecraft:blue_wool if block -1777 43 -285 minecraft:blue_wool if block -1773 43 -290 minecraft:blue_wool run tag @e[x=-1759.5,y=44,z=-284.5,distance=..0.7,tag=spring_wall] remove enabled
execute if block -1781 43 -318 minecraft:lime_wool run tag @e[x=-1765.5,y=44,z=-317.5,distance=..0.7,tag=spring_wall] add enabled
execute if block -1772 44 -270 minecraft:chest run setblock -1772 45 -270 minecraft:barrier
execute if block -1773 44 -271 minecraft:chest run setblock -1773 45 -271 minecraft:barrier
execute if block -1780 44 -271 minecraft:chest run setblock -1780 45 -271 minecraft:barrier
execute if block -1751 44 -257 minecraft:chest run setblock -1751 45 -257 minecraft:barrier
execute if block -1752 44 -256 minecraft:chest run setblock -1752 45 -256 minecraft:barrier
execute if block -1753 44 -255 minecraft:chest run setblock -1753 45 -255 minecraft:barrier
execute if block -1755 44 -257 minecraft:chest run setblock -1755 45 -257 minecraft:barrier
execute if block -1756 44 -256 minecraft:chest run setblock -1756 45 -256 minecraft:barrier
execute if block -1755 44 -255 minecraft:chest run setblock -1755 45 -255 minecraft:barrier
execute if block -1756 44 -254 minecraft:chest run setblock -1756 45 -254 minecraft:barrier
execute if block -1754 44 -253 minecraft:chest run setblock -1754 45 -253 minecraft:barrier
execute if block -1753 44 -252 minecraft:chest run setblock -1753 45 -252 minecraft:barrier
execute if block -1751 44 -254 minecraft:chest run setblock -1751 45 -254 minecraft:barrier
execute if block -1750 44 -254 minecraft:chest run setblock -1750 45 -254 minecraft:barrier
execute if block -1749 44 -253 minecraft:chest run setblock -1749 45 -253 minecraft:barrier
execute if block -1750 44 -252 minecraft:chest run setblock -1750 45 -252 minecraft:barrier
execute if block -1754 44 -282 minecraft:chest run setblock -1754 45 -282 minecraft:barrier
execute if block -1754 44 -287 minecraft:chest run setblock -1754 45 -287 minecraft:barrier
execute if block -1750 44 -287 minecraft:chest run setblock -1750 45 -287 minecraft:barrier
execute if block -1741 44 -271 minecraft:chest run setblock -1741 45 -271 minecraft:barrier
execute if block -1740 44 -271 minecraft:chest run setblock -1740 45 -271 minecraft:barrier
execute if block -1741 44 -270 minecraft:chest run setblock -1741 45 -270 minecraft:barrier
execute if block -1740 44 -270 minecraft:chest run setblock -1740 45 -270 minecraft:barrier
execute if block -1760 44 -281 minecraft:chest run setblock -1760 45 -281 minecraft:barrier
execute if block -1760 44 -280 minecraft:chest run setblock -1760 45 -280 minecraft:barrier
execute if block -1762 44 -298 minecraft:chest run setblock -1762 45 -298 minecraft:barrier
execute if block -1761 44 -298 minecraft:chest run setblock -1761 45 -298 minecraft:barrier
execute if block -1795 44 -313 minecraft:chest run setblock -1795 45 -313 minecraft:barrier
execute if block -1795 44 -316 minecraft:chest run setblock -1795 45 -316 minecraft:barrier
execute if block -1795 44 -319 minecraft:chest run setblock -1795 45 -319 minecraft:barrier
execute if block -1798 44 -310 minecraft:chest run setblock -1798 45 -310 minecraft:barrier
execute if block -1798 44 -313 minecraft:chest run setblock -1798 45 -313 minecraft:barrier
execute if block -1798 44 -316 minecraft:chest run setblock -1798 45 -316 minecraft:barrier
execute if block -1747 44 -259 minecraft:chest run setblock -1747 45 -259 minecraft:barrier
execute if block -1801 44 -310 minecraft:chest run setblock -1801 45 -310 minecraft:barrier
execute if block -1801 44 -313 minecraft:chest run setblock -1801 45 -313 minecraft:barrier
execute if block -1801 44 -316 minecraft:chest run setblock -1801 45 -316 minecraft:barrier
execute if block -1801 44 -319 minecraft:chest run setblock -1801 45 -319 minecraft:barrier
execute if block -1804 44 -310 minecraft:chest run setblock -1804 45 -310 minecraft:barrier
execute if block -1804 44 -313 minecraft:chest run setblock -1804 45 -313 minecraft:barrier
execute if block -1804 44 -316 minecraft:chest run setblock -1804 45 -316 minecraft:barrier
execute if block -1804 44 -319 minecraft:chest run setblock -1804 45 -319 minecraft:barrier
execute if block -1807 44 -310 minecraft:chest run setblock -1807 45 -310 minecraft:barrier
execute if block -1807 44 -313 minecraft:chest run setblock -1807 45 -313 minecraft:barrier
execute if block -1807 44 -316 minecraft:chest run setblock -1807 45 -316 minecraft:barrier
execute if block -1807 44 -319 minecraft:chest run setblock -1807 45 -319 minecraft:barrier
execute if block -1810 44 -310 minecraft:chest run setblock -1810 45 -310 minecraft:barrier
execute if block -1810 44 -313 minecraft:chest run setblock -1810 45 -313 minecraft:barrier
execute if block -1810 44 -316 minecraft:chest run setblock -1810 45 -316 minecraft:barrier
execute if block -1810 44 -319 minecraft:chest run setblock -1810 45 -319 minecraft:barrier
execute if block -1777 44 -317 minecraft:chest run setblock -1777 45 -317 minecraft:barrier
execute if block -1773 44 -320 minecraft:chest run setblock -1773 45 -320 minecraft:barrier
execute if block -1772 44 -270 minecraft:air run setblock -1772 45 -270 minecraft:air
execute if block -1773 44 -271 minecraft:air if block -1773 45 -271 minecraft:barrier run summon minecraft:tnt -1773 44 -271 {CustomName:'{"translate":"medabots_server:entity.bomb"}',Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1773 44 -271 minecraft:air run setblock -1773 45 -271 minecraft:air
execute if block -1780 44 -271 minecraft:air run setblock -1780 45 -271 minecraft:air
execute if block -1751 44 -257 minecraft:air run setblock -1751 45 -257 minecraft:air
execute if block -1752 44 -256 minecraft:air if block -1752 45 -256 minecraft:barrier run summon minecraft:zombie -1752 44 -256 {NoAI:1b,Silent:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:dispenser",Count:1b}],CustomName:'{"translate":"medabots_server:entity.cannon"}',Tags:["delay_4","hostile","killerable","rotate_over_x_negative","cannon"],DeathLootTable:"medabots_server:entities/cannon",ArmorDropChances:[1.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"generic.knockbackResistance",Base:1.0d},{Name:"zombie.spawnReinforcements",Base:0.0d},{Name:"generic.movementSpeed",Base:0.0d},{Name:"generic.maxHealth",Base:100.0d}],PersistenceRequired:1b,AbsorptionAmount:20.0f,Health:100.0f}
execute if block -1752 44 -256 minecraft:air run setblock -1752 45 -256 minecraft:air
execute if block -1753 44 -255 minecraft:air run setblock -1753 45 -255 minecraft:air
execute if block -1755 44 -257 minecraft:air if block -1755 45 -257 minecraft:barrier run summon minecraft:zombie -1755 44 -257 {NoAI:1b,Silent:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:dispenser",Count:1b}],CustomName:'{"translate":"medabots_server:entity.cannon"}',Tags:["delay_4","hostile","killerable","rotate_over_x_positive","cannon"],DeathLootTable:"medabots_server:entities/cannon",ArmorDropChances:[1.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"generic.knockbackResistance",Base:1.0d},{Name:"zombie.spawnReinforcements",Base:0.0d},{Name:"generic.movementSpeed",Base:0.0d},{Name:"generic.maxHealth",Base:100.0d}],PersistenceRequired:1b,AbsorptionAmount:20.0f,Health:100.0f}
execute if block -1755 44 -257 minecraft:air run setblock -1755 45 -257 minecraft:air
execute if block -1756 44 -256 minecraft:air run setblock -1756 45 -256 minecraft:air
execute if block -1755 44 -255 minecraft:air run setblock -1755 45 -255 minecraft:air
execute if block -1756 44 -254 minecraft:air if block -1756 45 -254 minecraft:barrier run summon minecraft:tnt -1756 44 -254 {CustomName:'{"translate":"medabots_server:entity.bomb"}',Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1756 44 -254 minecraft:air run setblock -1756 45 -254 minecraft:air
execute if block -1754 44 -253 minecraft:air if block -1754 45 -253 minecraft:barrier run summon minecraft:tnt -1754 44 -253 {CustomName:'{"translate":"medabots_server:entity.bomb"}',Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1754 44 -253 minecraft:air run setblock -1754 45 -253 minecraft:air
execute if block -1753 44 -252 minecraft:air if block -1753 45 -252 minecraft:barrier run summon minecraft:zombie -1753 44 -252 {NoAI:1b,Silent:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:dispenser",Count:1b}],CustomName:'{"translate":"medabots_server:entity.cannon"}',Tags:["delay_4","hostile","killerable","rotate_over_z_negative","cannon"],DeathLootTable:"medabots_server:entities/cannon",ArmorDropChances:[1.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"generic.knockbackResistance",Base:1.0d},{Name:"zombie.spawnReinforcements",Base:0.0d},{Name:"generic.movementSpeed",Base:0.0d},{Name:"generic.maxHealth",Base:100.0d}],PersistenceRequired:1b,AbsorptionAmount:20.0f,Health:100.0f}
execute if block -1753 44 -252 minecraft:air run setblock -1753 45 -252 minecraft:air
execute if block -1751 44 -254 minecraft:air run setblock -1751 45 -254 minecraft:air
execute if block -1750 44 -254 minecraft:air run setblock -1750 45 -254 minecraft:air
execute if block -1749 44 -253 minecraft:air run setblock -1749 45 -253 minecraft:air
execute if block -1750 44 -252 minecraft:air if block -1750 45 -252 minecraft:barrier run summon minecraft:tnt -1750 44 -252 {CustomName:'{"translate":"medabots_server:entity.bomb"}',Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1750 44 -252 minecraft:air run setblock -1750 45 -252 minecraft:air
execute if block -1754 44 -282 minecraft:air run setblock -1754 45 -282 minecraft:air
execute if block -1754 44 -287 minecraft:air if block -1754 45 -287 minecraft:barrier run summon minecraft:tnt -1754 44 -287 {CustomName:'{"translate":"medabots_server:entity.bomb"}',Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1754 44 -287 minecraft:air run setblock -1754 45 -287 minecraft:air
execute if block -1750 44 -287 minecraft:air run setblock -1750 45 -287 minecraft:air
execute if block -1741 44 -271 minecraft:air run setblock -1741 45 -271 minecraft:air
execute if block -1740 44 -271 minecraft:air run setblock -1740 45 -271 minecraft:air
execute if block -1741 44 -270 minecraft:air run setblock -1741 45 -270 minecraft:air
execute if block -1740 44 -270 minecraft:air run setblock -1740 45 -270 minecraft:air
execute if block -1760 44 -281 minecraft:air run setblock -1760 45 -281 minecraft:air
execute if block -1760 44 -280 minecraft:air if block -1760 45 -280 minecraft:barrier run summon minecraft:creeper -1760 44 -280 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:'{"translate":"medabots_server:entity.guard"}',Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
execute if block -1760 44 -280 minecraft:air run setblock -1760 45 -280 minecraft:air
execute if block -1762 44 -298 minecraft:air if block -1762 45 -298 minecraft:barrier run summon minecraft:creeper -1762 44 -298 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:'{"translate":"medabots_server:entity.guard"}',Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
execute if block -1762 44 -298 minecraft:air run setblock -1762 45 -298 minecraft:air
execute if block -1761 44 -298 minecraft:air if block -1761 45 -298 minecraft:barrier run summon minecraft:creeper -1761 44 -298 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:'{"translate":"medabots_server:entity.guard"}',Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
execute if block -1761 44 -298 minecraft:air run setblock -1761 45 -298 minecraft:air
execute if block -1795 44 -313 minecraft:air if block -1795 45 -313 minecraft:barrier run summon minecraft:zombie -1795 44 -313 {NoAI:1b,Silent:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:dispenser",Count:1b}],CustomName:'{"translate":"medabots_server:entity.cannon"}',Tags:["delay_4","hostile","killerable","rotate_over_x_negative","cannon"],DeathLootTable:"medabots_server:entities/cannon",ArmorDropChances:[1.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"generic.knockbackResistance",Base:1.0d},{Name:"zombie.spawnReinforcements",Base:0.0d},{Name:"generic.movementSpeed",Base:0.0d},{Name:"generic.maxHealth",Base:100.0d}],PersistenceRequired:1b,AbsorptionAmount:20.0f,Health:100.0f}
execute if block -1795 44 -313 minecraft:air run setblock -1795 45 -313 minecraft:air
execute if block -1795 44 -316 minecraft:air if block -1795 45 -316 minecraft:barrier run summon minecraft:zombie -1795 44 -316 {NoAI:1b,Silent:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:dispenser",Count:1b}],CustomName:'{"translate":"medabots_server:entity.cannon"}',Tags:["delay_4","hostile","killerable","rotate_over_x_negative","cannon"],DeathLootTable:"medabots_server:entities/cannon",ArmorDropChances:[1.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"generic.knockbackResistance",Base:1.0d},{Name:"zombie.spawnReinforcements",Base:0.0d},{Name:"generic.movementSpeed",Base:0.0d},{Name:"generic.maxHealth",Base:100.0d}],PersistenceRequired:1b,AbsorptionAmount:20.0f,Health:100.0f}
execute if block -1795 44 -316 minecraft:air run setblock -1795 45 -316 minecraft:air
execute if block -1795 44 -319 minecraft:air run setblock -1795 45 -319 minecraft:air
execute if block -1798 44 -310 minecraft:air run setblock -1798 45 -310 minecraft:air
execute if block -1798 44 -313 minecraft:air run setblock -1798 45 -313 minecraft:air
execute if block -1798 44 -316 minecraft:air run setblock -1798 45 -316 minecraft:air
execute if block -1747 44 -259 minecraft:air if block -1747 45 -259 minecraft:barrier run summon minecraft:zombie -1747 44 -259 {NoAI:1b,Silent:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:dispenser",Count:1b}],CustomName:'{"translate":"medabots_server:entity.cannon"}',Tags:["delay_4","hostile","killerable","rotate_over_z_positive","cannon"],DeathLootTable:"medabots_server:entities/cannon",ArmorDropChances:[1.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"generic.knockbackResistance",Base:1.0d},{Name:"zombie.spawnReinforcements",Base:0.0d},{Name:"generic.movementSpeed",Base:0.0d},{Name:"generic.maxHealth",Base:100.0d}],PersistenceRequired:1b,AbsorptionAmount:20.0f,Health:100.0f}
execute if block -1747 44 -259 minecraft:air run setblock -1747 45 -259 minecraft:air
execute if block -1801 44 -310 minecraft:air if block -1801 45 -310 minecraft:barrier run summon minecraft:zombie -1801 44 -310 {NoAI:1b,Silent:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:dispenser",Count:1b}],CustomName:'{"translate":"medabots_server:entity.cannon"}',Tags:["delay_4","hostile","killerable","rotate_over_z_negative","cannon"],DeathLootTable:"medabots_server:entities/cannon",ArmorDropChances:[1.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"generic.knockbackResistance",Base:1.0d},{Name:"zombie.spawnReinforcements",Base:0.0d},{Name:"generic.movementSpeed",Base:0.0d},{Name:"generic.maxHealth",Base:100.0d}],PersistenceRequired:1b,AbsorptionAmount:20.0f,Health:100.0f}
execute if block -1801 44 -310 minecraft:air run setblock -1801 45 -310 minecraft:air
execute if block -1801 44 -313 minecraft:air if block -1801 45 -313 minecraft:barrier run summon minecraft:creeper -1801 44 -313 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:'{"translate":"medabots_server:entity.guard"}',Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
execute if block -1801 44 -313 minecraft:air run setblock -1801 45 -313 minecraft:air
execute if block -1801 44 -316 minecraft:air run setblock -1801 45 -316 minecraft:air
execute if block -1801 44 -319 minecraft:air run setblock -1801 45 -319 minecraft:air
execute if block -1804 44 -310 minecraft:air run setblock -1804 45 -310 minecraft:air
execute if block -1804 44 -313 minecraft:air run setblock -1804 45 -313 minecraft:air
execute if block -1804 44 -316 minecraft:air run setblock -1804 45 -316 minecraft:air
execute if block -1804 44 -319 minecraft:air if block -1804 45 -319 minecraft:barrier run summon minecraft:zombie -1804 44 -319 {NoAI:1b,Silent:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:dispenser",Count:1b}],CustomName:'{"translate":"medabots_server:entity.cannon"}',Tags:["delay_4","hostile","killerable","rotate_over_z_positive","cannon"],DeathLootTable:"medabots_server:entities/cannon",ArmorDropChances:[1.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"generic.knockbackResistance",Base:1.0d},{Name:"zombie.spawnReinforcements",Base:0.0d},{Name:"generic.movementSpeed",Base:0.0d},{Name:"generic.maxHealth",Base:100.0d}],PersistenceRequired:1b,AbsorptionAmount:20.0f,Health:100.0f}
execute if block -1804 44 -319 minecraft:air run setblock -1804 45 -319 minecraft:air
execute if block -1807 44 -310 minecraft:air if block -1807 45 -310 minecraft:barrier run summon minecraft:zombie -1807 44 -310 {NoAI:1b,Silent:1b,Team:"StageEnemy",ArmorItems:[{},{},{},{id:"minecraft:dispenser",Count:1b}],CustomName:'{"translate":"medabots_server:entity.cannon"}',Tags:["delay_4","hostile","killerable","rotate_over_z_negative","cannon"],DeathLootTable:"medabots_server:entities/cannon",ArmorDropChances:[1.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"generic.knockbackResistance",Base:1.0d},{Name:"zombie.spawnReinforcements",Base:0.0d},{Name:"generic.movementSpeed",Base:0.0d},{Name:"generic.maxHealth",Base:100.0d}],PersistenceRequired:1b,AbsorptionAmount:20.0f,Health:100.0f}
execute if block -1807 44 -310 minecraft:air run setblock -1807 45 -310 minecraft:air
execute if block -1807 44 -313 minecraft:air run setblock -1807 45 -313 minecraft:air
execute if block -1807 44 -316 minecraft:air if block -1807 45 -316 minecraft:barrier run summon minecraft:creeper -1807 44 -316 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:'{"translate":"medabots_server:entity.guard"}',Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
execute if block -1807 44 -316 minecraft:air run setblock -1807 45 -316 minecraft:air
execute if block -1807 44 -319 minecraft:air run setblock -1807 45 -319 minecraft:air
execute if block -1810 44 -310 minecraft:air run setblock -1810 45 -310 minecraft:air
execute if block -1810 44 -313 minecraft:air run setblock -1810 45 -313 minecraft:air
execute if block -1810 44 -316 minecraft:air run setblock -1810 45 -316 minecraft:air
execute if block -1810 44 -319 minecraft:air run setblock -1810 45 -319 minecraft:air
execute if block -1777 44 -317 minecraft:air if block -1777 45 -317 minecraft:barrier run summon minecraft:creeper -1777 44 -317 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:'{"translate":"medabots_server:entity.guard"}',Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard/2_medallar_cents",AbsorptionAmount:10.0f,Health:100.0f}
execute if block -1777 44 -317 minecraft:air run setblock -1777 45 -317 minecraft:air
execute if block -1773 44 -320 minecraft:air if block -1773 45 -320 minecraft:barrier run summon minecraft:creeper -1773 44 -320 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:'{"translate":"medabots_server:entity.guard"}',Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard/4_medallar_cents",AbsorptionAmount:10.0f,Health:100.0f}
execute if block -1773 44 -320 minecraft:air run setblock -1773 45 -320 minecraft:air
execute if block -1761 45 -271 minecraft:iron_door[open=true] if block -1754 45 -277 minecraft:iron_door[open=false] if entity @s[x=-1761,y=44,z=-272,dx=3,dy=3,dz=3] run function medabots_server:stage/create/laboratory_a/first_go_battle/0
execute if entity @e[x=-1752.5,y=44,z=-269.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[x=-1761,y=41,z=-276,dx=15,dy=7,dz=15,scores={Stage=9,Medabot=0..,Battle=1..}]
execute if entity @e[x=-1752.5,y=44,z=-269.5,distance=..0.7,tag=mission,scores={Dialog=81}] run title @s[scores={BattlingMedabots=1}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @e[x=-1752.5,y=44,z=-269.5,distance=..0.7,tag=mission,scores={Dialog=81}] if block -1761 45 -271 minecraft:iron_door[open=false] if entity @s[scores={BattlingMedabots=1}] run setblock -1761 44 -271 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if entity @e[x=-1752.5,y=44,z=-269.5,distance=..0.7,tag=mission,scores={Dialog=81}] if block -1754 45 -277 minecraft:iron_door[open=false] if entity @s[scores={BattlingMedabots=1}] run setblock -1754 44 -277 minecraft:structure_block[mode=load]{name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if entity @e[x=-1752.5,y=44,z=-269.5,distance=..0.7,tag=mission,scores={Dialog=81}] if block -1752 45 -262 minecraft:iron_door[open=false] if entity @s[scores={BattlingMedabots=1}] run setblock -1752 44 -262 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if entity @s[scores={BattlingMedabots=1}] run kill @e[x=-1812,y=43,z=-322,dx=80,dy=7,dz=72,tag=mission]
execute if entity @s[scores={BattlingMedabots=1}] run bossbar set medabots_server:laboratory_a/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1799 45 -272 minecraft:iron_door[open=true] if block -1735 45 -281 minecraft:iron_door[open=false] if entity @s[x=-1801,y=44,z=-272,dx=3,dy=3,dz=3] run function medabots_server:stage/create/laboratory_a/first_go_battle/1
execute if entity @e[x=-1799.5,y=44,z=-261.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[x=-1808.5,y=44,z=-270,dx=20,dy=7,dz=20,scores={Stage=9,Medabot=0..,Battle=1..}]
execute if entity @e[x=-1799.5,y=44,z=-261.5,distance=..0.7,tag=mission,scores={Dialog=81}] run title @s[scores={BattlingMedabots=1}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @e[x=-1799.5,y=44,z=-261.5,distance=..0.7,tag=mission,scores={Dialog=81}] if block -1799 45 -272 minecraft:iron_door[open=false] if entity @s[scores={BattlingMedabots=1}] run setblock -1799 44 -272 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if entity @e[x=-1799.5,y=44,z=-261.5,distance=..0.7,tag=mission,scores={Dialog=81}] if block -1810 45 -291 minecraft:iron_door[open=false] if entity @s[scores={BattlingMedabots=1}] run setblock -1810 44 -291 minecraft:structure_block[mode=load]{name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if entity @s[scores={BattlingMedabots=1}] run kill @e[x=-1812,y=43,z=-322,dx=80,dy=7,dz=72,tag=mission]
execute if entity @s[scores={BattlingMedabots=1}] run bossbar set medabots_server:laboratory_a/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1772 45 -313 minecraft:iron_door[open=true] if entity @s[x=-1773.5,y=44,z=-313,dx=3,dy=3,dz=3] run function medabots_server:stage/create/laboratory_a/first_go_battle/2
execute if entity @e[x=-1812,y=43,z=-322,dx=80,dy=7,dz=72,tag=mr_referee] store result score @s BattlingMedabots if entity @e[x=-1812,y=44,z=-322,dx=80,dy=7,dz=72,scores={Stage=9,Medabot=0..,Battle=1..}]
execute as @e[x=-1812,y=43,z=-322,dx=80,dy=7,dz=72,type=!minecraft:player] unless entity @s[scores={Stage=9}] run scoreboard players set @s Stage 9
execute if entity @s[scores={BattlingMedabots=1}] run function medabots_server:stage/clean_up/laboratory_a/first_go
stopsound @s[scores={BattlingMedabots=1}] music
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1}] -1772 50 -285 14
scoreboard players set @s[scores={BattlingMedabots=1}] Battle 0
scoreboard players set @s[scores={BattlingMedabots=1}] MusicType 22
scoreboard players set @s[scores={BattlingMedabots=1}] Music 299
advancement grant @s[scores={BattlingMedabots=1}] only medabots_server:stages/wave_1/laboratory_a_first_go
teleport @s[scores={BattlingMedabots=1}] -1772 50 -285 -180 0
execute if entity @s[scores={BattlingMedabots=1}] run bossbar set medabots_server:laboratory_a/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1763 44 -271 minecraft:structure_block run setblock -1763 45 -271 minecraft:redstone_block
execute if block -1754 44 -285 minecraft:structure_block run setblock -1754 45 -285 minecraft:redstone_block
execute if block -1746 44 -271 minecraft:structure_block run setblock -1746 45 -271 minecraft:redstone_block
execute if block -1773 44 -278 minecraft:structure_block run setblock -1773 45 -278 minecraft:redstone_block
execute if block -1788 44 -288 minecraft:structure_block run setblock -1788 45 -288 minecraft:redstone_block
execute if block -1793 44 -314 minecraft:structure_block run setblock -1793 45 -314 minecraft:redstone_block
execute if block -1772 44 -315 minecraft:structure_block run setblock -1772 45 -315 minecraft:redstone_block
execute if block -1761 44 -271 minecraft:structure_block run setblock -1761 45 -271 minecraft:redstone_block
execute if block -1754 44 -277 minecraft:structure_block run setblock -1754 45 -277 minecraft:redstone_block
execute if block -1752 44 -262 minecraft:structure_block run setblock -1752 45 -262 minecraft:redstone_block
execute if block -1799 44 -272 minecraft:structure_block run setblock -1799 45 -272 minecraft:redstone_block
execute if block -1810 44 -291 minecraft:structure_block run setblock -1810 45 -291 minecraft:redstone_block
execute if block -1772 44 -313 minecraft:structure_block run setblock -1772 45 -313 minecraft:redstone_block