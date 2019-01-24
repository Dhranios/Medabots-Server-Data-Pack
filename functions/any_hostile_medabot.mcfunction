# Set the damage taken
execute if entity @s[type=minecraft:player] store result score @s Damage run data get entity @s Health -1
execute if entity @s[type=!minecraft:player] store result score @s Damage run data get entity @s AbsorptionAmount -1
scoreboard players operation @s Damage += #100 Constants

# Waiting for start of robattle
effect give @s[scores={Battle=2}] minecraft:slowness 1 10 true
scoreboard players set @s[scores={Battle=2}] Damage 0
scoreboard players set @s[scores={Battle=2}] UsePart 0

# Make Leg parts do something
function medabots_server:medaparts/float
function medabots_server:medaparts/fly
function medabots_server:medaparts/multi_legged
function medabots_server:medaparts/swim
function medabots_server:medaparts/tank
function medabots_server:medaparts/two_legged
function medabots_server:medaparts/wheel

# Get a boost by jumping on another player
function medabots_server:medaparts/footstool

# Grab ledges and pull yourself up
function medabots_server:medaparts/edge_grab

# Charge up the medaforce
execute if entity @s[scores={MedaforceTimer=3}] run function medabots_server:medaparts/charge_medaforce

#  Forget the part
scoreboard players set @s[scores={Time=900..950}] Time 1

# Prevent invalid Time values
scoreboard players set @s[scores={Time=..0}] Time 1
execute unless entity @s[scores={Time=-100..}] run scoreboard players set @s Time 1

# Part breaks
execute if entity @s[scores={LegsArmor=0}] run function medabots_server:medaparts/break_part
execute if entity @s[scores={LeftArmArmor=0}] run function medabots_server:medaparts/break_part
execute if entity @s[scores={RightArmArmor=0}] run function medabots_server:medaparts/break_part
execute if entity @s[scores={HeadArmor=0}] run function medabots_server:medaparts/break_part

# Global timer for the medaforce
scoreboard players add @s MedaforceTimer 1
scoreboard players set @s[scores={MedaforceTimer=6..}] MedaforceTimer 0