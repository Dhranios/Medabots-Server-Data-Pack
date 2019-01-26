execute if block -1680 46 -129 minecraft:iron_door[open=false] if block -1688 44 -125 minecraft:yellow_wool run setblock -1680 45 -129 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1680 46 -129 minecraft:iron_door[open=true] if block -1688 44 -125 minecraft:orange_wool run setblock -1680 45 -129 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/door",mode:"LOAD"}
execute if block -1680 45 -129 minecraft:structure_block run setblock -1680 46 -129 minecraft:redstone_block
execute if block -1673 46 -141 minecraft:iron_door[open=false] if block -1671 44 -139 minecraft:lime_wool run setblock -1673 45 -141 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1673 45 -141 minecraft:structure_block run setblock -1673 46 -141 minecraft:redstone_block
execute if block -1645 46 -152 minecraft:iron_door[open=false] if block -1651 44 -156 minecraft:lime_wool run setblock -1645 45 -152 minecraft:structure_block[mode=load]{name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1645 45 -152 minecraft:structure_block run setblock -1645 46 -152 minecraft:redstone_block
execute if block -1699 46 -145 minecraft:iron_door[open=false] if block -1689 44 -156 minecraft:light_blue_wool run setblock -1699 45 -145 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1699 46 -145 minecraft:iron_door[open=true] if block -1689 44 -156 minecraft:blue_wool run setblock -1699 45 -145 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
execute if block -1699 45 -145 minecraft:structure_block run setblock -1699 46 -145 minecraft:redstone_block
execute if block -1686 46 -173 minecraft:iron_door[open=false] if block -1682 44 -171 minecraft:lime_wool run setblock -1686 45 -173 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1686 46 -173 minecraft:iron_door[open=false] if block -1684 44 -168 minecraft:lime_wool run setblock -1686 45 -173 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1686 46 -173 minecraft:iron_door[open=false] if block -1684 44 -169 minecraft:lime_wool run setblock -1686 45 -173 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1686 45 -173 minecraft:structure_block run setblock -1685 45 -173 minecraft:redstone_block
execute if block -1685 45 -173 minecraft:redstone_block run setblock -1685 45 -173 minecraft:air
execute if block -1680 44 -169 minecraft:lime_wool run tag @e[x=-1679.5,y=45,z=-164,tag=spring_wall.5,distance=..0.7] add enabled
execute if block -1684 44 -168 minecraft:lime_wool run tag @e[x=-1683.5,y=45,z=-164,tag=spring_wall.5,distance=..0.7] add enabled
execute if block -1684 44 -169 minecraft:lime_wool run tag @e[x=-1683.5,y=45,z=-164,tag=spring_wall.5,distance=..0.7] add enabled
execute if block -1682 44 -171 minecraft:lime_wool run tag @e[x=-1681.5,y=45,z=-174,tag=action_floor.5,distance=..0.7] add enabled
execute if block -1699 45 -124 minecraft:chest run setblock -1699 46 -124 minecraft:barrier
execute if block -1696 45 -124 minecraft:chest run setblock -1696 46 -124 minecraft:barrier
execute if block -1689 45 -132 minecraft:chest run setblock -1689 46 -132 minecraft:barrier
execute if block -1688 45 -129 minecraft:chest run setblock -1688 46 -129 minecraft:barrier
execute if block -1687 45 -129 minecraft:chest run setblock -1687 46 -129 minecraft:barrier
execute if block -1686 45 -133 minecraft:chest run setblock -1686 46 -133 minecraft:barrier
execute if block -1683 45 -131 minecraft:chest run setblock -1683 46 -131 minecraft:barrier
execute if block -1664 45 -133 minecraft:chest run setblock -1664 46 -133 minecraft:barrier
execute if block -1669 45 -143 minecraft:chest run setblock -1669 46 -143 minecraft:barrier
execute if block -1645 45 -176 minecraft:chest run setblock -1645 46 -176 minecraft:barrier
execute if block -1703 45 -144 minecraft:chest run setblock -1703 46 -144 minecraft:barrier
execute if block -1701 45 -143 minecraft:chest run setblock -1701 46 -143 minecraft:barrier
execute if block -1702 45 -142 minecraft:chest run setblock -1702 46 -142 minecraft:barrier
execute if block -1701 45 -140 minecraft:chest run setblock -1701 46 -140 minecraft:barrier
execute if block -1649 45 -176 minecraft:chest run setblock -1649 46 -176 minecraft:barrier
execute if block -1699 45 -124 minecraft:air if block -1699 46 -124 minecraft:barrier run summon minecraft:tnt -1699 45 -124 {CustomName:"{\"translate\":\"medabots_server:entity.bomb\"}",Fuse:100s,Tags:["hostile","killerable"]}
execute if block -1699 45 -124 minecraft:air run setblock -1699 46 -124 minecraft:air
execute if block -1696 45 -124 minecraft:air run setblock -1696 46 -124 minecraft:air
execute if block -1689 45 -132 minecraft:air run setblock -1689 46 -132 minecraft:air
execute if block -1688 45 -129 minecraft:air run setblock -1688 46 -129 minecraft:air
execute if block -1687 45 -129 minecraft:air run setblock -1687 46 -129 minecraft:air
execute if block -1686 45 -133 minecraft:air run setblock -1686 46 -133 minecraft:air
execute if block -1683 45 -131 minecraft:air run setblock -1683 46 -131 minecraft:air
execute if block -1664 45 -133 minecraft:air run setblock -1664 46 -133 minecraft:air
execute if block -1669 45 -143 minecraft:air run setblock -1669 46 -143 minecraft:air
execute if block -1645 45 -176 minecraft:air if block -1645 46 -176 minecraft:barrier run summon minecraft:tnt -1645 45 -176 {CustomName:"{\"translate\":\"medabots_server:entity.bomb\"}",Fuse:100s,Tags:["hostile","killerable"]}
execute if block -1645 45 -176 minecraft:air run setblock -1645 46 -176 minecraft:air
execute if block -1703 45 -144 minecraft:air run setblock -1703 46 -144 minecraft:air
execute if block -1701 45 -143 minecraft:air run setblock -1701 46 -143 minecraft:air
execute if block -1702 45 -142 minecraft:air if block -1702 46 -142 minecraft:barrier run summon minecraft:creeper -1702 45 -142 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:"{\"translate\":\"medabots_server:entity.guard\"}",Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
execute if block -1702 45 -142 minecraft:air run setblock -1702 46 -142 minecraft:air
execute if block -1701 45 -140 minecraft:air run setblock -1701 46 -140 minecraft:air
execute if block -1649 45 -176 minecraft:air run setblock -1649 46 -176 minecraft:air
execute if block -1662 46 -124 minecraft:iron_door[open=true] if block -1661 46 -134 minecraft:iron_door[open=false] if entity @s[x=-1662,y=45,z=-125,dx=3,dy=3,dz=3] run function medabots_server:stage/create/jungle_a/first_go_battle/0
execute if block -1662 46 -124 minecraft:iron_door[open=true] positioned -1652 45 -129 run function medabots_server:stage/wait_for_robattle_preventation
execute if entity @e[x=-1651.5,y=45,z=-126.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud] store result score @s BattlingMedabots if entity @e[x=-1662,y=42,z=-135,dx=17,dy=8,dz=17,scores={Stage=8,Medabot=0..,Battle=1..}]
execute if entity @e[x=-1651.5,y=45,z=-126.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud] run title @s[scores={BattlingMedabots=1}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if block -1662 46 -124 minecraft:iron_door[open=false] as @s[scores={BattlingMedabots=1}] run setblock -1662 45 -124 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1662 45 -124 minecraft:structure_block as @s[scores={BattlingMedabots=1}] run setblock -1662 45 -124 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1662 45 -124 minecraft:structure_block run setblock -1662 46 -124 minecraft:redstone_block
execute if block -1661 46 -134 minecraft:iron_door[open=false] as @s[scores={BattlingMedabots=1}] run setblock -1661 45 -134 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1661 45 -134 minecraft:structure_block run setblock -1661 46 -134 minecraft:redstone_block
execute if entity @s[scores={BattlingMedabots=1}] run kill @e[x=-1706,y=42,z=-179,dx=63,dy=7,dz=63,type=minecraft:area_effect_cloud,tag=mission]
execute if entity @s[scores={BattlingMedabots=1}] run bossbar set medabots_server:jungle_a/time players
execute if entity @s[scores={BattlingMedabots=2..,Battle=1}] store result score #temp Time run bossbar get medabots_server:jungle_a/time value
execute if entity @s[scores={BattlingMedabots=2..,Battle=1}] store result bossbar medabots_server:jungle_a/time value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if score #temp Time matches 0 as @e[x=-1706,y=42,z=-179,dx=63,dy=7,dz=63,type=minecraft:area_effect_cloud,tag=mission] at @s run function medabots_server:stage/mission_time_up
execute if entity @s[scores={BattlingMedabots=2..,Battle=1}] run scoreboard players reset #temp Time
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1687 46 -173 minecraft:iron_door[open=true] if entity @s[x=-1690,y=45,z=-175,dx=3,dy=3,dz=3] run function medabots_server:stage/create/jungle_a/first_go_battle/1
execute if block -1687 46 -173 minecraft:iron_door[open=true] positioned -1697 45 -167 run function medabots_server:stage/wait_for_robattle_preventation
execute if block -1687 45 -173 minecraft:structure_block run setblock -1688 45 -173 minecraft:redstone_block
execute if block -1688 45 -173 minecraft:redstone_block run setblock -1688 45 -173 minecraft:air
execute if entity @e[x=-1706,y=42,z=-179,dx=63,dy=8,dz=63,tag=mr_referee] store result score @s BattlingMedabots if entity @e[x=-1705,y=42,z=-179,dx=63,dy=8,dz=63,scores={Stage=8,Medabot=0..,Battle=1..}]
execute as @e[x=-1705,y=42,z=-179,dx=63,dy=8,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=8}] run scoreboard players set @s Stage 8
execute unless entity @s[x=-1705,y=42,z=-179,dx=63,dy=8,dz=63,scores={Battle=1..}] run function medabots_server:stage/clean_up/jungle_a/first_go
execute if entity @s[scores={BattlingMedabots=1}] run function medabots_server:stage/clean_up/jungle_a/first_go
stopsound @s[scores={BattlingMedabots=1}] music
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1}] -1673 51 -148 14
scoreboard players set @s[scores={BattlingMedabots=1}] Battle 0
scoreboard players set @s[scores={BattlingMedabots=1}] MusicType 1
scoreboard players set @s[scores={BattlingMedabots=1}] Music 299
advancement grant @s[scores={BattlingMedabots=1}] only medabots_server:stages/jungle_a_first_go
teleport @s[scores={BattlingMedabots=1}] -1673 51 -148 -180 0
execute if entity @s[scores={BattlingMedabots=1}] run bossbar set medabots_server:jungle_a/time players
execute if entity @s[scores={BattlingMedabots=2..,Battle=1}] store result score #temp Time run bossbar get medabots_server:jungle_a/time value
execute if entity @s[scores={BattlingMedabots=2..,Battle=1}] store result bossbar medabots_server:jungle_a/time value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if score #temp Time matches 0 as @e[x=-1706,y=42,z=-179,dx=63,dy=8,dz=63,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
execute if entity @s[scores={BattlingMedabots=2..,Battle=1}] run scoreboard players reset #temp Time
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots