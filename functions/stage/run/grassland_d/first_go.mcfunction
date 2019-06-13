execute unless entity @e[x=-1600,y=42,z=-750,dx=62,dy=7,dz=62,scores={Medabot=0..,Battle=1..2,Stage=30},tag=enemy_medabot] run bossbar set medabots_server:grassland_d/time players @s[scores={Battle=1..}]
execute unless entity @e[x=-1600,y=42,z=-750,dx=62,dy=7,dz=62,scores={Medabot=0..,Battle=1..2,Stage=30},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:grassland_d/time value
execute unless entity @e[x=-1600,y=42,z=-750,dx=62,dy=7,dz=62,scores={Medabot=0..,Battle=1..2,Stage=30},tag=enemy_medabot] store result bossbar medabots_server:grassland_d/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[x=-1600,y=42,z=-750,dx=62,dy=7,dz=62,scores={Medabot=0..,Battle=1..2,Stage=30},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:grassland_d/robattle value
execute if entity @e[x=-1600,y=42,z=-750,dx=62,dy=7,dz=62,scores={Medabot=0..,Battle=1..2,Stage=30},tag=enemy_medabot] store result bossbar medabots_server:grassland_d/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[x=-1600,y=42,z=-750,dx=62,dy=7,dz=62,scores={Medabot=0..,Battle=1..2,Stage=30},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1600,y=42,z=-750,dx=62,dy=7,dz=62,tag=mission] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[x=-1600,y=42,z=-750,dx=62,dy=7,dz=62,scores={Medabot=0..,Battle=1..2,Stage=30},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1600,y=42,z=-750,dx=62,dy=7,dz=62,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/grassland_d/first_go
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute if block -1547 44 -697 minecraft:yellow_wool run tag @e[x=-1558.5,y=45,z=-699.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1550 44 -700 minecraft:yellow_wool run tag @e[x=-1558.5,y=45,z=-699.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1548 44 -707 minecraft:lime_wool run tag @e[x=-1558.5,y=45,z=-699.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1548 44 -707 minecraft:green_wool if block -1550 44 -700 minecraft:orange_wool if block -1547 44 -697 minecraft:orange_wool run tag @e[x=-1558.5,y=45,z=-699.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1547 44 -697 minecraft:yellow_wool run tag @e[x=-1548.5,y=45,z=-703.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1550 44 -700 minecraft:yellow_wool run tag @e[x=-1548.5,y=45,z=-703.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1548 44 -707 minecraft:lime_wool run tag @e[x=-1548.5,y=45,z=-703.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1548 44 -707 minecraft:green_wool if block -1550 44 -700 minecraft:orange_wool if block -1547 44 -697 minecraft:orange_wool run tag @e[x=-1548.5,y=45,z=-703.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1584 44 -707 minecraft:yellow_wool run tag @e[x=-1583.5,y=45,z=-712.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1586 44 -710 minecraft:yellow_wool run tag @e[x=-1583.5,y=45,z=-712.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1582 44 -710 minecraft:yellow_wool run tag @e[x=-1583.5,y=45,z=-712.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1582 44 -710 minecraft:orange_wool if block -1586 44 -710 minecraft:orange_wool if block -1584 44 -707 minecraft:orange_wool run tag @e[x=-1583.5,y=45,z=-712.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1582 44 -710 minecraft:orange_wool if block -1586 44 -710 minecraft:orange_wool if block -1584 44 -707 minecraft:orange_wool run tag @e[x=-1566.5,y=45,z=-724.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1584 44 -707 minecraft:yellow_wool run tag @e[x=-1566.5,y=45,z=-724.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1586 44 -710 minecraft:yellow_wool run tag @e[x=-1566.5,y=45,z=-724.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1582 44 -710 minecraft:yellow_wool run tag @e[x=-1566.5,y=45,z=-724.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1571 44 -741 minecraft:lime_wool run tag @e[x=-1586.5,y=45,z=-728.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1559 44 -723 minecraft:lime_wool run tag @e[x=-1550.5,y=45,z=-717.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1551 44 -727 minecraft:lime_wool run tag @e[x=-1548.5,y=45,z=-727.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1550 44 -743 minecraft:lime_wool run tag @e[x=-1543.5,y=45,z=-739.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1544 44 -747 minecraft:lime_wool run tag @e[x=-1541.5,y=45,z=-727.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1578 44 -723 minecraft:yellow_wool run scoreboard players remove @e[x=-1577.5,y=45,z=-716.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1578 44 -723 minecraft:yellow_wool run tag @e[x=-1577.5,y=45,z=-716.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1578 44 -723 minecraft:orange_wool run scoreboard players add @e[x=-1577.5,y=45,z=-716.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if block -1578 44 -723 minecraft:orange_wool run tag @e[x=-1577.5,y=45,z=-716.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if block -1575 44 -720 minecraft:yellow_wool run scoreboard players remove @e[x=-1574.5,y=45,z=-724.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1575 44 -720 minecraft:yellow_wool run tag @e[x=-1574.5,y=45,z=-724.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1575 44 -720 minecraft:orange_wool run scoreboard players add @e[x=-1574.5,y=45,z=-724.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if block -1575 44 -720 minecraft:orange_wool run tag @e[x=-1574.5,y=45,z=-724.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if block -1572 44 -722 minecraft:yellow_wool run scoreboard players remove @e[x=-1571.5,y=45,z=-716.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1572 44 -722 minecraft:yellow_wool run tag @e[x=-1571.5,y=45,z=-716.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1572 44 -722 minecraft:orange_wool run scoreboard players add @e[x=-1571.5,y=45,z=-716.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if block -1572 44 -722 minecraft:orange_wool run tag @e[x=-1571.5,y=45,z=-716.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if block -1567 44 -731 minecraft:yellow_wool run scoreboard players remove @e[x=-1577.5,y=45,z=-730.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1567 44 -731 minecraft:yellow_wool run tag @e[x=-1577.5,y=45,z=-730.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1567 44 -731 minecraft:orange_wool run scoreboard players add @e[x=-1577.5,y=45,z=-730.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if block -1567 44 -731 minecraft:orange_wool run tag @e[x=-1577.5,y=45,z=-730.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if block -1552 44 -711 minecraft:yellow_wool run scoreboard players add @e[x=-1550.5,y=45,z=-710.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1552 44 -711 minecraft:yellow_wool run tag @e[x=-1550.5,y=45,z=-710.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1552 44 -711 minecraft:orange_wool run scoreboard players remove @e[x=-1550.5,y=45,z=-710.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if block -1552 44 -711 minecraft:orange_wool run tag @e[x=-1550.5,y=45,z=-710.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if block -1545 44 -737 minecraft:lime_wool run scoreboard players remove @e[x=-1547.5,y=45,z=-744.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1545 44 -737 minecraft:lime_wool run tag @e[x=-1547.5,y=45,z=-744.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1585 44 -733 minecraft:yellow_wool run scoreboard players add @e[x=-1581.5,y=45,z=-733.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1585 44 -733 minecraft:yellow_wool run tag @e[x=-1581.5,y=45,z=-733.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1585 44 -733 minecraft:orange_wool run scoreboard players remove @e[x=-1581.5,y=45,z=-733.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if block -1585 44 -733 minecraft:orange_wool run tag @e[x=-1581.5,y=45,z=-733.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if block -1582 44 -737 minecraft:yellow_wool run scoreboard players add @e[x=-1580.5,y=45,z=-738.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1582 44 -737 minecraft:yellow_wool run tag @e[x=-1580.5,y=45,z=-738.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1582 44 -737 minecraft:orange_wool run scoreboard players remove @e[x=-1580.5,y=45,z=-738.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if block -1582 44 -737 minecraft:orange_wool run tag @e[x=-1580.5,y=45,z=-738.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if block -1582 44 -740 minecraft:yellow_wool run scoreboard players add @e[x=-1580.5,y=45,z=-741.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1582 44 -740 minecraft:yellow_wool run tag @e[x=-1580.5,y=45,z=-741.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1582 44 -740 minecraft:orange_wool run scoreboard players remove @e[x=-1580.5,y=45,z=-741.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if block -1582 44 -740 minecraft:orange_wool run tag @e[x=-1580.5,y=45,z=-741.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if block -1590 44 -733 minecraft:yellow_wool run scoreboard players add @e[x=-1592.5,y=45,z=-733.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1590 44 -733 minecraft:yellow_wool run tag @e[x=-1592.5,y=45,z=-733.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1590 44 -733 minecraft:orange_wool run scoreboard players remove @e[x=-1592.5,y=45,z=-733.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if block -1590 44 -733 minecraft:orange_wool run tag @e[x=-1592.5,y=45,z=-733.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if block -1593 44 -737 minecraft:yellow_wool run scoreboard players add @e[x=-1593.5,y=45,z=-738.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1593 44 -737 minecraft:yellow_wool run tag @e[x=-1593.5,y=45,z=-738.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1593 44 -737 minecraft:orange_wool run scoreboard players remove @e[x=-1593.5,y=45,z=-738.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if block -1593 44 -737 minecraft:orange_wool run tag @e[x=-1593.5,y=45,z=-738.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if block -1593 44 -741 minecraft:yellow_wool run scoreboard players add @e[x=-1593.5,y=45,z=-743.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1593 44 -741 minecraft:yellow_wool run tag @e[x=-1593.5,y=45,z=-743.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1593 44 -741 minecraft:orange_wool run scoreboard players remove @e[x=-1593.5,y=45,z=-743.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if block -1593 44 -741 minecraft:orange_wool run tag @e[x=-1593.5,y=45,z=-743.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if block -1592 44 -744 minecraft:yellow_wool run scoreboard players add @e[x=-1591.5,y=45,z=-745.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1592 44 -744 minecraft:yellow_wool run tag @e[x=-1591.5,y=45,z=-745.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1592 44 -744 minecraft:orange_wool run scoreboard players remove @e[x=-1591.5,y=45,z=-745.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if block -1592 44 -744 minecraft:orange_wool run tag @e[x=-1591.5,y=45,z=-745.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if block -1590 44 -746 minecraft:yellow_wool run scoreboard players add @e[x=-1587.5,y=45,z=-745.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1590 44 -746 minecraft:yellow_wool run tag @e[x=-1587.5,y=45,z=-745.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1590 44 -746 minecraft:orange_wool run scoreboard players remove @e[x=-1587.5,y=45,z=-745.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if block -1590 44 -746 minecraft:orange_wool run tag @e[x=-1587.5,y=45,z=-745.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if block -1586 44 -745 minecraft:yellow_wool run scoreboard players add @e[x=-1583.5,y=45,z=-745.5,distance=..0.7,tag=fan,tag=!changed] Moving 1
execute if block -1586 44 -745 minecraft:yellow_wool run tag @e[x=-1583.5,y=45,z=-745.5,distance=..0.7,tag=fan,tag=!changed] add changed
execute if block -1586 44 -745 minecraft:orange_wool run scoreboard players remove @e[x=-1583.5,y=45,z=-745.5,distance=..0.7,tag=fan,tag=changed] Moving 1
execute if block -1586 44 -745 minecraft:orange_wool run tag @e[x=-1583.5,y=45,z=-745.5,distance=..0.7,tag=fan,tag=changed] remove changed
execute if block -1588 45 -730 minecraft:iron_door[open=true] if entity @s[x=-1589,y=45,z=-733,dx=3,dy=3,dz=3] run function medabots_server:stage/create/grassland_d/first_go_battle/0
execute if entity @e[x=-1600,y=42,z=-750,dx=62,dy=7,dz=62,tag=mr_referee] store result score @s BattlingMedabots if entity @e[scores={Stage=30,Medabot=0..,Battle=1..2}]
execute as @e[x=-1600,y=42,z=-750,dx=62,dy=7,dz=62,type=!minecraft:player] unless entity @s[scores={Stage=30}] run scoreboard players set @s Stage 30
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/grassland_d/first_go
stopsound @s[scores={BattlingMedabots=1,Battle=1..}] music
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1,Battle=1..}] -1570 51 -720 1000
scoreboard players set @s[scores={BattlingMedabots=1,Battle=1..}] MusicType 1
scoreboard players set @s[scores={BattlingMedabots=1,Battle=1..}] Music 299
advancement grant @s[scores={BattlingMedabots=1,Battle=1..}] only medabots_server:stages/wave_1/grassland_d_first_go
teleport @s[scores={BattlingMedabots=1,Battle=1..}] -1570 51 -720 -180 0
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:grassland_d/robattle players
scoreboard players set @s[scores={BattlingMedabots=1,Battle=1..}] Battle 0
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots