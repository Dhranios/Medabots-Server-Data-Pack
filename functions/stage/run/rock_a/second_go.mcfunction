execute if block -1586 46 -164 minecraft:iron_door[open=false] if block -1597 44 -159 minecraft:lime_wool run setblock -1586 45 -164 minecraft:structure_block[mode=load]{name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1617 46 -167 minecraft:iron_door[open=true] if block -1617 44 -156 minecraft:light_blue_wool run setblock -1617 45 -167 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
execute if block -1617 46 -167 minecraft:iron_door[open=false] if block -1617 44 -156 minecraft:blue_wool run setblock -1617 45 -167 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1625 45 -132 minecraft:chest run setblock -1625 46 -132 minecraft:barrier
execute if block -1624 45 -132 minecraft:chest run setblock -1624 46 -132 minecraft:barrier
execute if block -1625 45 -131 minecraft:chest run setblock -1625 46 -131 minecraft:barrier
execute if block -1624 45 -131 minecraft:chest run setblock -1624 46 -131 minecraft:barrier
execute if block -1629 45 -130 minecraft:chest run setblock -1629 46 -130 minecraft:barrier
execute if block -1628 45 -130 minecraft:chest run setblock -1628 46 -130 minecraft:barrier
execute if block -1629 45 -129 minecraft:chest run setblock -1629 46 -129 minecraft:barrier
execute if block -1628 45 -129 minecraft:chest run setblock -1628 46 -129 minecraft:barrier
execute if block -1628 45 -122 minecraft:chest run setblock -1628 46 -122 minecraft:barrier
execute if block -1627 45 -122 minecraft:chest run setblock -1627 46 -122 minecraft:barrier
execute if block -1628 45 -121 minecraft:chest run setblock -1628 46 -121 minecraft:barrier
execute if block -1627 45 -121 minecraft:chest run setblock -1627 46 -121 minecraft:barrier
execute if block -1605 45 -127 minecraft:chest run setblock -1605 46 -127 minecraft:barrier
execute if block -1603 45 -123 minecraft:chest run setblock -1603 46 -123 minecraft:barrier
execute if block -1593 45 -131 minecraft:chest run setblock -1593 46 -131 minecraft:barrier
execute if block -1580 45 -140 minecraft:chest run setblock -1580 46 -140 minecraft:barrier
execute if block -1583 45 -146 minecraft:chest run setblock -1583 46 -146 minecraft:barrier
execute if block -1579 45 -150 minecraft:chest run setblock -1579 46 -150 minecraft:barrier
execute if block -1575 45 -159 minecraft:chest run setblock -1575 46 -159 minecraft:barrier
execute if block -1598 45 -156 minecraft:chest run setblock -1598 46 -156 minecraft:barrier
execute if block -1580 45 -169 minecraft:chest run setblock -1580 46 -169 minecraft:barrier
execute if block -1580 45 -170 minecraft:chest run setblock -1580 46 -170 minecraft:barrier
execute if block -1583 45 -170 minecraft:chest run setblock -1583 46 -170 minecraft:barrier
execute if block -1583 45 -172 minecraft:chest run setblock -1583 46 -172 minecraft:barrier
execute if block -1584 45 -174 minecraft:chest run setblock -1584 46 -174 minecraft:barrier
execute if block -1586 45 -171 minecraft:chest run setblock -1586 46 -171 minecraft:barrier
execute if block -1587 45 -173 minecraft:chest run setblock -1587 46 -173 minecraft:barrier
execute if block -1589 45 -176 minecraft:chest run setblock -1589 46 -176 minecraft:barrier
execute if block -1602 45 -142 minecraft:chest run setblock -1602 46 -142 minecraft:barrier
execute if block -1597 45 -151 minecraft:chest run setblock -1597 46 -151 minecraft:barrier
execute if block -1612 45 -143 minecraft:chest run setblock -1612 46 -143 minecraft:barrier
execute if block -1627 45 -139 minecraft:chest run setblock -1627 46 -139 minecraft:barrier
execute if block -1631 45 -143 minecraft:chest run setblock -1631 46 -143 minecraft:barrier
execute if block -1634 45 -146 minecraft:chest run setblock -1634 46 -146 minecraft:barrier
execute if block -1634 45 -151 minecraft:chest run setblock -1634 46 -151 minecraft:barrier
execute if block -1632 45 -151 minecraft:chest run setblock -1632 46 -151 minecraft:barrier
execute if block -1632 45 -157 minecraft:chest run setblock -1632 46 -157 minecraft:barrier
execute if block -1630 45 -159 minecraft:chest run setblock -1630 46 -159 minecraft:barrier
execute if block -1630 45 -162 minecraft:chest run setblock -1630 46 -162 minecraft:barrier
execute if block -1628 45 -154 minecraft:chest run setblock -1628 46 -154 minecraft:barrier
execute if block -1629 45 -154 minecraft:chest run setblock -1629 46 -154 minecraft:barrier
execute if block -1626 45 -177 minecraft:chest run setblock -1626 46 -177 minecraft:barrier
execute if block -1617 45 -156 minecraft:chest run setblock -1617 46 -156 minecraft:barrier
execute if block -1625 45 -132 minecraft:air run setblock -1625 46 -132 minecraft:air
execute if block -1624 45 -132 minecraft:air run setblock -1624 46 -132 minecraft:air
execute if block -1625 45 -131 minecraft:air if block -1625 46 -131 minecraft:barrier run summon minecraft:tnt -1625 45 -131 {CustomName:"{\"translate\":\"medabots_server:entity.bomb\"}",Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1625 45 -131 minecraft:air run setblock -1625 46 -131 minecraft:air
execute if block -1624 45 -131 minecraft:air run setblock -1624 46 -131 minecraft:air
execute if block -1629 45 -130 minecraft:air if block -1629 46 -130 minecraft:barrier run summon minecraft:tnt -1629 45 -130 {CustomName:"{\"translate\":\"medabots_server:entity.bomb\"}",Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1629 45 -130 minecraft:air run setblock -1629 46 -130 minecraft:air
execute if block -1628 45 -130 minecraft:air run setblock -1628 46 -130 minecraft:air
execute if block -1629 45 -129 minecraft:air run setblock -1629 46 -129 minecraft:air
execute if block -1628 45 -129 minecraft:air run setblock -1628 46 -129 minecraft:air
execute if block -1628 45 -122 minecraft:air run setblock -1628 46 -122 minecraft:air
execute if block -1627 45 -122 minecraft:air run setblock -1627 46 -122 minecraft:air
execute if block -1628 45 -121 minecraft:air if block -1628 46 -121 minecraft:barrier run summon minecraft:tnt -1628 45 -121 {CustomName:"{\"translate\":\"medabots_server:entity.bomb\"}",Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1628 45 -121 minecraft:air run setblock -1628 46 -121 minecraft:air
execute if block -1627 45 -121 minecraft:air run setblock -1627 46 -121 minecraft:air
execute if block -1605 45 -127 minecraft:air run setblock -1605 46 -127 minecraft:air
execute if block -1603 45 -123 minecraft:air if block -1603 46 -123 minecraft:barrier run summon minecraft:tnt -1603 45 -123 {CustomName:"{\"translate\":\"medabots_server:entity.bomb\"}",Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1603 45 -123 minecraft:air run setblock -1603 46 -123 minecraft:air
execute if block -1593 45 -131 minecraft:air run setblock -1593 46 -131 minecraft:air
execute if block -1580 45 -140 minecraft:air run setblock -1580 46 -140 minecraft:air
execute if block -1583 45 -146 minecraft:air run setblock -1583 46 -146 minecraft:air
execute if block -1579 45 -150 minecraft:air run setblock -1579 46 -150 minecraft:air
execute if block -1575 45 -159 minecraft:air if block -1575 46 -159 minecraft:barrier run summon minecraft:area_effect_cloud -1575 45 -159 {CustomName:"{\"translate\":\"medabots_server:entity.balloon_bomb\"}",Tags:["balloon_bomb"],Duration:2147483647}
execute if block -1575 45 -159 minecraft:air run setblock -1575 46 -159 minecraft:air
execute if block -1598 45 -156 minecraft:air run setblock -1598 46 -156 minecraft:air
execute if block -1580 45 -169 minecraft:air run setblock -1580 46 -169 minecraft:air
execute if block -1580 45 -170 minecraft:air if block -1580 46 -170 minecraft:barrier run summon minecraft:tnt -1580 45 -170 {CustomName:"{\"translate\":\"medabots_server:entity.bomb\"}",Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1580 45 -170 minecraft:air run setblock -1580 46 -170 minecraft:air
execute if block -1583 45 -170 minecraft:air run setblock -1583 46 -170 minecraft:air
execute if block -1583 45 -172 minecraft:air if block -1583 46 -172 minecraft:barrier run summon minecraft:tnt -1583 45 -172 {CustomName:"{\"translate\":\"medabots_server:entity.bomb\"}",Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1583 45 -172 minecraft:air run setblock -1583 46 -172 minecraft:air
execute if block -1584 45 -174 minecraft:air run setblock -1584 46 -174 minecraft:air
execute if block -1586 45 -171 minecraft:air run setblock -1586 46 -171 minecraft:air
execute if block -1587 45 -173 minecraft:air if block -1587 46 -173 minecraft:barrier run summon minecraft:tnt -1587 45 -173 {CustomName:"{\"translate\":\"medabots_server:entity.bomb\"}",Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1587 45 -173 minecraft:air run setblock -1587 46 -173 minecraft:air
execute if block -1589 45 -176 minecraft:air run setblock -1589 46 -176 minecraft:air
execute if block -1602 45 -142 minecraft:air run setblock -1602 46 -142 minecraft:air
execute if block -1597 45 -151 minecraft:air run setblock -1597 46 -151 minecraft:air
execute if block -1612 45 -143 minecraft:air if block -1612 46 -143 minecraft:barrier run summon minecraft:creeper -1612 45 -143 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:"{\"translate\":\"medabots_server:entity.guard\"}",Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
execute if block -1612 45 -143 minecraft:air run setblock -1612 46 -143 minecraft:air
execute if block -1627 45 -139 minecraft:air run setblock -1627 46 -139 minecraft:air
execute if block -1631 45 -143 minecraft:air run setblock -1631 46 -143 minecraft:air
execute if block -1634 45 -146 minecraft:air run setblock -1634 46 -146 minecraft:air
execute if block -1634 45 -151 minecraft:air run setblock -1634 46 -151 minecraft:air
execute if block -1632 45 -151 minecraft:air run setblock -1632 46 -151 minecraft:air
execute if block -1632 45 -157 minecraft:air run setblock -1632 46 -157 minecraft:air
execute if block -1630 45 -159 minecraft:air run setblock -1630 46 -159 minecraft:air
execute if block -1630 45 -162 minecraft:air if block -1630 46 -162 minecraft:barrier run summon minecraft:tnt -1630 45 -162 {CustomName:"{\"translate\":\"medabots_server:entity.bomb\"}",Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1630 45 -162 minecraft:air run setblock -1630 46 -162 minecraft:air
execute if block -1628 45 -154 minecraft:air if block -1628 46 -154 minecraft:barrier run summon minecraft:tnt -1628 45 -154 {CustomName:"{\"translate\":\"medabots_server:entity.bomb\"}",Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1628 45 -154 minecraft:air run setblock -1628 46 -154 minecraft:air
execute if block -1629 45 -154 minecraft:air run setblock -1629 46 -154 minecraft:air
execute if block -1626 45 -177 minecraft:air run setblock -1626 46 -177 minecraft:air
execute if block -1617 45 -156 minecraft:air run setblock -1617 46 -156 minecraft:air
execute if block -1616 46 -167 minecraft:iron_door[open=true] if entity @s[x=-1616,y=45,z=-168,dx=3,dy=3,dz=3] run function medabots_server:stage/create/rock_a/second_go_battle/0
execute if entity @e[x=-1636,y=43,z=-180,dx=63,dy=7,dz=63,tag=mr_referee] store result score @s BattlingMedabots if entity @e[x=-1636,y=43,z=-180,dx=63,dy=7,dz=63,scores={Stage=6,Medabot=0..,Battle=1..}]
execute as @e[x=-1636,y=43,z=-180,dx=63,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=6}] run scoreboard players set @s Stage 6
execute if entity @s[scores={BattlingMedabots=1}] run function medabots_server:stage/clean_up/rock_a/second_go
stopsound @s[scores={BattlingMedabots=1}] music
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1}] -1603 51 -149 14
scoreboard players set @s[scores={BattlingMedabots=1}] Battle 0
scoreboard players set @s[scores={BattlingMedabots=1}] MusicType 1
scoreboard players set @s[scores={BattlingMedabots=1}] Music 299
advancement grant @s[scores={BattlingMedabots=1}] only medabots_server:stages/rock_a_second_go
teleport @s[scores={BattlingMedabots=1}] -1603 51 -149 -180 0
execute if entity @s[scores={BattlingMedabots=1}] run bossbar set medabots_server:rock_a/time players
execute if entity @s[scores={BattlingMedabots=2..,Battle=1}] store result score #temp Time run bossbar get medabots_server:rock_a/time value
execute if entity @s[scores={BattlingMedabots=2..,Battle=1}] store result bossbar medabots_server:rock_a/time value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if score #temp Time matches 0 as @e[x=-1636,y=43,z=-180,dx=63,dy=7,dz=63,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
execute if entity @s[scores={BattlingMedabots=2..,Battle=1}] run scoreboard players reset #temp Time
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1586 45 -164 minecraft:structure_block run setblock -1586 46 -164 minecraft:redstone_block
execute if block -1617 45 -167 minecraft:structure_block run setblock -1618 45 -167 minecraft:redstone_block
execute if block -1618 45 -167 minecraft:redstone_block run setblock -1618 45 -167 minecraft:air
execute if block -1616 45 -167 minecraft:structure_block run setblock -1615 45 -167 minecraft:redstone_block
execute if block -1615 45 -167 minecraft:redstone_block run setblock -1615 45 -167 minecraft:air