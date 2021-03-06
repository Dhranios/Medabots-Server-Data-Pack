# Waiting for start of robattle
execute if entity @s[scores={State=2}] run function medabots_server:gamemodes/default/robattle_wait

# Make Leg parts do something
execute if entity @s[tag=fly_legs,scores={State=1}] run function medabots_server:items/medapart/fly
execute if entity @s[tag=float_legs,scores={State=1}] run function medabots_server:items/medapart/float
execute if entity @s[tag=multi_legged_legs,scores={State=1..2}] run function medabots_server:items/medapart/multi_legged
execute if entity @s[tag=two_legged_legs,scores={State=1..2}] run function medabots_server:items/medapart/two_legged
execute if entity @s[tag=wheel_legs,scores={State=1..2}] run function medabots_server:items/medapart/wheel
execute if entity @s[tag=tank_legs,scores={State=1..2}] run function medabots_server:items/medapart/tank
function medabots_server:items/medapart/swim

execute if entity @s[tag=carried] run function medabots_server:items/medapart/fly/carried

execute if entity @s[tag=!carried,tag=!sneak_pos,tag=!dying,nbt={OnGround:0b},tag=ally_medabot] unless entity @s[scores={LegsArmor=1..},tag=fly_legs] run function medabots_server:items/medapart/fly/carry_me
execute if entity @s[tag=!carried,tag=!sneak_pos,tag=!dying,nbt={OnGround:0b},tag=enemy_medabot] unless entity @s[scores={LegsArmor=1..},tag=fly_legs] run function medabots_server:items/medapart/fly/carry_me

# Medaforce getting blocked
execute if entity @s[tag=medaforce_block] run function medabots_server:effects/blocked_medaforce_toggle

# Get a boost by jumping on another player
execute if entity @s[scores={State=1}] run function medabots_server:items/medapart/footstool

# Grab ledges and pull yourself up
execute if entity @s[scores={State=1}] run function medabots_server:items/medapart/edge_grab

# Charge up the medaforce
execute if entity @s[scores={MedaforceTimer=3,State=1}] run function medabots_server:items/medapart/charge_medaforce

# No combat if waiting for the player
scoreboard players set @s[scores={Time=1..,State=2..3}] Time 950
effect give @s[scores={State=2..3}] minecraft:resistance 9 1 true

# Prevent invalid Time values
scoreboard players set @s[scores={Time=..-1}] Time 0
execute unless entity @s[scores={Time=-100..}] run scoreboard players set @s Time 0

# Global timer for the medaforce
scoreboard players add @s MedaforceTimer 1
scoreboard players set @s[scores={MedaforceTimer=6..}] MedaforceTimer 0

execute if entity @s[scores={State=1}] run tag @e[tag=cannon,tag=!action_floor,tag=!enabled,distance=..16] add enabled
execute if entity @s[scores={State=1}] run tag @e[tag=guard,tag=!action_floor,tag=!enabled,distance=..16] add enabled
execute if entity @s[scores={State=1}] run tag @e[tag=bomb,tag=!action_floor,tag=!enabled,distance=..16] add enabled