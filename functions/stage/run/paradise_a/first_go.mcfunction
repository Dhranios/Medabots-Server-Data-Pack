execute unless entity @e[scores={Stage=21},tag=hide_normal_time] run bossbar set medabots_server:paradise_a/time players @s[scores={Battle=1..}]
execute unless entity @e[scores={Stage=21},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:paradise_a/time value
execute unless entity @e[scores={Stage=21},tag=hide_normal_time] store result bossbar medabots_server:paradise_a/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=21},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:paradise_a/robattle value
execute if entity @e[scores={Stage=21},tag=hide_normal_time] if entity @e[scores={Stage=21,Medabot=0..,Battle=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:paradise_a/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=21},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1761,y=0,z=-730,dx=94,dy=49,dz=94,tag=mission] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=21},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1761,y=0,z=-730,dx=94,dy=49,dz=94,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/paradise_a/first_go
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute if block -1689 44 -641 minecraft:lime_wool run scoreboard players set @e[x=-1697.5,y=45,z=-712.5,distance=..0.7,tag=door,scores={PowerNeeded=1}] PowerAmount 1
execute if block -1728 44 -642 minecraft:lime_wool run scoreboard players set @e[x=-1729.5,y=45,z=-711.5,distance=..0.7,tag=door,scores={PowerNeeded=1}] PowerAmount 1
execute if block -1697 44 -728 minecraft:lime_wool if block -1734 44 -715 minecraft:lime_wool run scoreboard players set @e[x=-1713.5,y=45,z=-705.5,distance=..0.7,tag=door,scores={PowerNeeded=1}] PowerAmount 1
execute if block -1722 44 -670 minecraft:yellow_wool run scoreboard players add @e[x=-1720.5,y=45,z=-669.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1722 44 -670 minecraft:yellow_wool run tag @e[x=-1720.5,y=45,z=-669.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1722 44 -670 minecraft:yellow_wool run scoreboard players set @e[x=-1720.5,y=45,z=-667.5,distance=..0.7,tag=laser_trap,scores={PowerAmount=0}] PowerAmount 1
execute if block -1722 44 -670 minecraft:yellow_wool run scoreboard players set @e[x=-1720.5,y=45,z=-674.5,distance=..0.7,tag=laser_trap,scores={PowerAmount=0}] PowerAmount 1
execute if block -1722 44 -670 minecraft:orange_wool run scoreboard players remove @e[x=-1720.5,y=45,z=-669.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if block -1722 44 -670 minecraft:orange_wool run tag @e[x=-1720.5,y=45,z=-669.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if block -1722 44 -670 minecraft:orange_wool run scoreboard players set @e[x=-1720.5,y=45,z=-667.5,distance=..0.7,tag=laser_trap,scores={PowerAmount=1}] PowerAmount 0
execute if block -1722 44 -670 minecraft:orange_wool run scoreboard players set @e[x=-1720.5,y=45,z=-674.5,distance=..0.7,tag=laser_trap,scores={PowerAmount=1}] PowerAmount 0
execute if block -1707 44 -670 minecraft:yellow_wool run scoreboard players add @e[x=-1706.5,y=45,z=-670.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1707 44 -670 minecraft:yellow_wool run tag @e[x=-1706.5,y=45,z=-670.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1707 44 -670 minecraft:yellow_wool run scoreboard players set @e[x=-1704.5,y=45,z=-670.5,distance=..0.7,tag=laser_trap,scores={PowerAmount=0}] PowerAmount 1
execute if block -1707 44 -670 minecraft:yellow_wool run scoreboard players set @e[x=-1711.5,y=45,z=-670.5,distance=..0.7,tag=laser_trap,scores={PowerAmount=0}] PowerAmount 1
execute if block -1707 44 -670 minecraft:orange_wool run scoreboard players remove @e[x=-1706.5,y=45,z=-670.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if block -1707 44 -670 minecraft:orange_wool run tag @e[x=-1706.5,y=45,z=-670.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if block -1707 44 -670 minecraft:orange_wool run scoreboard players set @e[x=-1704.5,y=45,z=-670.5,distance=..0.7,tag=laser_trap,scores={PowerAmount=1}] PowerAmount 0
execute if block -1707 44 -670 minecraft:orange_wool run scoreboard players set @e[x=-1711.5,y=45,z=-670.5,distance=..0.7,tag=laser_trap,scores={PowerAmount=1}] PowerAmount 0
execute if block -1707 44 -685 minecraft:yellow_wool run scoreboard players add @e[x=-1707.5,y=45,z=-684.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1707 44 -685 minecraft:yellow_wool run tag @e[x=-1707.5,y=45,z=-684.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1707 44 -685 minecraft:yellow_wool run scoreboard players set @e[x=-1707.5,y=45,z=-686.5,distance=..0.7,tag=laser_trap,scores={PowerAmount=0}] PowerAmount 1
execute if block -1707 44 -685 minecraft:yellow_wool run scoreboard players set @e[x=-1707.5,y=45,z=-679.5,distance=..0.7,tag=laser_trap,scores={PowerAmount=0}] PowerAmount 1
execute if block -1707 44 -685 minecraft:orange_wool run scoreboard players remove @e[x=-1707.5,y=45,z=-684.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if block -1707 44 -685 minecraft:orange_wool run tag @e[x=-1707.5,y=45,z=-684.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if block -1707 44 -685 minecraft:orange_wool run scoreboard players set @e[x=-1707.5,y=45,z=-686.5,distance=..0.7,tag=laser_trap,scores={PowerAmount=1}] PowerAmount 0
execute if block -1707 44 -685 minecraft:orange_wool run scoreboard players set @e[x=-1707.5,y=45,z=-679.5,distance=..0.7,tag=laser_trap,scores={PowerAmount=1}] PowerAmount 0
execute if block -1722 44 -685 minecraft:yellow_wool run scoreboard players add @e[x=-1721.5,y=45,z=-683.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1722 44 -685 minecraft:yellow_wool run tag @e[x=-1721.5,y=45,z=-683.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1722 44 -685 minecraft:yellow_wool run scoreboard players set @e[x=-1723.5,y=45,z=-683.5,distance=..0.7,tag=laser_trap,scores={PowerAmount=0}] PowerAmount 1
execute if block -1722 44 -685 minecraft:yellow_wool run scoreboard players set @e[x=-1716.5,y=45,z=-683.5,distance=..0.7,tag=laser_trap,scores={PowerAmount=0}] PowerAmount 1
execute if block -1722 44 -685 minecraft:orange_wool run scoreboard players remove @e[x=-1721.5,y=45,z=-683.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if block -1722 44 -685 minecraft:orange_wool run tag @e[x=-1721.5,y=45,z=-683.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if block -1722 44 -685 minecraft:orange_wool run scoreboard players set @e[x=-1723.5,y=45,z=-683.5,distance=..0.7,tag=laser_trap,scores={PowerAmount=1}] PowerAmount 0
execute if block -1722 44 -685 minecraft:orange_wool run scoreboard players set @e[x=-1716.5,y=45,z=-683.5,distance=..0.7,tag=laser_trap,scores={PowerAmount=1}] PowerAmount 0
execute if block -1683 45 -694 minecraft:iron_door[open=true] if block -1689 45 -645 minecraft:iron_door[open=false] if entity @s[x=-1685,y=45,z=-694,dx=3,dy=3,dz=3] run function medabots_server:stage/create/paradise_a/first_go_battle/0
execute if entity @e[x=-1672.5,y=45,z=-648.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=21,Medabot=0..,Battle=1..2}]
execute if entity @e[x=-1672.5,y=45,z=-648.5,distance=..0.7,tag=mission,scores={Dialog=81}] unless entity @e[scores={Stage=21},tag=guard,tag=mission_entity] run tag @s add mission_success
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1682.5,y=45,z=-693.5,distance=..0.7,tag=door,scores={PowerNeeded=1}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1688.5,y=45,z=-644.5,distance=..0.7,tag=door,scores={PowerNeeded=1}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=-1761,y=0,z=-730,dx=94,dy=49,dz=94,tag=mission]
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=21,Medabot=0..,Battle=1..},type=!minecraft:player] add dead
execute if entity @s[tag=mission_success] run scoreboard players set @a[scores={Stage=21,Medabot=0..,Battle=1..2},tag=enemy_medabot] LeaveStage 1
execute if entity @s[tag=mission_success] run bossbar set medabots_server:paradise_a/robattle players
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1692 45 -708 minecraft:iron_door[open=true] unless block -1689 44 -715 minecraft:lime_wool if entity @s[x=-1692,y=45,z=-709,dx=3,dy=3,dz=3] run function medabots_server:stage/create/paradise_a/first_go_battle/1
execute if entity @e[x=-1687.5,y=45,z=-713.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=21,Medabot=0..,Battle=1..2}]
execute if entity @e[x=-1687.5,y=45,z=-713.5,distance=..0.7,tag=mission,scores={Dialog=81}] if block -1684 44 -708 minecraft:lime_wool if block -1677 44 -708 minecraft:lime_wool if block -1672 44 -709 minecraft:lime_wool if block -1671 44 -715 minecraft:lime_wool if block -1672 44 -720 minecraft:lime_wool if block -1689 44 -715 minecraft:lime_wool if block -1689 44 -720 minecraft:lime_wool if block -1690 44 -727 minecraft:lime_wool if block -1683 44 -721 minecraft:lime_wool if block -1684 44 -726 minecraft:lime_wool if block -1684 44 -715 minecraft:lime_wool if block -1677 44 -715 minecraft:lime_wool if block -1678 44 -721 minecraft:lime_wool if block -1677 44 -726 minecraft:lime_wool if block -1671 44 -727 minecraft:lime_wool run tag @s add mission_success
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1691.5,y=45,z=-707.5,distance=..0.7,tag=door,scores={PowerNeeded=1}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=-1761,y=0,z=-730,dx=94,dy=49,dz=94,tag=mission]
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=21,Medabot=0..,Battle=1..},type=!minecraft:player] add dead
execute if entity @s[tag=mission_success] run scoreboard players set @a[scores={Stage=21,Medabot=0..,Battle=1..2},tag=enemy_medabot] LeaveStage 1
execute if entity @s[tag=mission_success] run bossbar set medabots_server:paradise_a/robattle players
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1709 45 -712 minecraft:iron_door[open=true] unless block -1722 44 -718 minecraft:lime_wool if entity @s[x=-1710,y=45,z=-715,dx=3,dy=3,dz=3] run function medabots_server:stage/create/paradise_a/first_go_battle/2
execute if entity @e[x=-1717.5,y=45,z=-718.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=21,Medabot=0..,Battle=1..2}]
execute if entity @e[x=-1717.5,y=45,z=-718.5,distance=..0.7,tag=mission,scores={Dialog=81}] if block -1713 44 -723 minecraft:lime_wool if block -1720 44 -728 minecraft:lime_wool if block -1722 44 -724 minecraft:lime_wool if block -1725 44 -722 minecraft:lime_wool if block -1731 44 -718 minecraft:lime_wool if block -1733 44 -728 minecraft:light_blue_wool run tag @s add mission_success
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1708.5,y=45,z=-711.5,distance=..0.7,tag=door,scores={PowerNeeded=1}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=-1761,y=0,z=-730,dx=94,dy=49,dz=94,tag=mission]
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=21,Medabot=0..,Battle=1..},type=!minecraft:player] add dead
execute if entity @s[tag=mission_success] run scoreboard players set @a[scores={Stage=21,Medabot=0..,Battle=1..2},tag=enemy_medabot] LeaveStage 1
execute if entity @s[tag=mission_success] run bossbar set medabots_server:paradise_a/robattle players
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1740 45 -708 minecraft:iron_door[open=true] if block -1749 44 -724 minecraft:water if entity @s[x=-1741,y=45,z=-711,dx=3,dy=3,dz=3] run function medabots_server:stage/create/paradise_a/first_go_battle/3
execute if entity @e[x=-1742.5,y=45,z=-712.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=21,Medabot=0..,Battle=1..2}]
execute if entity @e[x=-1742.5,y=45,z=-712.5,distance=..0.7,tag=mission,scores={Dialog=81}] unless entity @e[scores={Stage=21},tag=cannon,tag=mission_entity] run tag @s add mission_success
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1739.5,y=45,z=-707.5,distance=..0.7,tag=door,scores={PowerNeeded=1}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=-1761,y=0,z=-730,dx=94,dy=49,dz=94,tag=mission]
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=21,Medabot=0..,Battle=1..},type=!minecraft:player] add dead
execute if entity @s[tag=mission_success] run scoreboard players set @a[scores={Stage=21,Medabot=0..,Battle=1..2},tag=enemy_medabot] LeaveStage 1
execute if entity @s[tag=mission_success] run bossbar set medabots_server:paradise_a/robattle players
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1714 45 -705 minecraft:iron_door[open=true] if block -1710 45 -701 minecraft:air if entity @s[x=-1716,y=45,z=-705,dx=3,dy=3,dz=3] run function medabots_server:stage/create/paradise_a/first_go_battle/4
execute if entity @e[x=-1713.5,y=45,z=-698.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=21,Medabot=0..,Battle=1..2}]
title @s[scores={BattlingMedabots=1,Battle=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run scoreboard players set @e[x=-1713.5,y=45,z=-704.5,distance=..0.7,tag=door,scores={PowerNeeded=1}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run kill @e[x=-1761,y=0,z=-730,dx=94,dy=49,dz=94,tag=mission]
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:paradise_a/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1740 45 -682 minecraft:iron_door[open=true] if block -1743 45 -663 minecraft:iron_door[open=false] if entity @s[x=-1742,y=45,z=-682,dx=3,dy=3,dz=3] run function medabots_server:stage/create/paradise_a/first_go_battle/5
execute if entity @e[x=-1745.5,y=45,z=-669.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=21,Medabot=0..,Battle=1..2}]
execute if entity @e[x=-1745.5,y=45,z=-669.5,distance=..0.7,tag=mission,scores={Dialog=81}] unless entity @e[scores={Stage=21},tag=cannon,tag=mission_entity] run tag @s add mission_success
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1739.5,y=45,z=-681.5,distance=..0.7,tag=door,scores={PowerNeeded=1}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1742.5,y=45,z=-662.5,distance=..0.7,tag=door,scores={PowerNeeded=1}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=-1761,y=0,z=-730,dx=94,dy=49,dz=94,tag=mission]
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=21,Medabot=0..,Battle=1..},type=!minecraft:player] add dead
execute if entity @s[tag=mission_success] run scoreboard players set @a[scores={Stage=21,Medabot=0..,Battle=1..2},tag=enemy_medabot] LeaveStage 1
execute if entity @s[tag=mission_success] run bossbar set medabots_server:paradise_a/robattle players
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1742 45 -662 minecraft:iron_door[open=true] if block -1725 45 -649 minecraft:iron_door[open=false] if entity @s[x=-1744,y=45,z=-662,dx=3,dy=3,dz=3] run function medabots_server:stage/create/paradise_a/first_go_battle/6
execute if entity @e[x=-1744.5,y=45,z=-652.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=21,Medabot=0..,Battle=1..2}]
execute if entity @e[x=-1744.5,y=45,z=-652.5,distance=..0.7,tag=mission,scores={Dialog=81}] unless entity @e[scores={Stage=21},tag=guard,tag=mission_entity] run tag @s add mission_success
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1741.5,y=45,z=-661.5,distance=..0.7,tag=door,scores={PowerNeeded=1}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1724.5,y=45,z=-648.5,distance=..0.7,tag=door,scores={PowerNeeded=1}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=-1761,y=0,z=-730,dx=94,dy=49,dz=94,tag=mission]
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=21,Medabot=0..,Battle=1..},type=!minecraft:player] add dead
execute if entity @s[tag=mission_success] run scoreboard players set @a[scores={Stage=21,Medabot=0..,Battle=1..2},tag=enemy_medabot] LeaveStage 1
execute if entity @s[tag=mission_success] run bossbar set medabots_server:paradise_a/robattle players
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1724 45 -650 minecraft:iron_door[open=true] if block -1715 45 -663 minecraft:iron_door[open=false] if entity @s[x=-1724,y=45,z=-651,dx=3,dy=3,dz=3] run function medabots_server:stage/create/paradise_a/first_go_battle/7
execute if entity @e[x=-1713.5,y=45,z=-648.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=21,Medabot=0..,Battle=1..2}]
title @s[scores={BattlingMedabots=1,Battle=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run scoreboard players set @e[x=-1723.5,y=45,z=-649.5,distance=..0.7,tag=door,scores={PowerNeeded=1}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run scoreboard players set @e[x=-1714.5,y=45,z=-662.5,distance=..0.7,tag=door,scores={PowerNeeded=1}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run kill @e[x=-1761,y=0,z=-730,dx=94,dy=49,dz=94,tag=mission]
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:paradise_a/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1715 45 -666 minecraft:iron_door[open=true] if entity @s[x=-1716,y=45,z=-669,dx=3,dy=3,dz=3] run function medabots_server:stage/create/paradise_a/first_go_battle/8
execute if entity @e[x=-1761,y=0,z=-730,dx=94,dy=49,dz=94,tag=mr_referee] store result score @s BattlingMedabots if entity @e[scores={Stage=21,Medabot=0..,Battle=1..2}]
execute as @e[x=-1761,y=0,z=-730,dx=94,dy=49,dz=94,type=!minecraft:player] unless entity @s[scores={Stage=21}] run scoreboard players set @s Stage 21
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/paradise_a/first_go
advancement grant @s[scores={BattlingMedabots=1,Battle=1..}] only medabots_server:stages/wave_1/paradise_a_first_go
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:paradise_a/robattle players
tag @s[scores={BattlingMedabots=1,Battle=1..},advancements={medabots_server:story_progression/infinity={seaslug_returns=true,seaslug_eliminated=false}}] add dialog_infinity_seaslug_eliminated
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1714 51 -683 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots