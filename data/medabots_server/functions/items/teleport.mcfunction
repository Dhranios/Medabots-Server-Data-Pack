# Prevent money from jumping away
execute unless data entity @s Thrower run data modify entity @s[nbt={Item:{tag:{medabots_server:{id:"medabots_server:medallar_cent"}}}},tag=!do_not_teleport] {Motion:[0.0d,0.0d,0.0d],PickupDelay:0s}

# Give dropped items to the me
scoreboard players add @s[scores={Time=..59}] Time 1
execute unless entity @s[scores={Time=0..}] if data entity @s Thrower run scoreboard players add @s Time 1
execute if entity @s[scores={Stage=0..}] run data merge entity @s[tag=!do_not_teleport] {PickupDelay:0s}
execute unless entity @s[scores={Stage=0..}] run data merge entity @s[tag=!do_not_teleport,nbt={Item:{tag:{medabots_server:{activated:1b}}}}] {PickupDelay:0s}
execute if entity @s[scores={Time=60},tag=!break,tag=!falling,tag=!damage_ball] if data entity @s Owner run function medabots_server:items/replace
execute if entity @s[tag=!break,tag=!falling,tag=!damage_ball] if data entity @s Thrower unless data entity @s Owner run data modify entity @s Owner set from entity @s Thrower
execute if entity @s[tag=medabot_loot] store result score #temp Stage run scoreboard players get @s Stage
execute if entity @s[tag=medabot_loot] as @a[tag=hostile] unless entity @s[scores={DeathTime=1..}] if score @s Stage = #temp Stage run tag @s add this_medabot
execute if entity @s[tag=medabot_loot,tag=enemy_loot] at @a[tag=this_medabot,sort=nearest,limit=1,tag=!enemy_medabot] run teleport @s ~ ~ ~
execute if entity @s[tag=medabot_loot,tag=ally_loot] at @a[tag=this_medabot,sort=nearest,limit=1,tag=!ally_medabot] run teleport @s ~ ~ ~
execute if entity @s[tag=medabot_loot,tag=!enemy_loot,tag=!ally_loot] at @a[tag=this_medabot,sort=nearest,limit=1] run teleport @s ~ ~ ~
execute if entity @s[tag=medabot_loot] run scoreboard players reset #temp Stage
execute if entity @s[tag=medabot_loot] run tag @e[tag=this_medabot] remove this_medabot
execute if entity @a[dy=3,nbt={Inventory:[{tag:{medabots_server:{move:"float",activated:1b}}}]}] run tag @s add teleport_up
execute if entity @a[dy=3,scores={Fly=1..}] run tag @s add teleport_up
teleport @s[tag=teleport_up] ~ ~1 ~
tag @s[tag=teleport_up] remove teleport_up
tag @s add do_not_teleport