# Waiting for start of robattle
execute if entity @s[scores={Battle=2}] run function medabots_server:gamemodes/default/robattle_wait

# Make Leg parts do something
function #medabots_server:leg_medaparts

# Medaforce getting blocked
execute if entity @s[tag=medaforce_block] run function medabots_server:effects/blocked_medaforce_toggle

# Get Armor %
scoreboard players operation @s LegsPer = @s LegsArmor
scoreboard players operation @s LeftArmPer = @s LeftArmArmor
scoreboard players operation @s RightArmPer = @s RightArmArmor
scoreboard players operation @s HeadPer = @s HeadArmor
scoreboard players operation @s HeadUsesPer = @s HeadUses
scoreboard players operation @s LegsPer *= #100 Constants
scoreboard players operation @s LeftArmPer *= #100 Constants
scoreboard players operation @s RightArmPer *= #100 Constants
scoreboard players operation @s HeadPer *= #100 Constants
scoreboard players operation @s HeadUsesPer *= #100 Constants
scoreboard players operation @s LegsPer /= @s MaxLegsArmor
scoreboard players operation @s LeftArmPer /= @s MaxLeftArmArmor
scoreboard players operation @s RightArmPer /= @s MaxRightArmArmor
scoreboard players operation @s HeadPer /= @s MaxHeadArmor
scoreboard players operation @s HeadUsesPer /= @s MaxHeadUses

# Get a boost by jumping on another player
execute if entity @s[tag=!dying] run function medabots_server:items/medapart/footstool

# Grab ledges and pull yourself up
execute if entity @s[tag=!dying] run function medabots_server:items/medapart/edge_grab

# Charge up the medaforce
execute if entity @s[scores={MedaforceTimer=3,Battle=1}] run function medabots_server:items/medapart/charge_medaforce

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
execute if entity @s[scores={LegsArmor=0}] run function medabots_server:items/break_medapart
execute if entity @s[scores={LeftArmArmor=0}] run function medabots_server:items/break_medapart
execute if entity @s[scores={RightArmArmor=0}] run function medabots_server:items/break_medapart
execute if entity @s[scores={HeadArmor=0}] run function medabots_server:items/break_medapart

# Global timer for the medaforce
scoreboard players add @s MedaforceTimer 1
scoreboard players set @s[scores={MedaforceTimer=6..}] MedaforceTimer 0

execute if entity @s[scores={Battle=1}] run tag @e[tag=cannon,tag=!action_floor,tag=!enabled,distance=..16] add enabled
execute if entity @s[scores={Battle=1}] run tag @e[tag=guard,tag=!action_floor,tag=!enabled,distance=..16] add enabled