execute unless entity @e[x=-1665,y=42,z=-637,dx=64,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=22},tag=enemy_medabot] run bossbar set medabots_server:paradise_b/time players @s[scores={Battle=1..}]
execute unless entity @e[x=-1665,y=42,z=-637,dx=64,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=22},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:paradise_b/time value
execute unless entity @e[x=-1665,y=42,z=-637,dx=64,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=22},tag=enemy_medabot] store result bossbar medabots_server:paradise_b/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[x=-1665,y=42,z=-637,dx=64,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=22},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:paradise_b/robattle value
execute if entity @e[x=-1665,y=42,z=-637,dx=64,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=22},tag=enemy_medabot] store result bossbar medabots_server:paradise_b/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[x=-1665,y=42,z=-637,dx=64,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=22},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1665,y=42,z=-637,dx=64,dy=7,dz=63,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/paradise_b/second_go
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute if block -1646 44 -631 minecraft:lime_wool run tag @e[x=-1644.5,y=45,z=-627.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1643 44 -622 minecraft:lime_wool run tag @e[x=-1647.5,y=45,z=-611.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1638 44 -635 minecraft:yellow_wool run scoreboard players remove @e[x=-1635.5,y=45,z=-633.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1638 44 -635 minecraft:yellow_wool run tag @e[x=-1635.5,y=45,z=-633.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1638 44 -635 minecraft:yellow_wool run scoreboard players add @e[x=-1653.5,y=45,z=-633.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1638 44 -635 minecraft:yellow_wool run tag @e[x=-1653.5,y=45,z=-633.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1638 44 -635 minecraft:orange_wool run scoreboard players add @e[x=-1635.5,y=45,z=-633.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if block -1638 44 -635 minecraft:orange_wool run tag @e[x=-1635.5,y=45,z=-633.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if block -1638 44 -635 minecraft:orange_wool run scoreboard players remove @e[x=-1653.5,y=45,z=-633.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if block -1638 44 -635 minecraft:orange_wool run tag @e[x=-1653.5,y=45,z=-633.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if block -1618 45 -588 minecraft:iron_door[open=true] if block -1615 45 -592 minecraft:air if entity @s[x=-1619,y=45,z=-591,dx=3,dy=3,dz=3] run function medabots_server:stage/create/paradise_b/second_go_battle/0
execute if entity @e[x=-1609.5,y=45,z=-589.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=22,Medabot=0..,Battle=1..2}]
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] as @e[x=-1609.5,y=45,z=-589.5,distance=..0.7,tag=mission,scores={Dialog=81}] unless entity @e[tag=mission_entity,scores={Stage=22}] run tag @s remove run_until_the_time_is_up
execute if entity @e[x=-1609.5,y=45,z=-589.5,distance=..0.7,tag=mission,tag=!run_until_the_time_is_up] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @e[x=-1609.5,y=45,z=-589.5,distance=..0.7,tag=mission,tag=!run_until_the_time_is_up] run tag @e[x=-1617.5,y=45,z=-587.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @e[x=-1609.5,y=45,z=-589.5,distance=..0.7,tag=mission,tag=!run_until_the_time_is_up] run bossbar set medabots_server:paradise_b/robattle players
kill @e[x=-1609.5,y=45,z=-589.5,distance=..0.7,tag=mission,tag=!run_until_the_time_is_up]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1656 45 -588 minecraft:iron_door[open=true] if block -1659 45 -585 minecraft:air if entity @s[x=-1658,y=45,z=-588,dx=3,dy=3,dz=3] run function medabots_server:stage/create/paradise_b/second_go_battle/1
execute if entity @e[x=-1657.5,y=45,z=-581.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=22,Medabot=0..,Battle=1..2}]
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] as @e[x=-1657.5,y=45,z=-581.5,distance=..0.7,tag=mission,scores={Dialog=81}] unless entity @e[tag=mission_entity,scores={Stage=22}] run tag @s remove run_until_the_time_is_up
execute if entity @e[x=-1657.5,y=45,z=-581.5,distance=..0.7,tag=mission,tag=!run_until_the_time_is_up] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @e[x=-1657.5,y=45,z=-581.5,distance=..0.7,tag=mission,tag=!run_until_the_time_is_up] run tag @e[x=-1655.5,y=45,z=-587.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @e[x=-1657.5,y=45,z=-581.5,distance=..0.7,tag=mission,tag=!run_until_the_time_is_up] run bossbar set medabots_server:paradise_b/robattle players
kill @e[x=-1657.5,y=45,z=-581.5,distance=..0.7,tag=mission,tag=!run_until_the_time_is_up]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1650 45 -599 minecraft:iron_door[open=true] if block -1648 45 -600 minecraft:air if entity @s[x=-1651,y=45,z=-602,dx=3,dy=3,dz=3] run function medabots_server:stage/create/paradise_b/second_go_battle/2
execute if entity @e[x=-1651.5,y=45,z=-600.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=22,Medabot=0..,Battle=1..2}]
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] as @e[x=-1651.5,y=45,z=-600.5,distance=..0.7,tag=mission,scores={Dialog=81}] unless entity @e[tag=mission_entity,scores={Stage=22}] run tag @s remove run_until_the_time_is_up
execute if entity @e[x=-1651.5,y=45,z=-600.5,distance=..0.7,tag=mission,tag=!run_until_the_time_is_up] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @e[x=-1651.5,y=45,z=-600.5,distance=..0.7,tag=mission,tag=!run_until_the_time_is_up] run tag @e[x=-1649.5,y=45,z=-598.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @e[x=-1651.5,y=45,z=-600.5,distance=..0.7,tag=mission,tag=!run_until_the_time_is_up] run bossbar set medabots_server:paradise_b/robattle players
kill @e[x=-1651.5,y=45,z=-600.5,distance=..0.7,tag=mission,tag=!run_until_the_time_is_up]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1644 45 -606 minecraft:iron_door[open=true] if block -1646 45 -608 minecraft:air if entity @s[x=-1645,y=44,z=-609,dx=3,dy=3,dz=3] run function medabots_server:stage/create/paradise_b/second_go_battle/3
execute if entity @e[x=-1640.5,y=45,z=-607.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=22,Medabot=0..,Battle=1..2}]
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] as @e[x=-1640.5,y=45,z=-607.5,distance=..0.7,tag=mission,scores={Dialog=81}] unless entity @e[tag=mission_entity,scores={Stage=22}] run tag @s remove run_until_the_time_is_up
execute if entity @e[x=-1640.5,y=45,z=-607.5,distance=..0.7,tag=mission,tag=!run_until_the_time_is_up] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @e[x=-1640.5,y=45,z=-607.5,distance=..0.7,tag=mission,tag=!run_until_the_time_is_up] run tag @e[x=-1643.5,y=45,z=-605.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @e[x=-1640.5,y=45,z=-607.5,distance=..0.7,tag=mission,tag=!run_until_the_time_is_up] run bossbar set medabots_server:paradise_b/robattle players
kill @e[x=-1640.5,y=45,z=-607.5,distance=..0.7,tag=mission,tag=!run_until_the_time_is_up]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1659 45 -627 minecraft:iron_door[open=true] if entity @s[x=-1661,y=45,z=-627,dx=3,dy=3,dz=3] run function medabots_server:stage/create/paradise_b/second_go_battle/4
execute if entity @e[x=-1665,y=42,z=-637,dx=64,dy=7,dz=63,tag=mr_referee] store result score @s BattlingMedabots if entity @e[scores={Stage=22,Medabot=0..,Battle=1..2}]
execute as @e[x=-1665,y=42,z=-637,dx=64,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=22}] run scoreboard players set @s Stage 22
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/paradise_b/second_go
stopsound @s[scores={BattlingMedabots=1,Battle=1..}] music
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1,Battle=1..}] -1634 51 -606 1000
scoreboard players set @s[scores={BattlingMedabots=1,Battle=1..}] MusicType 1
scoreboard players set @s[scores={BattlingMedabots=1,Battle=1..}] Music 299
advancement grant @s[scores={BattlingMedabots=1,Battle=1..}] only medabots_server:stages/wave_1/paradise_b_second_go
teleport @s[scores={BattlingMedabots=1,Battle=1..}] -1634 51 -606 -180 0
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:paradise_b/robattle players
scoreboard players set @s[scores={BattlingMedabots=1,Battle=1..}] Battle 0
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots