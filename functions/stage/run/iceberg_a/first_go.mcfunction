execute if block -1716 45 -239 minecraft:iron_door[open=false] if entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,type=minecraft:area_effect_cloud,tag=blue_floor_switch_timer,scores={FloorSwitchTime=0..40}] run setblock -1716 44 -239 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1716 45 -239 minecraft:iron_door[open=false] if block -1715 43 -239 minecraft:light_blue_wool run setblock -1716 44 -239 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1716 45 -239 minecraft:iron_door[open=true] if block -1715 43 -239 minecraft:blue_wool unless entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,type=minecraft:area_effect_cloud,tag=blue_floor_switch_timer,scores={FloorSwitchTime=0..40}] run setblock -1716 44 -239 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
execute if block -1716 44 -239 minecraft:structure_block run setblock -1716 45 -239 minecraft:redstone_block
execute if block -1737 45 -222 minecraft:iron_door[open=false] if entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,type=minecraft:area_effect_cloud,tag=blue_floor_switch_timer,scores={FloorSwitchTime=10..50}] run setblock -1737 44 -222 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1737 45 -222 minecraft:iron_door[open=false] if block -1738 43 -221 minecraft:light_blue_wool run setblock -1737 44 -222 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1737 45 -222 minecraft:iron_door[open=true] if block -1738 43 -221 minecraft:blue_wool unless entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,type=minecraft:area_effect_cloud,tag=blue_floor_switch_timer,scores={FloorSwitchTime=10..50}] run setblock -1737 44 -222 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
execute if block -1737 44 -222 minecraft:structure_block run setblock -1737 45 -222 minecraft:redstone_block
execute if block -1741 45 -206 minecraft:iron_door[open=false] if entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,type=minecraft:area_effect_cloud,tag=blue_floor_switch_timer,scores={FloorSwitchTime=20..60}] run setblock -1741 44 -206 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1741 45 -206 minecraft:iron_door[open=false] if block -1740 43 -207 minecraft:light_blue_wool run setblock -1741 44 -206 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1741 45 -206 minecraft:iron_door[open=true] if block -1740 43 -207 minecraft:blue_wool unless entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,type=minecraft:area_effect_cloud,tag=blue_floor_switch_timer,scores={FloorSwitchTime=20..60}] run setblock -1741 44 -206 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
execute if block -1741 44 -206 minecraft:structure_block run setblock -1741 45 -206 minecraft:redstone_block
execute if block -1752 45 -213 minecraft:iron_door[open=false] if entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,type=minecraft:area_effect_cloud,tag=blue_floor_switch_timer,scores={FloorSwitchTime=30..70}] run setblock -1752 44 -213 minecraft:structure_block[mode=load]{name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1752 45 -213 minecraft:iron_door[open=false] if block -1751 43 -212 minecraft:light_blue_wool run setblock -1752 44 -213 minecraft:structure_block[mode=load]{name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1752 45 -213 minecraft:iron_door[open=true] if block -1751 43 -212 minecraft:blue_wool unless entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,type=minecraft:area_effect_cloud,tag=blue_floor_switch_timer,scores={FloorSwitchTime=30..70}] run setblock -1752 44 -213 minecraft:structure_block[mode=load]{name:"medabots_server:stage/door",mode:"LOAD"}
execute if block -1752 44 -213 minecraft:structure_block run setblock -1752 45 -213 minecraft:redstone_block
execute if block -1741 45 -193 minecraft:iron_door[open=false] if entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,type=minecraft:area_effect_cloud,tag=blue_floor_switch_timer,scores={FloorSwitchTime=40..80}] run setblock -1741 44 -193 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1741 45 -193 minecraft:iron_door[open=false] if block -1696 43 -239 minecraft:lime_wool run setblock -1741 44 -193 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1741 45 -193 minecraft:iron_door[open=false] if block -1744 43 -192 minecraft:yellow_wool run setblock -1741 44 -193 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1741 45 -193 minecraft:iron_door[open=true] if block -1740 43 -192 minecraft:green_wool if block -1744 43 -192 minecraft:orange_wool unless entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,type=minecraft:area_effect_cloud,tag=blue_floor_switch_timer,scores={FloorSwitchTime=40..80}] run setblock -1741 44 -193 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
execute if block -1741 44 -193 minecraft:structure_block run setblock -1741 45 -193 minecraft:redstone_block
execute if block -1739 45 -193 minecraft:iron_door[open=false] if entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,type=minecraft:area_effect_cloud,tag=blue_floor_switch_timer,scores={FloorSwitchTime=50..90}] run setblock -1739 44 -193 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1739 45 -193 minecraft:iron_door[open=false] if block -1698 43 -239 minecraft:lime_wool run setblock -1739 44 -193 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1739 45 -193 minecraft:iron_door[open=false] if block -1725 43 -207 minecraft:yellow_wool run setblock -1739 44 -193 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1739 45 -193 minecraft:iron_door[open=true] if block -1738 43 -192 minecraft:green_wool if block -1725 43 -207 minecraft:orange_wool unless entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,type=minecraft:area_effect_cloud,tag=blue_floor_switch_timer,scores={FloorSwitchTime=50..90}] run setblock -1739 44 -193 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
execute if block -1739 44 -193 minecraft:structure_block run setblock -1739 45 -193 minecraft:redstone_block
execute if block -1737 45 -193 minecraft:iron_door[open=false] if entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,type=minecraft:area_effect_cloud,tag=blue_floor_switch_timer,scores={FloorSwitchTime=60..100}] run setblock -1737 44 -193 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1737 45 -193 minecraft:iron_door[open=false] if block -1698 43 -239 minecraft:lime_wool run setblock -1737 44 -193 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1737 45 -193 minecraft:iron_door[open=false] if block -1727 43 -222 minecraft:yellow_wool run setblock -1737 44 -193 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1737 45 -193 minecraft:iron_door[open=true] if block -1736 43 -192 minecraft:green_wool if block -1727 43 -222 minecraft:orange_wool unless entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,type=minecraft:area_effect_cloud,tag=blue_floor_switch_timer,scores={FloorSwitchTime=60..100}] run setblock -1737 44 -193 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
execute if block -1737 44 -193 minecraft:structure_block run setblock -1737 45 -193 minecraft:redstone_block
execute if block -1735 45 -193 minecraft:iron_door[open=false] if entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,type=minecraft:area_effect_cloud,tag=blue_floor_switch_timer,scores={FloorSwitchTime=70..110}] run setblock -1735 44 -193 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1735 45 -193 minecraft:iron_door[open=false] if block -1750 43 -221 minecraft:yellow_wool run setblock -1735 44 -193 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1735 45 -193 minecraft:iron_door[open=true] if block -1750 43 -221 minecraft:orange_wool unless entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,type=minecraft:area_effect_cloud,tag=blue_floor_switch_timer,scores={FloorSwitchTime=70..110}] run setblock -1735 44 -193 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
execute if block -1735 44 -193 minecraft:structure_block run setblock -1735 45 -193 minecraft:redstone_block
execute if block -1712 45 -209 minecraft:iron_door[open=false] if entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,type=minecraft:area_effect_cloud,tag=blue_floor_switch_timer,scores={FloorSwitchTime=80..120}] run setblock -1712 44 -209 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1712 45 -209 minecraft:iron_door[open=false] if block -1707 43 -191 minecraft:lime_wool run setblock -1712 44 -209 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1712 45 -209 minecraft:iron_door[open=true] if block -1707 43 -191 minecraft:green_wool unless entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,type=minecraft:area_effect_cloud,tag=blue_floor_switch_timer,scores={FloorSwitchTime=80..120}] run setblock -1712 44 -209 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
execute if block -1712 44 -209 minecraft:structure_block run setblock -1712 45 -209 minecraft:redstone_block
execute if block -1681 43 -232 minecraft:yellow_wool run tag @e[x=-1687,y=43,z=-241,dx=10,dy=2,dz=15,tag=laser_trap] add enabled
execute if block -1681 43 -232 minecraft:orange_wool run tag @e[x=-1687,y=43,z=-241,dx=10,dy=2,dz=15,tag=laser_trap] remove enabled
execute if block -1740 43 -237 minecraft:light_blue_wool run tag @e[x=-1758.5,y=44,z=-217.5,distance=..0.7,tag=laser_trap] add enabled
execute if block -1742 43 -239 minecraft:light_blue_wool run tag @e[x=-1758.5,y=44,z=-217.5,distance=..0.7,tag=laser_trap] add enabled
execute if block -1746 43 -236 minecraft:light_blue_wool run tag @e[x=-1758.5,y=44,z=-217.5,distance=..0.7,tag=laser_trap] add enabled
execute if block -1746 43 -240 minecraft:light_blue_wool run tag @e[x=-1758.5,y=44,z=-217.5,distance=..0.7,tag=laser_trap] add enabled
execute if block -1759 43 -234 minecraft:light_blue_wool run tag @e[x=-1758.5,y=44,z=-217.5,distance=..0.7,tag=laser_trap] add enabled
execute if block -1757 43 -230 minecraft:light_blue_wool run tag @e[x=-1758.5,y=44,z=-217.5,distance=..0.7,tag=laser_trap] add enabled
execute if block -1740 43 -237 minecraft:blue_wool if block -1742 43 -239 minecraft:blue_wool if block -1746 43 -236 minecraft:blue_wool if block -1746 43 -240 minecraft:blue_wool if block -1759 43 -234 minecraft:blue_wool if block -1757 43 -230 minecraft:blue_wool run tag @e[x=-1758.5,y=44,z=-217.5,distance=..0.7,tag=laser_trap] remove enabled
execute if block -1752 43 -238 minecraft:light_blue_wool run tag @e[x=-1757.5,y=44,z=-217.5,distance=..0.7,tag=laser_trap] add enabled
execute if block -1759 43 -226 minecraft:light_blue_wool run tag @e[x=-1757.5,y=44,z=-217.5,distance=..0.7,tag=laser_trap] add enabled
execute if block -1752 43 -238 minecraft:blue_wool if block -1759 43 -226 minecraft:blue_wool run tag @e[x=-1757.5,y=44,z=-217.5,distance=..0.7,tag=laser_trap] remove enabled
execute if block -1690 43 -190 minecraft:light_blue_wool run tag @e[x=-1700.5,y=44,z=-188.5,distance=..0.7,tag=laser_trap] add enabled
execute if block -1689 43 -189 minecraft:light_blue_wool run tag @e[x=-1700.5,y=44,z=-188.5,distance=..0.7,tag=laser_trap] add enabled
execute if block -1688 43 -190 minecraft:light_blue_wool run tag @e[x=-1700.5,y=44,z=-188.5,distance=..0.7,tag=laser_trap] add enabled
execute if block -1690 43 -190 minecraft:blue_wool if block -1689 43 -189 minecraft:blue_wool if block -1688 43 -190 minecraft:blue_wool run tag @e[x=-1700.5,y=44,z=-188.5,distance=..0.7,tag=laser_trap] remove enabled
execute if block -1690 43 -189 minecraft:light_blue_wool run tag @e[x=-1700.5,y=44,z=-189.5,distance=..0.7,tag=laser_trap] add enabled
execute if block -1689 43 -190 minecraft:light_blue_wool run tag @e[x=-1700.5,y=44,z=-189.5,distance=..0.7,tag=laser_trap] add enabled
execute if block -1688 43 -189 minecraft:light_blue_wool run tag @e[x=-1700.5,y=44,z=-189.5,distance=..0.7,tag=laser_trap] add enabled
execute if block -1690 43 -189 minecraft:blue_wool if block -1689 43 -190 minecraft:blue_wool if block -1688 43 -189 minecraft:blue_wool run tag @e[x=-1700.5,y=44,z=-189.5,distance=..0.7,tag=laser_trap] remove enabled
execute if block -1711 43 -220 minecraft:blue_wool unless entity @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,type=minecraft:area_effect_cloud,tag=blue_floor_switch_timer] run summon minecraft:area_effect_cloud -1711 44 -220 {CustomName:"{\"translate\":\"medabots_server:block.floor_switch\"}",Tags:["blue_floor_switch_timer"],Duration:2147483647}
scoreboard players add @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,type=minecraft:area_effect_cloud,tag=blue_floor_switch_timer] FloorSwitchTime 1
scoreboard players set @e[x=-1710.5,y=44,z=-219.5,distance=..0.7,type=minecraft:area_effect_cloud,tag=blue_floor_switch_timer,scores={FloorSwitchTime=220}] FloorSwitchTime 0
execute if block -1737 45 -222 minecraft:iron_door[open=true] run tag @e[x=-1732.5,y=44,z=-220.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1737 45 -222 minecraft:iron_door[open=false] run tag @e[x=-1732.5,y=44,z=-220.5,distance=..0.7,tag=action_floor] remove enabled
execute if block -1737 45 -222 minecraft:iron_door[open=true] run tag @e[x=-1730.5,y=44,z=-224.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1737 45 -222 minecraft:iron_door[open=false] run tag @e[x=-1730.5,y=44,z=-224.5,distance=..0.7,tag=action_floor] remove enabled
execute if block -1737 45 -222 minecraft:iron_door[open=true] run tag @e[x=-1721.5,y=44,z=-218.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1737 45 -222 minecraft:iron_door[open=false] run tag @e[x=-1721.5,y=44,z=-218.5,distance=..0.7,tag=action_floor] remove enabled
execute if block -1737 45 -222 minecraft:iron_door[open=true] run tag @e[x=-1720.5,y=44,z=-206.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1737 45 -222 minecraft:iron_door[open=false] run tag @e[x=-1720.5,y=44,z=-206.5,distance=..0.7,tag=action_floor] remove enabled
execute if block -1737 45 -222 minecraft:iron_door[open=true] run tag @e[x=-1733.5,y=44,z=-206.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1737 45 -222 minecraft:iron_door[open=false] run tag @e[x=-1733.5,y=44,z=-206.5,distance=..0.7,tag=action_floor] remove enabled
execute if block -1741 45 -206 minecraft:iron_door[open=true] run tag @e[x=-1746.5,y=44,z=-203.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1741 45 -206 minecraft:iron_door[open=false] run tag @e[x=-1746.5,y=44,z=-203.5,distance=..0.7,tag=action_floor] remove enabled
execute if block -1741 45 -206 minecraft:iron_door[open=true] run tag @e[x=-1753.5,y=44,z=-206.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1741 45 -206 minecraft:iron_door[open=false] run tag @e[x=-1753.5,y=44,z=-206.5,distance=..0.7,tag=action_floor] remove enabled
execute if block -1741 45 -206 minecraft:iron_door[open=true] run tag @e[x=-1756.5,y=44,z=-198.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1741 45 -206 minecraft:iron_door[open=false] run tag @e[x=-1756.5,y=44,z=-198.5,distance=..0.7,tag=action_floor] remove enabled
execute if block -1741 45 -206 minecraft:iron_door[open=true] run tag @e[x=-1750.5,y=44,z=-192.5,distance=..0.7,tag=action_floor] add enabled
execute if block -1741 45 -206 minecraft:iron_door[open=false] run tag @e[x=-1750.5,y=44,z=-192.5,distance=..0.7,tag=action_floor] remove enabled
execute if block -1692 44 -243 minecraft:chest run setblock -1692 45 -243 minecraft:barrier
execute if block -1691 44 -243 minecraft:chest run setblock -1691 45 -243 minecraft:barrier
execute if block -1686 44 -239 minecraft:chest run setblock -1686 45 -239 minecraft:barrier
execute if block -1685 44 -235 minecraft:chest run setblock -1685 45 -235 minecraft:barrier
execute if block -1680 44 -237 minecraft:chest run setblock -1680 45 -237 minecraft:barrier
execute if block -1677 44 -235 minecraft:chest run setblock -1677 45 -235 minecraft:barrier
execute if block -1685 44 -228 minecraft:chest run setblock -1685 45 -228 minecraft:barrier
execute if block -1706 44 -232 minecraft:chest run setblock -1706 45 -232 minecraft:barrier
execute if block -1698 44 -222 minecraft:chest run setblock -1698 45 -222 minecraft:barrier
execute if block -1698 44 -221 minecraft:chest run setblock -1698 45 -221 minecraft:barrier
execute if block -1697 44 -222 minecraft:chest run setblock -1697 45 -222 minecraft:barrier
execute if block -1697 44 -221 minecraft:chest run setblock -1697 45 -221 minecraft:barrier
execute if block -1711 44 -220 minecraft:chest run setblock -1711 45 -220 minecraft:barrier
execute if block -1748 44 -238 minecraft:chest run setblock -1748 45 -238 minecraft:barrier
execute if block -1730 44 -218 minecraft:chest run setblock -1730 45 -218 minecraft:barrier
execute if block -1725 44 -227 minecraft:chest run setblock -1725 45 -227 minecraft:barrier
execute if block -1721 44 -227 minecraft:chest run setblock -1721 45 -227 minecraft:barrier
execute if block -1719 44 -226 minecraft:chest run setblock -1719 45 -226 minecraft:barrier
execute if block -1718 44 -224 minecraft:chest run setblock -1718 45 -224 minecraft:barrier
execute if block -1720 44 -212 minecraft:chest run setblock -1720 45 -212 minecraft:barrier
execute if block -1719 44 -202 minecraft:chest run setblock -1719 45 -202 minecraft:barrier
execute if block -1729 44 -209 minecraft:chest run setblock -1729 45 -209 minecraft:barrier
execute if block -1729 44 -205 minecraft:chest run setblock -1729 45 -205 minecraft:barrier
execute if block -1730 44 -204 minecraft:chest run setblock -1730 45 -204 minecraft:barrier
execute if block -1728 44 -204 minecraft:chest run setblock -1728 45 -204 minecraft:barrier
execute if block -1729 44 -203 minecraft:chest run setblock -1729 45 -203 minecraft:barrier
execute if block -1746 44 -208 minecraft:chest run setblock -1746 45 -208 minecraft:barrier
execute if block -1747 44 -209 minecraft:chest run setblock -1747 45 -209 minecraft:barrier
execute if block -1753 44 -204 minecraft:chest run setblock -1753 45 -204 minecraft:barrier
execute if block -1756 44 -203 minecraft:chest run setblock -1756 45 -203 minecraft:barrier
execute if block -1756 44 -192 minecraft:chest run setblock -1756 45 -192 minecraft:barrier
execute if block -1755 44 -191 minecraft:chest run setblock -1755 45 -191 minecraft:barrier
execute if block -1732 44 -196 minecraft:chest run setblock -1732 45 -196 minecraft:barrier
execute if block -1732 44 -189 minecraft:chest run setblock -1732 45 -189 minecraft:barrier
execute if block -1717 44 -189 minecraft:chest run setblock -1717 45 -189 minecraft:barrier
execute if block -1717 44 -195 minecraft:chest run setblock -1717 45 -195 minecraft:barrier
execute if block -1697 44 -194 minecraft:chest run setblock -1697 45 -194 minecraft:barrier
execute if block -1693 44 -193 minecraft:chest run setblock -1693 45 -193 minecraft:barrier
execute if block -1699 44 -187 minecraft:chest run setblock -1699 45 -187 minecraft:barrier
execute if block -1686 44 -194 minecraft:chest run setblock -1686 45 -194 minecraft:barrier
execute if block -1686 44 -193 minecraft:chest run setblock -1686 45 -193 minecraft:barrier
execute if block -1685 44 -194 minecraft:chest run setblock -1685 45 -194 minecraft:barrier
execute if block -1685 44 -193 minecraft:chest run setblock -1685 45 -193 minecraft:barrier
execute if block -1681 44 -193 minecraft:chest run setblock -1681 45 -193 minecraft:barrier
execute if block -1680 44 -194 minecraft:chest run setblock -1680 45 -194 minecraft:barrier
execute if block -1680 44 -188 minecraft:chest run setblock -1680 45 -188 minecraft:barrier
execute if block -1707 44 -203 minecraft:chest run setblock -1707 45 -203 minecraft:barrier
execute if block -1703 44 -203 minecraft:chest run setblock -1703 45 -203 minecraft:barrier
execute if block -1692 44 -243 minecraft:air run setblock -1692 45 -243 minecraft:air
execute if block -1691 44 -243 minecraft:air run setblock -1691 45 -243 minecraft:air
execute if block -1686 44 -239 minecraft:air run setblock -1686 45 -239 minecraft:air
execute if block -1685 44 -235 minecraft:air run setblock -1685 45 -235 minecraft:air
execute if block -1680 44 -237 minecraft:air if block -1680 45 -237 minecraft:barrier run summon minecraft:tnt -1680 44 -237 {CustomName:"{\"translate\":\"medabots_server:entity.bomb\"}",Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1680 44 -237 minecraft:air run setblock -1680 45 -237 minecraft:air
execute if block -1677 44 -235 minecraft:air run setblock -1677 45 -235 minecraft:air
execute if block -1685 44 -228 minecraft:air run setblock -1685 45 -228 minecraft:air
execute if block -1706 44 -232 minecraft:air run setblock -1706 45 -232 minecraft:air
execute if block -1698 44 -222 minecraft:air run setblock -1698 45 -222 minecraft:air
execute if block -1698 44 -221 minecraft:air run setblock -1698 45 -221 minecraft:air
execute if block -1697 44 -222 minecraft:air run setblock -1697 45 -222 minecraft:air
execute if block -1697 44 -221 minecraft:air run setblock -1697 45 -221 minecraft:air
execute if block -1711 44 -220 minecraft:air run setblock -1711 45 -220 minecraft:air
execute if block -1748 44 -238 minecraft:air run setblock -1748 45 -238 minecraft:air
execute if block -1730 44 -218 minecraft:air run setblock -1730 45 -218 minecraft:air
execute if block -1725 44 -227 minecraft:air run setblock -1725 45 -227 minecraft:air
execute if block -1721 44 -227 minecraft:air if block -1721 45 -227 minecraft:barrier run summon minecraft:tnt -1721 44 -227 {CustomName:"{\"translate\":\"medabots_server:entity.bomb\"}",Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1721 44 -227 minecraft:air run setblock -1721 45 -227 minecraft:air
execute if block -1719 44 -226 minecraft:air if block -1719 45 -226 minecraft:barrier run summon minecraft:tnt -1719 44 -226 {CustomName:"{\"translate\":\"medabots_server:entity.bomb\"}",Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1719 44 -226 minecraft:air run setblock -1719 45 -226 minecraft:air
execute if block -1718 44 -224 minecraft:air if block -1718 45 -224 minecraft:barrier run summon minecraft:tnt -1718 44 -224 {CustomName:"{\"translate\":\"medabots_server:entity.bomb\"}",Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1718 44 -224 minecraft:air run setblock -1718 45 -224 minecraft:air
execute if block -1720 44 -212 minecraft:air run setblock -1720 45 -212 minecraft:air
execute if block -1719 44 -202 minecraft:air run setblock -1719 45 -202 minecraft:air
execute if block -1729 44 -209 minecraft:air run setblock -1729 45 -209 minecraft:air
execute if block -1729 44 -205 minecraft:air if block -1729 45 -205 minecraft:barrier run summon minecraft:tnt -1729 44 -205 {CustomName:"{\"translate\":\"medabots_server:entity.bomb\"}",Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1729 44 -205 minecraft:air run setblock -1729 45 -205 minecraft:air
execute if block -1730 44 -204 minecraft:air run setblock -1730 45 -204 minecraft:air
execute if block -1728 44 -204 minecraft:air run setblock -1728 45 -204 minecraft:air
execute if block -1729 44 -203 minecraft:air run setblock -1729 45 -203 minecraft:air
execute if block -1746 44 -208 minecraft:air run setblock -1746 45 -208 minecraft:air
execute if block -1747 44 -209 minecraft:air run setblock -1747 45 -209 minecraft:air
execute if block -1753 44 -204 minecraft:air if block -1753 45 -204 minecraft:barrier run summon minecraft:tnt -1753 44 -204 {CustomName:"{\"translate\":\"medabots_server:entity.bomb\"}",Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1753 44 -204 minecraft:air run setblock -1753 45 -204 minecraft:air
execute if block -1756 44 -203 minecraft:air run setblock -1756 45 -203 minecraft:air
execute if block -1756 44 -192 minecraft:air run setblock -1756 45 -192 minecraft:air
execute if block -1755 44 -191 minecraft:air run setblock -1755 45 -191 minecraft:air
execute if block -1732 44 -196 minecraft:air run setblock -1732 45 -196 minecraft:air
execute if block -1732 44 -189 minecraft:air if block -1732 45 -189 minecraft:barrier run summon minecraft:tnt -1732 44 -189 {CustomName:"{\"translate\":\"medabots_server:entity.bomb\"}",Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1732 44 -189 minecraft:air run setblock -1732 45 -189 minecraft:air
execute if block -1717 44 -189 minecraft:air if block -1717 45 -189 minecraft:barrier run summon minecraft:tnt -1717 44 -189 {CustomName:"{\"translate\":\"medabots_server:entity.bomb\"}",Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1717 44 -189 minecraft:air run setblock -1717 45 -189 minecraft:air
execute if block -1717 44 -195 minecraft:air run setblock -1717 45 -195 minecraft:air
execute if block -1697 44 -194 minecraft:air run setblock -1697 45 -194 minecraft:air
execute if block -1693 44 -193 minecraft:air run setblock -1693 45 -193 minecraft:air
execute if block -1699 44 -187 minecraft:air run setblock -1699 45 -187 minecraft:air
execute if block -1686 44 -194 minecraft:air run setblock -1686 45 -194 minecraft:air
execute if block -1686 44 -193 minecraft:air run setblock -1686 45 -193 minecraft:air
execute if block -1685 44 -194 minecraft:air run setblock -1685 45 -194 minecraft:air
execute if block -1685 44 -193 minecraft:air run setblock -1685 45 -193 minecraft:air
execute if block -1681 44 -193 minecraft:air run setblock -1681 45 -193 minecraft:air
execute if block -1680 44 -194 minecraft:air if block -1680 45 -194 minecraft:barrier run summon minecraft:tnt -1680 44 -194 {CustomName:"{\"translate\":\"medabots_server:entity.bomb\"}",Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1680 44 -194 minecraft:air run setblock -1680 45 -194 minecraft:air
execute if block -1680 44 -188 minecraft:air if block -1680 45 -188 minecraft:barrier run summon minecraft:creeper -1680 44 -188 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:"{\"translate\":\"medabots_server:entity.guard\"}",Team:"StageEnemy",Tags:["hostile","killerable","guard"],DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
execute if block -1680 44 -188 minecraft:air run setblock -1680 45 -188 minecraft:air
execute if block -1707 44 -203 minecraft:air if block -1707 45 -203 minecraft:barrier run summon minecraft:tnt -1707 44 -203 {CustomName:"{\"translate\":\"medabots_server:entity.bomb\"}",Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1707 44 -203 minecraft:air run setblock -1707 45 -203 minecraft:air
execute if block -1703 44 -203 minecraft:air run setblock -1703 45 -203 minecraft:air
execute if block -1710 45 -209 minecraft:iron_door[open=true] if entity @s[x=-1709,y=44,z=-210,dx=3,dy=3,dz=3] run function medabots_server:stage/create/iceberg_a/first_go_battle/0
execute if block -1710 45 -209 minecraft:iron_door[open=true] positioned -1702 44 -207 run function medabots_server:stage/wait_for_robattle_preventation
execute if block -1710 44 -209 minecraft:structure_block run setblock -1710 45 -209 minecraft:redstone_block
execute if entity @e[x=-1764,y=41,z=-247,dx=88,dy=7,dz=63,tag=mr_referee] store result score @s BattlingMedabots if entity @e[x=-1764,y=41,z=-247,dx=88,dy=7,dz=63,scores={Stage=17,Medabot=0..,Battle=1..}]
execute as @e[x=-1764,y=41,z=-247,dx=88,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=17}] run scoreboard players set @s Stage 17
execute unless entity @s[x=-1764,y=41,z=-247,dx=88,dy=7,dz=63,scores={Battle=1..}] run function medabots_server:stage/clean_up/iceberg_a/first_go
execute if entity @s[scores={BattlingMedabots=1}] run function medabots_server:stage/clean_up/iceberg_a/first_go
stopsound @s[scores={BattlingMedabots=1}] music
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1}] -1704 50 -221 14
scoreboard players set @s[scores={BattlingMedabots=1}] Battle 0
scoreboard players set @s[scores={BattlingMedabots=1}] MusicType 1
scoreboard players set @s[scores={BattlingMedabots=1}] Music 299
advancement grant @s[scores={BattlingMedabots=1}] only medabots_server:wave_1/torutoru_land_master iceberg_a_first_go
teleport @s[scores={BattlingMedabots=1}] -1704 50 -221 -180 0
execute as @s[scores={BattlingMedabots=1}] run bossbar set medabots_server:boxer/time players
execute if entity @s[scores={BattlingMedabots=1}] run bossbar set medabots_server:iceberg_a/time players
execute if entity @s[scores={BattlingMedabots=2..,Battle=1}] store result score #temp Time run bossbar get medabots_server:iceberg_a/time value
execute if entity @s[scores={BattlingMedabots=2..,Battle=1}] store result bossbar medabots_server:iceberg_a/time value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if score #temp Time matches 0 as @e[x=-1764,y=41,z=-247,dx=88,dy=7,dz=63,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
execute if entity @s[scores={BattlingMedabots=2..,Battle=1}] run scoreboard players reset #temp Time
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots