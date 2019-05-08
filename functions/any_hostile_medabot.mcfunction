# Waiting for start of robattle
execute if entity @s[scores={Battle=2}] run function medabots_server:other/robattle_wait

# Make Leg parts do something
function medabots_server:medaparts/float
function medabots_server:medaparts/fly
function medabots_server:medaparts/multi_legged
function medabots_server:medaparts/swim
function medabots_server:medaparts/tank
function medabots_server:medaparts/two_legged
function medabots_server:medaparts/wheel

# Get a boost by jumping on another player
execute if entity @s[tag=!dying] run function medabots_server:medaparts/footstool

# Grab ledges and pull yourself up
execute if entity @s[tag=!dying] run function medabots_server:medaparts/edge_grab

# Charge up the medaforce
execute if entity @s[scores={MedaforceTimer=3,Battle=1}] run function medabots_server:medaparts/charge_medaforce

# Forget the part
scoreboard players set @s[scores={Time=900..950}] Time 0

# No combat if waiting for the player
scoreboard players set @s[scores={Time=1..},tag=0] Time 950
scoreboard players set @s[scores={Time=1..},tag=1] Time 950
scoreboard players set @s[scores={Time=1..},tag=2] Time 950
scoreboard players set @s[scores={Time=1..},tag=3] Time 950
scoreboard players set @s[scores={Time=1..},tag=4] Time 950
scoreboard players set @s[scores={Time=1..},tag=5] Time 950
scoreboard players set @s[scores={Time=1..},tag=6] Time 950
scoreboard players set @s[scores={Time=1..},tag=7] Time 950
scoreboard players set @s[scores={Time=1..},tag=8] Time 950
scoreboard players set @s[scores={Time=1..},tag=9] Time 950
effect give @s[tag=0] minecraft:resistance 9 1 true
effect give @s[tag=1] minecraft:resistance 9 1 true
effect give @s[tag=2] minecraft:resistance 9 1 true
effect give @s[tag=3] minecraft:resistance 9 1 true
effect give @s[tag=4] minecraft:resistance 9 1 true
effect give @s[tag=5] minecraft:resistance 9 1 true
effect give @s[tag=6] minecraft:resistance 9 1 true
effect give @s[tag=7] minecraft:resistance 9 1 true
effect give @s[tag=8] minecraft:resistance 9 1 true
effect give @s[tag=9] minecraft:resistance 9 1 true

# Prevent invalid Time values
scoreboard players set @s[scores={Time=..-1}] Time 0
execute unless entity @s[scores={Time=-100..}] run scoreboard players set @s Time 0

# Part breaks
execute if entity @s[scores={LegsArmor=0}] run function medabots_server:medaparts/break_part
execute if entity @s[scores={LeftArmArmor=0}] run function medabots_server:medaparts/break_part
execute if entity @s[scores={RightArmArmor=0}] run function medabots_server:medaparts/break_part
execute if entity @s[scores={HeadArmor=0}] run function medabots_server:medaparts/break_part

# Global timer for the medaforce
scoreboard players add @s MedaforceTimer 1
scoreboard players set @s[scores={MedaforceTimer=6..}] MedaforceTimer 0