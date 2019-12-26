execute unless entity @e[scores={Stage=17},tag=hide_normal_time] run bossbar set medabots_server:ruins_in_b/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=17},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:ruins_in_b/time value
execute unless entity @e[scores={Stage=17},tag=hide_normal_time] store result bossbar medabots_server:ruins_in_b/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=17},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:ruins_in_b/robattle value
execute if entity @e[scores={Stage=17},tag=hide_normal_time] if entity @e[scores={Stage=17,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:ruins_in_b/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=17},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1666,y=0,z=-572,dx=92,dy=49,dz=92,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={State=0}] run function medabots_server:stage/clean_up/ruins_in_b
execute if entity @s[scores={State=0}] run function medabots_server:other/death
execute if block -1662 43 -511 minecraft:light_blue_wool run scoreboard players set @e[x=-1617.5,y=44,z=-501.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1663 43 -511 minecraft:light_blue_wool run scoreboard players set @e[x=-1617.5,y=44,z=-501.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1615 43 -502 minecraft:lime_wool run scoreboard players set @e[x=-1617.5,y=44,z=-501.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1615 43 -502 minecraft:green_wool if block -1662 43 -511 minecraft:blue_wool if block -1663 43 -511 minecraft:blue_wool run scoreboard players set @e[x=-1617.5,y=44,z=-501.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1663 43 -515 minecraft:light_blue_wool run scoreboard players set @e[x=-1626.5,y=44,z=-512.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1663 43 -515 minecraft:blue_wool run scoreboard players set @e[x=-1626.5,y=44,z=-512.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1590 43 -513 minecraft:lime_wool run scoreboard players set @e[x=-1613.5,y=44,z=-513.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1659 43 -547 minecraft:lime_wool run scoreboard players set @e[x=-1626.5,y=44,z=-525.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1594 43 -542 minecraft:light_blue_wool run scoreboard players set @e[x=-1613.5,y=44,z=-526.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1594 43 -542 minecraft:blue_wool run scoreboard players set @e[x=-1613.5,y=44,z=-526.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1608 43 -527 minecraft:lime_wool if block -1608 43 -513 minecraft:lime_wool if block -1633 43 -527 minecraft:lime_wool if block -1633 43 -513 minecraft:lime_wool run scoreboard players set @e[x=-1620.5,y=44,z=-546.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1642 43 -485 minecraft:light_blue_wool run scoreboard players set @e[x=-1637,y=44,z=-487,distance=..4,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1642 43 -485 minecraft:light_blue_wool run scoreboard players set @e[x=-1645.5,y=44,z=-486.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1642 43 -485 minecraft:light_blue_wool run scoreboard players set @e[x=-1662,y=44,z=-511,distance=..5,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1642 43 -485 minecraft:blue_wool run scoreboard players set @e[x=-1637,y=44,z=-487,distance=..4,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1642 43 -485 minecraft:blue_wool run scoreboard players set @e[x=-1645.5,y=44,z=-486.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1642 43 -485 minecraft:blue_wool run scoreboard players set @e[x=-1662,y=44,z=-511,distance=..5,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1589 43 -510 minecraft:light_blue_wool run scoreboard players set @e[x=-1625.5,y=44,z=-496.5,distance=..0.7,tag=press_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1628 43 -495 minecraft:lime_wool run scoreboard players set @e[x=-1625.5,y=44,z=-496.5,distance=..0.7,tag=press_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1628 43 -495 minecraft:green_wool if block -1589 43 -510 minecraft:blue_wool run scoreboard players set @e[x=-1625.5,y=44,z=-496.5,distance=..0.7,tag=press_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1644 43 -494 minecraft:light_blue_wool run scoreboard players set @e[x=-1637,y=44,z=-496,distance=..4,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1644 43 -494 minecraft:blue_wool run scoreboard players set @e[x=-1637,y=44,z=-496,distance=..4,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1653 43 -548 minecraft:green_wool run scoreboard players set @e[x=-1614.5,y=44,z=-484.5,distance=..0.7,tag=press_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1653 43 -548 minecraft:lime_wool run scoreboard players set @e[x=-1614.5,y=44,z=-484.5,distance=..0.7,tag=press_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1653 43 -550 minecraft:light_blue_wool if block -1647 43 -550 minecraft:light_blue_wool run scoreboard players set @e[x=-1646.5,y=44,z=-546.5,distance=..0.7,tag=spring_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1653 43 -550 minecraft:blue_wool run scoreboard players set @e[x=-1646.5,y=44,z=-546.5,distance=..0.7,tag=spring_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1647 43 -550 minecraft:blue_wool run scoreboard players set @e[x=-1646.5,y=44,z=-546.5,distance=..0.7,tag=spring_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1647 43 -545 minecraft:light_blue_wool run scoreboard players set @e[x=-1653,y=44,z=-541,distance=..3,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1647 43 -545 minecraft:blue_wool run scoreboard players set @e[x=-1653,y=44,z=-541,distance=..3,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1585 43 -517 minecraft:light_blue_wool run scoreboard players set @e[x=-1657.5,y=44,z=-549.5,distance=..0.7,tag=press_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1659 43 -551 minecraft:lime_wool run scoreboard players set @e[x=-1657.5,y=44,z=-549.5,distance=..0.7,tag=press_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1659 43 -551 minecraft:green_wool if block -1585 43 -517 minecraft:blue_wool run scoreboard players set @e[x=-1657.5,y=44,z=-549.5,distance=..0.7,tag=press_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1637 43 -568 minecraft:light_blue_wool if block -1637 43 -565 minecraft:light_blue_wool run scoreboard players set @e[x=-1639.5,y=44,z=-571.5,distance=..0.7,tag=spring_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1637 43 -568 minecraft:blue_wool run scoreboard players set @e[x=-1639.5,y=44,z=-571.5,distance=..0.7,tag=spring_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1637 43 -565 minecraft:blue_wool run scoreboard players set @e[x=-1639.5,y=44,z=-571.5,distance=..0.7,tag=spring_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1638 43 -572 minecraft:blue_wool if block -1664 43 -561 minecraft:light_blue_wool run scoreboard players set @e[x=-1652.5,y=44,z=-571.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1664 43 -561 minecraft:blue_wool run scoreboard players set @e[x=-1652.5,y=44,z=-571.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1638 43 -572 minecraft:light_blue_wool run scoreboard players set @e[x=-1652.5,y=44,z=-571.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1638 43 -572 minecraft:blue_wool if block -1664 43 -565 minecraft:light_blue_wool run scoreboard players set @e[x=-1650.5,y=44,z=-571.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1664 43 -565 minecraft:blue_wool run scoreboard players set @e[x=-1650.5,y=44,z=-571.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1638 43 -572 minecraft:light_blue_wool run scoreboard players set @e[x=-1650.5,y=44,z=-571.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1638 43 -572 minecraft:blue_wool if block -1664 43 -568 minecraft:light_blue_wool run scoreboard players set @e[x=-1648.5,y=44,z=-571.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1664 43 -568 minecraft:blue_wool run scoreboard players set @e[x=-1648.5,y=44,z=-571.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1638 43 -572 minecraft:light_blue_wool run scoreboard players set @e[x=-1648.5,y=44,z=-571.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1638 43 -572 minecraft:blue_wool if block -1662 43 -561 minecraft:light_blue_wool run scoreboard players set @e[x=-1653.5,y=44,z=-560.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1662 43 -561 minecraft:blue_wool run scoreboard players set @e[x=-1653.5,y=44,z=-560.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1638 43 -572 minecraft:light_blue_wool run scoreboard players set @e[x=-1653.5,y=44,z=-560.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1638 43 -572 minecraft:blue_wool if block -1662 43 -565 minecraft:light_blue_wool run scoreboard players set @e[x=-1651.5,y=44,z=-560.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1662 43 -565 minecraft:blue_wool run scoreboard players set @e[x=-1651.5,y=44,z=-560.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1638 43 -572 minecraft:light_blue_wool run scoreboard players set @e[x=-1651.5,y=44,z=-560.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1638 43 -572 minecraft:blue_wool if block -1662 43 -568 minecraft:light_blue_wool run scoreboard players set @e[x=-1649.5,y=44,z=-560.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1662 43 -568 minecraft:blue_wool run scoreboard players set @e[x=-1649.5,y=44,z=-560.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1638 43 -572 minecraft:light_blue_wool run scoreboard players set @e[x=-1649.5,y=44,z=-560.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1639 43 -544 minecraft:green_wool run scoreboard players set @e[x=-1575.5,y=44,z=-525.5,distance=..0.7,tag=press_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1639 43 -544 minecraft:lime_wool run scoreboard players set @e[x=-1575.5,y=44,z=-525.5,distance=..0.7,tag=press_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1624 43 -539 minecraft:light_blue_wool if block -1617 43 -539 minecraft:light_blue_wool if block -1616 43 -544 minecraft:light_blue_wool run scoreboard players set @e[x=-1614.5,y=44,z=-536.5,distance=..0.7,tag=spring_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1624 43 -539 minecraft:blue_wool run scoreboard players set @e[x=-1614.5,y=44,z=-536.5,distance=..0.7,tag=spring_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1617 43 -539 minecraft:blue_wool run scoreboard players set @e[x=-1614.5,y=44,z=-536.5,distance=..0.7,tag=spring_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1616 43 -544 minecraft:blue_wool run scoreboard players set @e[x=-1614.5,y=44,z=-536.5,distance=..0.7,tag=spring_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1615 43 -534 minecraft:light_blue_wool run scoreboard players set @e[x=-1620,y=44,z=-542,distance=..5,tag=press_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1615 43 -534 minecraft:blue_wool run scoreboard players set @e[x=-1620,y=44,z=-542,distance=..5,tag=press_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1615 43 -534 minecraft:light_blue_wool run scoreboard players set @e[x=-1619,y=44,z=-507,distance=..4,tag=press_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1615 43 -534 minecraft:blue_wool run scoreboard players set @e[x=-1619,y=44,z=-507,distance=..4,tag=press_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1613 44 -527 minecraft:iron_door[open=true] unless block -1608 43 -527 #minecraft:wool if entity @s[x=-1613,y=44,z=-528,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_in_b/dev_fvbico_battle/0
execute if entity @e[x=-1607.5,y=44,z=-525.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=17,Medabot=0..,State=1..2}]
title @s[scores={BattlingMedabots=1,State=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=-1612.5,y=44,z=-526.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:ruins_in_b/robattle players
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run kill @e[x=-1666,y=0,z=-572,dx=92,dy=49,dz=92,tag=mission,type=minecraft:area_effect_cloud]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1613 44 -514 minecraft:iron_door[open=true] unless block -1608 43 -513 #minecraft:wool if entity @s[x=-1613,y=44,z=-515,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_in_b/dev_fvbico_battle/1
execute if entity @e[x=-1607.5,y=44,z=-511.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=17,Medabot=0..,State=1..2}]
title @s[scores={BattlingMedabots=1,State=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=-1612.5,y=44,z=-513.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:ruins_in_b/robattle players
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run kill @e[x=-1666,y=0,z=-572,dx=92,dy=49,dz=92,tag=mission,type=minecraft:area_effect_cloud]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1628 44 -526 minecraft:iron_door[open=true] unless block -1633 43 -527 #minecraft:wool if entity @s[x=-1631,y=44,z=-528,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_in_b/dev_fvbico_battle/2
execute if entity @e[x=-1632.5,y=44,z=-525.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=17,Medabot=0..,State=1..2}]
title @s[scores={BattlingMedabots=1,State=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=-1627.5,y=44,z=-525.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:ruins_in_b/robattle players
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run kill @e[x=-1666,y=0,z=-572,dx=92,dy=49,dz=92,tag=mission,type=minecraft:area_effect_cloud]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1628 44 -513 minecraft:iron_door[open=true] unless block -1633 43 -513 #minecraft:wool if entity @s[x=-1631,y=44,z=-515,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_in_b/dev_fvbico_battle/3
execute if entity @e[x=-1632.5,y=44,z=-511.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=17,Medabot=0..,State=1..2}]
title @s[scores={BattlingMedabots=1,State=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=-1627.5,y=44,z=-512.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:ruins_in_b/robattle players
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run kill @e[x=-1666,y=0,z=-572,dx=92,dy=49,dz=92,tag=mission,type=minecraft:area_effect_cloud]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1621 44 -552 minecraft:iron_door[open=true] if block -1620 44 -484 minecraft:iron_door[open=false] if entity @s[x=-1622,y=44,z=-555,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_in_b/dev_fvbico_battle/4
execute if entity @e[x=-1619.5,y=44,z=-561.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=17,Medabot=0..,State=1..2}]
title @s[scores={BattlingMedabots=1,State=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=-1620.5,y=44,z=-551.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=-1619.5,y=44,z=-483.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:ruins_in_b/robattle players
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run kill @e[x=-1666,y=0,z=-572,dx=92,dy=49,dz=92,tag=mission,type=minecraft:area_effect_cloud]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute as @e[x=-1666,y=0,z=-572,dx=92,dy=49,dz=92,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 17
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/ruins_in_b
advancement grant @s[tag=clear_stage] only medabots_server:developer_challenge/ruins_in_b_fvbico
tag @s[tag=clear_stage,advancements={medabots_server:story_progression/other={ruins_in_b_fvbico=true,ruins_in_b_fvbico_cleared=false}}] add dialog_other_ruins_in_b_fvbico_cleared
execute if entity @s[tag=clear_stage] positioned -1620 50 -526 run function medabots_server:stage/clear
