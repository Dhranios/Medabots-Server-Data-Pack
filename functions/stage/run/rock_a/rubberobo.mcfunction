execute if block -1586 46 -165 minecraft:iron_door[open=false] if block -1597 44 -159 minecraft:lime_wool run setblock -1586 45 -165 minecraft:structure_block[mode=load]{name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1586 45 -165 minecraft:structure_block run setblock -1586 46 -165 minecraft:redstone_block
execute if block -1617 46 -167 minecraft:iron_door[open=false] if block -1617 44 -156 minecraft:blue_wool run setblock -1617 45 -167 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1617 46 -167 minecraft:iron_door[open=true] if block -1617 44 -156 minecraft:light_blue_wool run setblock -1617 45 -167 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
execute if block -1617 45 -167 minecraft:structure_block run setblock -1617 46 -167 minecraft:redstone_block
execute if block -1628 45 -121 minecraft:chest run setblock -1628 46 -121 minecraft:barrier
execute if block -1627 45 -122 minecraft:chest run setblock -1627 46 -122 minecraft:barrier
execute if block -1626 45 -130 minecraft:chest run setblock -1626 46 -130 minecraft:barrier
execute if block -1623 45 -131 minecraft:chest run setblock -1623 46 -131 minecraft:barrier
execute if block -1624 45 -132 minecraft:chest run setblock -1624 46 -132 minecraft:barrier
execute if block -1618 45 -123 minecraft:chest run setblock -1618 46 -123 minecraft:barrier
execute if block -1607 45 -137 minecraft:chest run setblock -1607 46 -137 minecraft:barrier
execute if block -1604 45 -130 minecraft:chest run setblock -1604 46 -130 minecraft:barrier
execute if block -1603 45 -131 minecraft:chest run setblock -1603 46 -131 minecraft:barrier
execute if block -1603 45 -123 minecraft:chest run setblock -1603 46 -123 minecraft:barrier
execute if block -1593 45 -131 minecraft:chest run setblock -1593 46 -131 minecraft:barrier
execute if block -1587 45 -140 minecraft:chest run setblock -1587 46 -140 minecraft:barrier
execute if block -1580 45 -140 minecraft:chest run setblock -1580 46 -140 minecraft:barrier
execute if block -1583 45 -146 minecraft:chest run setblock -1583 46 -146 minecraft:barrier
execute if block -1579 45 -150 minecraft:chest run setblock -1579 46 -150 minecraft:barrier
execute if block -1575 45 -158 minecraft:chest run setblock -1575 46 -158 minecraft:barrier
execute if block -1584 45 -157 minecraft:chest run setblock -1584 46 -157 minecraft:barrier
execute if block -1587 45 -162 minecraft:chest run setblock -1587 46 -162 minecraft:barrier
execute if block -1596 45 -155 minecraft:chest run setblock -1596 46 -155 minecraft:barrier
execute if block -1598 45 -156 minecraft:chest run setblock -1598 46 -156 minecraft:barrier
execute if block -1580 45 -169 minecraft:chest run setblock -1580 46 -169 minecraft:barrier
execute if block -1580 45 -170 minecraft:chest run setblock -1580 46 -170 minecraft:barrier
execute if block -1583 45 -171 minecraft:chest run setblock -1583 46 -171 minecraft:barrier
execute if block -1583 45 -173 minecraft:chest run setblock -1583 46 -173 minecraft:barrier
execute if block -1586 45 -172 minecraft:chest run setblock -1586 46 -172 minecraft:barrier
execute if block -1584 45 -175 minecraft:chest run setblock -1584 46 -175 minecraft:barrier
execute if block -1587 45 -174 minecraft:chest run setblock -1587 46 -174 minecraft:barrier
execute if block -1589 45 -176 minecraft:chest run setblock -1589 46 -176 minecraft:barrier
execute if block -1602 45 -142 minecraft:chest run setblock -1602 46 -142 minecraft:barrier
execute if block -1597 45 -151 minecraft:chest run setblock -1597 46 -151 minecraft:barrier
execute if block -1612 45 -142 minecraft:chest run setblock -1612 46 -142 minecraft:barrier
execute if block -1627 45 -138 minecraft:chest run setblock -1627 46 -138 minecraft:barrier
execute if block -1631 45 -143 minecraft:chest run setblock -1631 46 -143 minecraft:barrier
execute if block -1634 45 -146 minecraft:chest run setblock -1634 46 -146 minecraft:barrier
execute if block -1634 45 -151 minecraft:chest run setblock -1634 46 -151 minecraft:barrier
execute if block -1632 45 -151 minecraft:chest run setblock -1632 46 -151 minecraft:barrier
execute if block -1632 45 -157 minecraft:chest run setblock -1632 46 -157 minecraft:barrier
execute if block -1630 45 -159 minecraft:chest run setblock -1630 46 -159 minecraft:barrier
execute if block -1630 45 -162 minecraft:chest run setblock -1630 46 -162 minecraft:barrier
execute if block -1628 45 -154 minecraft:chest run setblock -1628 46 -154 minecraft:barrier
execute if block -1629 45 -154 minecraft:chest run setblock -1629 46 -154 minecraft:barrier
execute if block -1617 45 -156 minecraft:chest run setblock -1617 46 -156 minecraft:barrier
execute if block -1626 45 -177 minecraft:chest run setblock -1626 46 -177 minecraft:barrier
execute if block -1628 45 -121 minecraft:air if block -1628 46 -121 minecraft:barrier run summon minecraft:tnt -1628 45 -121 {CustomName:"{\"translate\":\"medabots_server:entity.bomb\"}",Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1628 45 -121 minecraft:air run setblock -1628 46 -121 minecraft:air
execute if block -1627 45 -122 minecraft:air run setblock -1627 46 -122 minecraft:air
execute if block -1626 45 -130 minecraft:air run setblock -1626 46 -130 minecraft:air
execute if block -1623 45 -131 minecraft:air run setblock -1623 46 -131 minecraft:air
execute if block -1624 45 -132 minecraft:air if block -1624 46 -132 minecraft:barrier run summon minecraft:tnt -1624 45 -132 {CustomName:"{\"translate\":\"medabots_server:entity.bomb\"}",Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1624 45 -132 minecraft:air run setblock -1624 46 -132 minecraft:air
execute if block -1618 45 -123 minecraft:air if block -1618 46 -123 minecraft:barrier run summon minecraft:tnt -1618 45 -123 {CustomName:"{\"translate\":\"medabots_server:entity.bomb\"}",Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1618 45 -123 minecraft:air run setblock -1618 46 -123 minecraft:air
execute if block -1607 45 -137 minecraft:air run setblock -1607 46 -137 minecraft:air
execute if block -1604 45 -130 minecraft:air run setblock -1604 46 -130 minecraft:air
execute if block -1603 45 -131 minecraft:air if block -1603 46 -131 minecraft:barrier run summon minecraft:creeper -1603 45 -131 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:"{\"translate\":\"medabots_server:entity.guard\"}",Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
execute if block -1603 45 -131 minecraft:air run setblock -1603 46 -131 minecraft:air
execute if block -1603 45 -123 minecraft:air if block -1603 46 -123 minecraft:barrier run summon minecraft:tnt -1603 45 -123 {CustomName:"{\"translate\":\"medabots_server:entity.bomb\"}",Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1603 45 -123 minecraft:air run setblock -1603 46 -123 minecraft:air
execute if block -1593 45 -131 minecraft:air run setblock -1593 46 -131 minecraft:air
execute if block -1587 45 -140 minecraft:air run setblock -1587 46 -140 minecraft:air
execute if block -1580 45 -140 minecraft:air run setblock -1580 46 -140 minecraft:air
execute if block -1583 45 -146 minecraft:air if block -1583 46 -146 minecraft:barrier run summon minecraft:tnt -1583 45 -146 {CustomName:"{\"translate\":\"medabots_server:entity.bomb\"}",Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1583 45 -146 minecraft:air run setblock -1583 46 -146 minecraft:air
execute if block -1579 45 -150 minecraft:air run setblock -1579 46 -150 minecraft:air
execute if block -1575 45 -158 minecraft:air if block -1575 46 -158 minecraft:barrier run summon minecraft:area_effect_cloud -1575 45 -158 {CustomName:"{\"translate\":\"medabots_server:entity.balloon_bomb\"}",Tags:["balloon_bomb"],Duration:2147483647}
execute if block -1575 45 -158 minecraft:air run setblock -1575 46 -158 minecraft:air
execute if block -1584 45 -157 minecraft:air run setblock -1584 46 -157 minecraft:air
execute if block -1587 45 -162 minecraft:air run setblock -1587 46 -162 minecraft:air
execute if block -1596 45 -155 minecraft:air run setblock -1596 46 -155 minecraft:air
execute if block -1598 45 -156 minecraft:air run setblock -1598 46 -156 minecraft:air
execute if block -1580 45 -169 minecraft:air run setblock -1580 46 -169 minecraft:air
execute if block -1580 45 -170 minecraft:air if block -1580 46 -170 minecraft:barrier run summon minecraft:tnt -1580 45 -170 {CustomName:"{\"translate\":\"medabots_server:entity.bomb\"}",Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1580 45 -170 minecraft:air run setblock -1580 46 -170 minecraft:air
execute if block -1583 45 -171 minecraft:air run setblock -1583 46 -171 minecraft:air
execute if block -1583 45 -173 minecraft:air if block -1583 46 -173 minecraft:barrier run summon minecraft:tnt -1583 45 -173 {CustomName:"{\"translate\":\"medabots_server:entity.bomb\"}",Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1583 45 -173 minecraft:air run setblock -1583 46 -173 minecraft:air
execute if block -1586 45 -172 minecraft:air run setblock -1586 46 -172 minecraft:air
execute if block -1584 45 -175 minecraft:air run setblock -1584 46 -175 minecraft:air
execute if block -1587 45 -174 minecraft:air if block -1587 46 -174 minecraft:barrier run summon minecraft:tnt -1587 45 -174 {CustomName:"{\"translate\":\"medabots_server:entity.bomb\"}",Fuse:100s,Tags:["bomb","hostile","killerable"]}
execute if block -1587 45 -174 minecraft:air run setblock -1587 46 -174 minecraft:air
execute if block -1589 45 -176 minecraft:air run setblock -1589 46 -176 minecraft:air
execute if block -1602 45 -142 minecraft:air run setblock -1602 46 -142 minecraft:air
execute if block -1597 45 -151 minecraft:air run setblock -1597 46 -151 minecraft:air
execute if block -1612 45 -142 minecraft:air if block -1612 46 -142 minecraft:barrier run summon minecraft:creeper -1612 45 -142 {Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:100.0d}],Fuse:30s,CustomName:"{\"translate\":\"medabots_server:entity.guard\"}",Team:"StageEnemy",Tags:["hostile","killerable","guard","slow"],NoAI:1b,DeathLootTable:"medabots_server:entities/guard",AbsorptionAmount:10.0f,Health:100.0f}
execute if block -1612 45 -142 minecraft:air run setblock -1612 46 -142 minecraft:air
execute if block -1627 45 -138 minecraft:air run setblock -1627 46 -138 minecraft:air
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
execute if block -1617 45 -156 minecraft:air run setblock -1617 46 -156 minecraft:air
execute if block -1626 45 -177 minecraft:air run setblock -1626 46 -177 minecraft:air
execute as @e[x=-1636,y=43,z=-180,dx=63,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=7}] run scoreboard players set @s Stage 7
execute unless entity @s[x=-1636,y=43,z=-180,dx=63,dy=7,dz=63,scores={Battle=1..}] run function medabots_server:stage/clean_up/rock_a/rubberobo
execute unless entity @e[tag=rubberobo,scores={Stage=7}] if entity @s[x=-1600.5,y=45,z=-175.5,distance=..0.7,tag=hostile,gamemode=adventure] run function medabots_server:stage/clean_up/rock_a/rubberobo
execute unless entity @e[tag=rubberobo,scores={Stage=7}] run stopsound @s[x=-1600.5,y=45,z=-175.5,distance=..0.7,tag=hostile,gamemode=adventure] music
execute unless entity @e[tag=rubberobo,scores={Stage=7}] run playsound medabots_server:music.stage.stage_end music @s[x=-1600.5,y=45,z=-175.5,distance=..0.7,tag=hostile,gamemode=adventure] -1603 51 -149 14
execute unless entity @e[tag=rubberobo,scores={Stage=7}] run scoreboard players set @s[x=-1600.5,y=45,z=-175.5,distance=..0.7,tag=hostile,gamemode=adventure] Battle 0
execute unless entity @e[tag=rubberobo,scores={Stage=7}] run scoreboard players set @s[x=-1600.5,y=45,z=-175.5,distance=..0.7,tag=hostile,gamemode=adventure] MusicType 1
execute unless entity @e[tag=rubberobo,scores={Stage=7}] run scoreboard players set @s[x=-1600.5,y=45,z=-175.5,distance=..0.7,tag=hostile,gamemode=adventure] Music 299
execute unless entity @e[tag=rubberobo,scores={Stage=7}] run advancement grant @s[x=-1600.5,y=45,z=-175.5,distance=..0.7,tag=hostile,gamemode=adventure] only medabots_server:stages/rock_a_rubberobo
execute unless entity @e[tag=rubberobo,scores={Stage=7}] run teleport @s[x=-1600.5,y=45,z=-175.5,distance=..0.7,tag=hostile,gamemode=adventure] -1603 51 -149 -180 0