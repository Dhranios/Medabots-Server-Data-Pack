# Prevent money from jumping away
data merge entity @s[nbt={Item:{tag:{medabots_server:{id:"medabots_server:medallar_cent"}}}},tag=!do_not_teleport,nbt=!{Thrower:{}}] {Motion:[0.0d,0.0d,0.0d],PickupDelay:0s}

# Give dropped items to the me
scoreboard players add @s[scores={Time=..59}] Time 1
execute unless entity @s[scores={Time=0..}] run scoreboard players add @s[nbt={Thrower:{}}] Time 1
execute if entity @s[scores={Stage=1..}] run data merge entity @s[tag=!do_not_teleport] {PickupDelay:0s}
execute unless entity @s[scores={Stage=1..}] run data merge entity @s[tag=!do_not_teleport,nbt=!{PickupDelay:0s}] {PickupDelay:40s}
execute if entity @s[scores={Time=60},nbt={Owner:{}}] run function medabots_server:other/replace_item
data modify entity @s[nbt={Thrower:{}},nbt=!{Owner:{}}] Owner merge from entity @s Thrower
execute if entity @s[tag=medabot_loot] store result score #temp Stage run scoreboard players get @s Stage
execute if entity @s[tag=medabot_loot] as @a[tag=hostile] unless entity @s[scores={DeathTime=1..}] if score @s Stage = #temp Stage run tag @s add this_medabot
execute if entity @s[tag=medabot_loot] at @a[tag=this_medabot,sort=nearest,limit=1] run teleport @s ~ ~ ~
execute if entity @s[tag=medabot_loot] run scoreboard players reset #temp Stage
execute if entity @s[tag=medabot_loot] run tag @e[tag=this_medabot] remove this_medabot
tag @s add do_not_teleport