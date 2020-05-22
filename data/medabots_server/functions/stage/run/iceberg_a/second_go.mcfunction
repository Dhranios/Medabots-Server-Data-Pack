execute unless entity @e[scores={Stage=6},tag=hide_normal_time] run bossbar set medabots_server:iceberg_a/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=6},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:iceberg_a/time value
execute unless entity @e[scores={Stage=6},tag=hide_normal_time] store result bossbar medabots_server:iceberg_a/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=6},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:iceberg_a/robattle value
execute if entity @e[scores={Stage=6},tag=hide_normal_time] if entity @e[scores={Stage=6,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:iceberg_a/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=6},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1764,y=41,z=-247,dx=88,dy=7,dz=63,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={State=0}] run function medabots_server:stage/clean_up/iceberg_a
execute if entity @s[scores={State=0}] run function medabots_server:other/death
execute if entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,type=minecraft:area_effect_cloud,scores={Time=0..40}] run scoreboard players set @e[x=-1715.5,y=44,z=-238.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1714.5,y=44,z=-238.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1715.5,y=44,z=-238.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1714.5,y=44,z=-238.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] unless entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,type=minecraft:area_effect_cloud,scores={Time=0..40}] run scoreboard players set @e[x=-1715.5,y=44,z=-238.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,type=minecraft:area_effect_cloud,scores={Time=10..50}] run scoreboard players set @e[x=-1736.5,y=44,z=-221.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1737.5,y=44,z=-220.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1736.5,y=44,z=-221.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1737.5,y=44,z=-220.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] unless entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,type=minecraft:area_effect_cloud,scores={Time=10..50}] run scoreboard players set @e[x=-1736.5,y=44,z=-221.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,type=minecraft:area_effect_cloud,scores={Time=20..60}] run scoreboard players set @e[x=-1740.5,y=44,z=-205.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1739.5,y=44,z=-206.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1740.5,y=44,z=-205.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1739.5,y=44,z=-206.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] unless entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,type=minecraft:area_effect_cloud,scores={Time=20..60}] run scoreboard players set @e[x=-1740.5,y=44,z=-205.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,type=minecraft:area_effect_cloud,scores={Time=30..70}] run scoreboard players set @e[x=-1751.5,y=44,z=-212.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1750.5,y=44,z=-211.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1751.5,y=44,z=-212.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1750.5,y=44,z=-211.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] unless entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,type=minecraft:area_effect_cloud,scores={Time=30..70}] run scoreboard players set @e[x=-1751.5,y=44,z=-212.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,type=minecraft:area_effect_cloud,scores={Time=40..80}] run scoreboard players set @e[x=-1740.5,y=44,z=-192.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1739.5,y=44,z=-191.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1740.5,y=44,z=-192.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1743.5,y=44,z=-191.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1740.5,y=44,z=-192.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1739.5,y=44,z=-191.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=-1743.5,y=44,z=-191.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] unless entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,type=minecraft:area_effect_cloud,scores={Time=40..80}] run scoreboard players set @e[x=-1740.5,y=44,z=-192.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,type=minecraft:area_effect_cloud,scores={Time=50..90}] run scoreboard players set @e[x=-1738.5,y=44,z=-192.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1737.5,y=44,z=-191.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1738.5,y=44,z=-192.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1724.5,y=44,z=-206.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1738.5,y=44,z=-192.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1737.5,y=44,z=-191.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=-1724.5,y=44,z=-206.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] unless entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,type=minecraft:area_effect_cloud,scores={Time=50..90}] run scoreboard players set @e[x=-1738.5,y=44,z=-192.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,type=minecraft:area_effect_cloud,scores={Time=60..100}] run scoreboard players set @e[x=-1736.5,y=44,z=-192.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1735.5,y=44,z=-191.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1736.5,y=44,z=-192.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1726.5,y=44,z=-221.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1736.5,y=44,z=-192.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1735.5,y=44,z=-191.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=-1726.5,y=44,z=-221.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] unless entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,type=minecraft:area_effect_cloud,scores={Time=60..100}] run scoreboard players set @e[x=-1736.5,y=44,z=-192.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,type=minecraft:area_effect_cloud,scores={Time=70..110}] run scoreboard players set @e[x=-1734.5,y=44,z=-192.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1749.5,y=44,z=-220.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1734.5,y=44,z=-192.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1749.5,y=44,z=-220.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] unless entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,type=minecraft:area_effect_cloud,scores={Time=70..110}] run scoreboard players set @e[x=-1734.5,y=44,z=-192.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,type=minecraft:area_effect_cloud,scores={Time=80..120}] run scoreboard players set @e[x=-1711.5,y=44,z=-208.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1706.5,y=44,z=-190.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1711.5,y=44,z=-208.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1706.5,y=44,z=-190.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] unless entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,type=minecraft:area_effect_cloud,scores={Time=80..120}] run scoreboard players set @e[x=-1711.5,y=44,z=-208.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1680.5,y=44,z=-231.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1687,y=43,z=-241,dx=10,dy=2,dz=15,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1680.5,y=44,z=-231.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=-1687,y=43,z=-241,dx=10,dy=2,dz=15,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1739.5,y=44,z=-236.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1758.5,y=44,z=-217.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1741.5,y=44,z=-238.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1758.5,y=44,z=-217.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1745.5,y=44,z=-235.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1758.5,y=44,z=-217.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1745.5,y=44,z=-239.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1758.5,y=44,z=-217.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1758.5,y=44,z=-233.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1758.5,y=44,z=-217.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1756.5,y=44,z=-229.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1758.5,y=44,z=-217.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1739.5,y=44,z=-236.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=-1741.5,y=44,z=-238.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=-1745.5,y=44,z=-235.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=-1745.5,y=44,z=-239.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=-1758.5,y=44,z=-233.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=-1756.5,y=44,z=-229.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=-1758.5,y=44,z=-217.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1743.5,y=44,z=-237.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1757.5,y=44,z=-217.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1751.5,y=44,z=-237.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1757.5,y=44,z=-217.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1758.5,y=44,z=-225.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1757.5,y=44,z=-217.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1751.5,y=44,z=-237.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=-1743.5,y=44,z=-237.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=-1758.5,y=44,z=-225.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=-1757.5,y=44,z=-217.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1689.5,y=44,z=-189.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1700.5,y=44,z=-188.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1688.5,y=44,z=-188.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1700.5,y=44,z=-188.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1687.5,y=44,z=-189.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1700.5,y=44,z=-188.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1689.5,y=44,z=-189.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=-1688.5,y=44,z=-188.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=-1687.5,y=44,z=-189.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=-1700.5,y=44,z=-188.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1689.5,y=44,z=-188.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1700.5,y=44,z=-189.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1688.5,y=44,z=-189.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1700.5,y=44,z=-189.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1687.5,y=44,z=-188.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1700.5,y=44,z=-189.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1689.5,y=44,z=-188.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=-1688.5,y=44,z=-189.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=-1687.5,y=44,z=-188.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=-1700.5,y=44,z=-189.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1710.5,y=44,z=-229.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] unless entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud -1711 44 -220 {CustomName:'{"translate":"medabots_server:block.floor_switch"}',Tags:["blue_floor_switch_timer,type=minecraft:area_effect_cloud"],Duration:220}
scoreboard players add @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,tag=blue_floor_switch_timer,type=minecraft:area_effect_cloud] Time 1
execute if block -1737 44 -222 minecraft:iron_trapdoor[open=true] run scoreboard players set @e[x=-1732.5,y=44,z=-220.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1737 44 -222 minecraft:black_stained_glass run scoreboard players set @e[x=-1732.5,y=44,z=-220.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1737 44 -222 minecraft:iron_trapdoor[open=true] run scoreboard players set @e[x=-1730.5,y=44,z=-224.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1737 44 -222 minecraft:black_stained_glass run scoreboard players set @e[x=-1730.5,y=44,z=-224.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1737 44 -222 minecraft:iron_trapdoor[open=true] run scoreboard players set @e[x=-1721.5,y=44,z=-218.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1737 44 -222 minecraft:black_stained_glass run scoreboard players set @e[x=-1721.5,y=44,z=-218.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1737 44 -222 minecraft:iron_trapdoor[open=true] run scoreboard players set @e[x=-1720.5,y=44,z=-206.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1737 44 -222 minecraft:black_stained_glass run scoreboard players set @e[x=-1720.5,y=44,z=-206.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1737 44 -222 minecraft:iron_trapdoor[open=true] run scoreboard players set @e[x=-1733.5,y=44,z=-206.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1737 44 -222 minecraft:black_stained_glass run scoreboard players set @e[x=-1733.5,y=44,z=-206.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1741 44 -206 minecraft:iron_trapdoor[open=true] run scoreboard players set @e[x=-1746.5,y=44,z=-203.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1741 44 -206 minecraft:black_stained_glass run scoreboard players set @e[x=-1746.5,y=44,z=-203.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1741 44 -206 minecraft:iron_trapdoor[open=true] run scoreboard players set @e[x=-1753.5,y=44,z=-206.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1741 44 -206 minecraft:black_stained_glass run scoreboard players set @e[x=-1753.5,y=44,z=-206.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1741 44 -206 minecraft:iron_trapdoor[open=true] run scoreboard players set @e[x=-1756.5,y=44,z=-198.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1741 44 -206 minecraft:black_stained_glass run scoreboard players set @e[x=-1756.5,y=44,z=-198.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1741 44 -206 minecraft:iron_trapdoor[open=true] run scoreboard players set @e[x=-1750.5,y=44,z=-192.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1741 44 -206 minecraft:black_stained_glass run scoreboard players set @e[x=-1750.5,y=44,z=-192.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1710 44 -209 minecraft:iron_trapdoor[open=true] if entity @s[x=-1709,y=44,z=-210,dx=3,dy=3,dz=3] run function medabots_server:stage/create/iceberg_a/second_go_battle/0
execute if entity @e[x=-1764,y=41,z=-247,dx=88,dy=7,dz=63,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=6,Medabot=0..,State=1..2}]
execute as @e[x=-1764,y=41,z=-247,dx=88,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 6
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/iceberg_a
advancement grant @s[scores={BattlingMedabots=1,State=1..}] only medabots_server:stages/wave_1/iceberg_a_second_go
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:iceberg_a/robattle players
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/get_score/time_damage_money
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned -1704 50 -221 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots