execute unless entity @e[scores={Stage=19},tag=hide_normal_time] run bossbar set medabots_server:park_a/time players @s[scores={Battle=1..}]
execute unless entity @e[scores={Stage=19},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:park_a/time value
execute unless entity @e[scores={Stage=19},tag=hide_normal_time] store result bossbar medabots_server:park_a/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=19},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:park_a/robattle value
execute if entity @e[scores={Stage=19},tag=hide_normal_time] if entity @e[scores={Stage=19,Medabot=0..,Battle=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:park_a/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=19},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1854,y=0,z=-633,dx=91,dy=49,dz=94,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/park_a/special
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute if block -1806 44 -555 minecraft:lime_wool run scoreboard players set @e[x=-1806.5,y=45,z=-556.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1807 44 -572 minecraft:lime_wool run scoreboard players set @e[x=-1806.5,y=45,z=-570.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1804 44 -570 minecraft:yellow_wool if block -1809 44 -570 minecraft:yellow_wool run scoreboard players set @e[x=-1806.5,y=45,z=-570.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1807 44 -572 minecraft:green_wool if block -1804 44 -570 minecraft:orange_wool run scoreboard players set @e[x=-1806.5,y=45,z=-570.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1807 44 -572 minecraft:green_wool if block -1809 44 -570 minecraft:orange_wool run scoreboard players set @e[x=-1806.5,y=45,z=-570.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1810 44 -567 minecraft:yellow_wool run scoreboard players set @e[x=-1810.5,y=45,z=-566.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1810 44 -567 minecraft:orange_wool run scoreboard players set @e[x=-1810.5,y=45,z=-566.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1820 44 -557 minecraft:lime_wool if block -1822 44 -555 minecraft:lime_wool if block -1824 44 -554 minecraft:lime_wool if block -1826 44 -554 minecraft:lime_wool if block -1828 44 -555 minecraft:lime_wool if block -1830 44 -557 minecraft:lime_wool run scoreboard players set @e[x=-1829.5,y=45,z=-574.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1829 44 -581 minecraft:yellow_wool run scoreboard players set @e[x=-1829.5,y=45,z=-581.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1830 44 -583 minecraft:yellow_wool run scoreboard players set @e[x=-1829.5,y=45,z=-581.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1829 44 -581 minecraft:orange_wool if block -1830 44 -583 minecraft:orange_wool run scoreboard players set @e[x=-1829.5,y=45,z=-581.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1832 44 -579 minecraft:yellow_wool run scoreboard players set @e[x=-1832.5,y=45,z=-577.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1834 44 -578 minecraft:yellow_wool run scoreboard players set @e[x=-1832.5,y=45,z=-577.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1832 44 -579 minecraft:orange_wool if block -1834 44 -578 minecraft:orange_wool run scoreboard players set @e[x=-1832.5,y=45,z=-577.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1836 44 -581 minecraft:yellow_wool run scoreboard players set @e[x=-1836.5,y=45,z=-581.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1837 44 -583 minecraft:yellow_wool run scoreboard players set @e[x=-1836.5,y=45,z=-581.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1836 44 -581 minecraft:orange_wool if block -1837 44 -583 minecraft:orange_wool run scoreboard players set @e[x=-1836.5,y=45,z=-581.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1827 44 -578 minecraft:yellow_wool run scoreboard players set @e[x=-1825.5,y=45,z=-578.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1825 44 -579 minecraft:yellow_wool run scoreboard players set @e[x=-1825.5,y=45,z=-578.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1827 44 -578 minecraft:orange_wool if block -1825 44 -579 minecraft:orange_wool run scoreboard players set @e[x=-1825.5,y=45,z=-578.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1822 44 -581 minecraft:yellow_wool run scoreboard players set @e[x=-1822.5,y=45,z=-581.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1823 44 -583 minecraft:yellow_wool run scoreboard players set @e[x=-1822.5,y=45,z=-581.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1822 44 -581 minecraft:orange_wool if block -1823 44 -583 minecraft:orange_wool run scoreboard players set @e[x=-1822.5,y=45,z=-581.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1829 44 -588 minecraft:yellow_wool run scoreboard players set @e[x=-1829.5,y=45,z=-588.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1830 44 -590 minecraft:yellow_wool run scoreboard players set @e[x=-1829.5,y=45,z=-588.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1829 44 -588 minecraft:orange_wool if block -1830 44 -590 minecraft:orange_wool run scoreboard players set @e[x=-1829.5,y=45,z=-588.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1832 44 -586 minecraft:yellow_wool run scoreboard players set @e[x=-1832.5,y=45,z=-584.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1834 44 -585 minecraft:yellow_wool run scoreboard players set @e[x=-1832.5,y=45,z=-584.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1832 44 -586 minecraft:orange_wool if block -1834 44 -585 minecraft:orange_wool run scoreboard players set @e[x=-1832.5,y=45,z=-584.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1836 44 -588 minecraft:yellow_wool run scoreboard players set @e[x=-1836.5,y=45,z=-588.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1837 44 -590 minecraft:yellow_wool run scoreboard players set @e[x=-1836.5,y=45,z=-588.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1836 44 -588 minecraft:orange_wool if block -1837 44 -590 minecraft:orange_wool run scoreboard players set @e[x=-1836.5,y=45,z=-588.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1827 44 -585 minecraft:yellow_wool run scoreboard players set @e[x=-1825.5,y=45,z=-585.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1825 44 -586 minecraft:yellow_wool run scoreboard players set @e[x=-1825.5,y=45,z=-585.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1827 44 -585 minecraft:orange_wool if block -1825 44 -586 minecraft:orange_wool run scoreboard players set @e[x=-1825.5,y=45,z=-585.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1822 44 -588 minecraft:yellow_wool run scoreboard players set @e[x=-1822.5,y=45,z=-588.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1823 44 -590 minecraft:yellow_wool run scoreboard players set @e[x=-1822.5,y=45,z=-588.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1822 44 -588 minecraft:orange_wool if block -1823 44 -590 minecraft:orange_wool run scoreboard players set @e[x=-1822.5,y=45,z=-588.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1829 44 -595 minecraft:yellow_wool run scoreboard players set @e[x=-1829.5,y=45,z=-595.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1830 44 -597 minecraft:yellow_wool run scoreboard players set @e[x=-1829.5,y=45,z=-595.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1829 44 -595 minecraft:orange_wool if block -1830 44 -597 minecraft:orange_wool run scoreboard players set @e[x=-1829.5,y=45,z=-595.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1832 44 -593 minecraft:yellow_wool run scoreboard players set @e[x=-1832.5,y=45,z=-591.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1834 44 -592 minecraft:yellow_wool run scoreboard players set @e[x=-1832.5,y=45,z=-591.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1832 44 -593 minecraft:orange_wool if block -1834 44 -592 minecraft:orange_wool run scoreboard players set @e[x=-1832.5,y=45,z=-591.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1836 44 -595 minecraft:yellow_wool run scoreboard players set @e[x=-1836.5,y=45,z=-595.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1837 44 -597 minecraft:yellow_wool run scoreboard players set @e[x=-1836.5,y=45,z=-595.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1836 44 -595 minecraft:orange_wool if block -1837 44 -597 minecraft:orange_wool run scoreboard players set @e[x=-1836.5,y=45,z=-595.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1827 44 -592 minecraft:yellow_wool run scoreboard players set @e[x=-1825.5,y=45,z=-592.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1825 44 -593 minecraft:yellow_wool run scoreboard players set @e[x=-1825.5,y=45,z=-592.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1827 44 -592 minecraft:orange_wool if block -1825 44 -593 minecraft:orange_wool run scoreboard players set @e[x=-1825.5,y=45,z=-592.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1822 44 -595 minecraft:yellow_wool run scoreboard players set @e[x=-1822.5,y=45,z=-595.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1823 44 -597 minecraft:yellow_wool run scoreboard players set @e[x=-1822.5,y=45,z=-595.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1822 44 -595 minecraft:orange_wool if block -1823 44 -597 minecraft:orange_wool run scoreboard players set @e[x=-1822.5,y=45,z=-595.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1832 44 -600 minecraft:yellow_wool run scoreboard players set @e[x=-1832.5,y=45,z=-598.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1834 44 -599 minecraft:yellow_wool run scoreboard players set @e[x=-1832.5,y=45,z=-598.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1832 44 -600 minecraft:orange_wool if block -1834 44 -599 minecraft:orange_wool run scoreboard players set @e[x=-1832.5,y=45,z=-598.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1827 44 -599 minecraft:yellow_wool run scoreboard players set @e[x=-1825.5,y=45,z=-599.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1825 44 -600 minecraft:yellow_wool run scoreboard players set @e[x=-1825.5,y=45,z=-599.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1827 44 -599 minecraft:orange_wool if block -1825 44 -600 minecraft:orange_wool run scoreboard players set @e[x=-1825.5,y=45,z=-599.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1830 45 -582 minecraft:iron_door[open=true] if block -1826 45 -586 minecraft:iron_door[open=true] if block -1823 45 -589 minecraft:iron_door[open=true] if block -1823 45 -596 minecraft:iron_door[open=true] if block -1826 45 -599 minecraft:iron_door[open=true] run scoreboard players set @e[x=-1829.5,y=45,z=-602.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1830 45 -582 minecraft:iron_door[open=false] run scoreboard players set @e[x=-1829.5,y=45,z=-602.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1826 45 -586 minecraft:iron_door[open=false] run scoreboard players set @e[x=-1829.5,y=45,z=-602.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1823 45 -589 minecraft:iron_door[open=false] run scoreboard players set @e[x=-1829.5,y=45,z=-602.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1823 45 -596 minecraft:iron_door[open=false] run scoreboard players set @e[x=-1829.5,y=45,z=-602.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1826 45 -599 minecraft:iron_door[open=false] run scoreboard players set @e[x=-1829.5,y=45,z=-602.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1824 44 -617 minecraft:light_blue_wool run scoreboard players set @e[x=-1827.5,y=45,z=-604.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1828 44 -617 minecraft:light_blue_wool run scoreboard players set @e[x=-1827.5,y=45,z=-604.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1831 44 -617 minecraft:light_blue_wool run scoreboard players set @e[x=-1827.5,y=45,z=-604.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1835 44 -617 minecraft:light_blue_wool run scoreboard players set @e[x=-1827.5,y=45,z=-604.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1824 44 -617 minecraft:blue_wool if block -1828 44 -617 minecraft:blue_wool if block -1831 44 -617 minecraft:blue_wool if block -1835 44 -617 minecraft:blue_wool run scoreboard players set @e[x=-1827.5,y=45,z=-604.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1830 45 -582 minecraft:iron_door[open=true] run scoreboard players set @e[x=-1829,y=45,z=-578,distance=..2,tag=action_floor,scores={PowerAmount=0}] PowerAmount 1
execute if block -1830 45 -582 minecraft:iron_door[open=false] run scoreboard players set @e[x=-1829,y=45,z=-578,distance=..2,tag=action_floor,scores={PowerAmount=1}] PowerAmount 0
execute if block -1833 45 -578 minecraft:iron_door[open=true] run scoreboard players set @e[x=-1836,y=45,z=-579,distance=..2,tag=action_floor,scores={PowerAmount=0}] PowerAmount 1
execute if block -1837 45 -582 minecraft:iron_door[open=true] run scoreboard players set @e[x=-1836,y=45,z=-579,distance=..2,tag=action_floor,scores={PowerAmount=0}] PowerAmount 1
execute if block -1833 45 -578 minecraft:iron_door[open=false] if block -1837 45 -582 minecraft:iron_door[open=false] run scoreboard players set @e[x=-1836,y=45,z=-579,distance=..2,tag=action_floor,scores={PowerAmount=1}] PowerAmount 0
execute if block -1826 45 -579 minecraft:iron_door[open=true] run scoreboard players set @e[x=-1822,y=45,z=-579,distance=..2,tag=action_floor,scores={PowerAmount=0}] PowerAmount 1
execute if block -1823 45 -582 minecraft:iron_door[open=true] run scoreboard players set @e[x=-1822,y=45,z=-579,distance=..2,tag=action_floor,scores={PowerAmount=0}] PowerAmount 1
execute if block -1826 45 -579 minecraft:iron_door[open=false] if block -1823 45 -582 minecraft:iron_door[open=false] run scoreboard players set @e[x=-1822,y=45,z=-579,distance=..2,tag=action_floor,scores={PowerAmount=1}] PowerAmount 0
execute if block -1826 45 -586 minecraft:iron_door[open=true] run scoreboard players set @e[x=-1829,y=45,z=-585,distance=..2,tag=action_floor,scores={PowerAmount=0}] PowerAmount 1
execute if block -1826 45 -586 minecraft:iron_door[open=false] run scoreboard players set @e[x=-1829,y=45,z=-585,distance=..2,tag=action_floor,scores={PowerAmount=1}] PowerAmount 0
execute if block -1833 45 -585 minecraft:iron_door[open=true] run scoreboard players set @e[x=-1836,y=45,z=-585,distance=..2,tag=action_floor,scores={PowerAmount=0}] PowerAmount 1
execute if block -1833 45 -585 minecraft:iron_door[open=false] run scoreboard players set @e[x=-1836,y=45,z=-585,distance=..2,tag=action_floor,scores={PowerAmount=1}] PowerAmount 0
execute if block -1823 45 -589 minecraft:iron_door[open=true] run scoreboard players set @e[x=-1822,y=45,z=-585,distance=..2,tag=action_floor,scores={PowerAmount=0}] PowerAmount 1
execute if block -1823 45 -589 minecraft:iron_door[open=false] run scoreboard players set @e[x=-1822,y=45,z=-585,distance=..2,tag=action_floor,scores={PowerAmount=1}] PowerAmount 0
execute if block -1830 45 -589 minecraft:iron_door[open=true] run scoreboard players set @e[x=-1829,y=45,z=-592,distance=..2,tag=action_floor,scores={PowerAmount=0}] PowerAmount 1
execute if block -1826 45 -593 minecraft:iron_door[open=true] run scoreboard players set @e[x=-1829,y=45,z=-592,distance=..2,tag=action_floor,scores={PowerAmount=0}] PowerAmount 1
execute if block -1830 45 -596 minecraft:iron_door[open=true] run scoreboard players set @e[x=-1829,y=45,z=-592,distance=..2,tag=action_floor,scores={PowerAmount=0}] PowerAmount 1
execute if block -1830 45 -589 minecraft:iron_door[open=false] if block -1826 45 -593 minecraft:iron_door[open=false] if block -1830 45 -596 minecraft:iron_door[open=false] run scoreboard players set @e[x=-1829,y=45,z=-592,distance=..2,tag=action_floor,scores={PowerAmount=1}] PowerAmount 0
execute if block -1837 45 -589 minecraft:iron_door[open=true] run scoreboard players set @e[x=-1836,y=45,z=-592,distance=..2,tag=laser_trap,scores={PowerAmount=0}] PowerAmount 1
execute if block -1833 45 -592 minecraft:iron_door[open=true] run scoreboard players set @e[x=-1836,y=45,z=-592,distance=..2,tag=laser_trap,scores={PowerAmount=0}] PowerAmount 1
execute if block -1837 45 -596 minecraft:iron_door[open=true] run scoreboard players set @e[x=-1836,y=45,z=-592,distance=..2,tag=laser_trap,scores={PowerAmount=0}] PowerAmount 1
execute if block -1837 45 -589 minecraft:iron_door[open=false] if block -1833 45 -592 minecraft:iron_door[open=false] if block -1837 45 -596 minecraft:iron_door[open=false] run scoreboard players set @e[x=-1829,y=45,z=-592,distance=..2,tag=laser_trap,scores={PowerAmount=1}] PowerAmount 0
execute if block -1823 45 -596 minecraft:iron_door[open=true] run scoreboard players set @e[x=-1822,y=45,z=-592,distance=..2,tag=action_floor,scores={PowerAmount=0}] PowerAmount 1
execute if block -1823 45 -596 minecraft:iron_door[open=false] run scoreboard players set @e[x=-1822,y=45,z=-592,distance=..2,tag=action_floor,scores={PowerAmount=1}] PowerAmount 0
execute if block -1833 45 -599 minecraft:iron_door[open=true] run scoreboard players set @e[x=-1836,y=45,z=-599,distance=..2,tag=action_floor,scores={PowerAmount=0}] PowerAmount 1
execute if block -1833 45 -599 minecraft:iron_door[open=false] run scoreboard players set @e[x=-1836,y=45,z=-599,distance=..2,tag=action_floor,scores={PowerAmount=1}] PowerAmount 0
execute if block -1826 45 -600 minecraft:iron_door[open=true] run scoreboard players set @e[x=-1822,y=45,z=-599,distance=..2,tag=action_floor,scores={PowerAmount=0}] PowerAmount 1
execute if block -1826 45 -600 minecraft:iron_door[open=false] run scoreboard players set @e[x=-1822,y=45,z=-599,distance=..2,tag=action_floor,scores={PowerAmount=1}] PowerAmount 0
execute if block -1824 44 -610 minecraft:light_blue_wool run scoreboard players set @e[x=-1823.5,y=45,z=-610.5,distance=..0.7,tag=laser_trap,scores={PowerAmount=0}] PowerAmount 1
execute if block -1824 44 -610 minecraft:blue_wool run scoreboard players set @e[x=-1823.5,y=45,z=-610.5,distance=..0.7,tag=laser_trap,scores={PowerAmount=1}] PowerAmount 0
execute if block -1828 44 -610 minecraft:light_blue_wool run scoreboard players set @e[x=-1827.5,y=45,z=-610.5,distance=..0.7,tag=laser_trap,scores={PowerAmount=0}] PowerAmount 1
execute if block -1828 44 -610 minecraft:blue_wool run scoreboard players set @e[x=-1827.5,y=45,z=-610.5,distance=..0.7,tag=laser_trap,scores={PowerAmount=1}] PowerAmount 0
execute if block -1831 44 -610 minecraft:light_blue_wool run scoreboard players set @e[x=-1830.5,y=45,z=-610.5,distance=..0.7,tag=laser_trap,scores={PowerAmount=0}] PowerAmount 1
execute if block -1831 44 -610 minecraft:blue_wool run scoreboard players set @e[x=-1830.5,y=45,z=-610.5,distance=..0.7,tag=laser_trap,scores={PowerAmount=1}] PowerAmount 0
execute if block -1835 44 -610 minecraft:light_blue_wool run scoreboard players set @e[x=-1834.5,y=45,z=-610.5,distance=..0.7,tag=laser_trap,scores={PowerAmount=0}] PowerAmount 1
execute if block -1835 44 -610 minecraft:blue_wool run scoreboard players set @e[x=-1834.5,y=45,z=-610.5,distance=..0.7,tag=laser_trap,scores={PowerAmount=1}] PowerAmount 0
execute if block -1818 45 -605 minecraft:iron_door[open=true] if block -1806 45 -603 minecraft:iron_door[open=false] if entity @s[x=-1818,y=45,z=-606,dx=3,dy=3,dz=3] run function medabots_server:stage/create/park_a/special_battle/0
execute if entity @e[x=-1811.5,y=45,z=-605.5,distance=..0.7,tag=mission,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=19,Medabot=0..,Battle=1..2}]
execute if entity @e[x=-1811.5,y=45,z=-605.5,distance=..0.7,tag=mission,scores={Dialog=81}] if block -1806 44 -604 minecraft:lime_wool run tag @s add mission_success
execute if entity @s[tag=mission_success] run tag @e[x=-1854,y=0,z=-633,dx=91,dy=49,dz=94,scores={Stage=19,Medabot=0..,Battle=1..},type=!minecraft:player] add dead
execute if entity @s[tag=mission_success] run scoreboard players set @a[x=-1854,y=0,z=-633,dx=91,dy=49,dz=94,scores={Stage=19,Medabot=0..,Battle=1..},tag=enemy_medabot] LeaveStage 1
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1817.5,y=45,z=-604.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1805.5,y=45,z=-602.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run bossbar set medabots_server:park_a/robattle players
execute if entity @s[tag=mission_success] run kill @e[x=-1854,y=0,z=-633,dx=91,dy=49,dz=94,type=minecraft:area_effect_cloud,tag=mission]
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1806 45 -598 minecraft:iron_door[open=true] if entity @s[x=-1808,y=45,z=-598,dx=3,dy=3,dz=3] run function medabots_server:stage/create/park_a/special_battle/1
execute if entity @e[x=-1854,y=0,z=-633,dx=91,dy=49,dz=94,tag=mr_referee] store result score @s BattlingMedabots if entity @e[scores={Stage=19,Medabot=0..,Battle=1..2}]
execute as @e[x=-1854,y=0,z=-633,dx=91,dy=49,dz=94,type=!minecraft:player] unless entity @s[scores={Stage=19}] run scoreboard players set @s Stage 19
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/park_a/special
advancement grant @s[scores={BattlingMedabots=1,Battle=1..}] only medabots_server:stages/wave_1/park_a_special
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:park_a/robattle players
tag @s[scores={BattlingMedabots=1,Battle=1..},advancements={medabots_server:story_progression/infinity={spykes_challenge=true,spykes_pass=false}}] add dialog_infinity_spykes_pass
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1809 51 -587 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots