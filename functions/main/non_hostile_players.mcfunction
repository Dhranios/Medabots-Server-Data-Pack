# Fast roads
execute if entity @s[tag=action_mode,scores={Battle=0}] run function medabots_server:settings/action_mode

# No drowning
execute anchored eyes if block ^ ^ ^ minecraft:water run effect give @s minecraft:water_breathing 1 0 true

# Talk to entities
tag @e[distance=..3,tag=!talk,team=Passive] add talk 
tag @e[distance=..3,tag=!talk,team=Rubberobo] add talk

# Tutorial
execute if entity @s[tag=try_tutorial_level] run function medabots_server:stage/try/tutorial

# Prevent self-destruct at stage enter
scoreboard players reset @s SelfDestruct

# Invalid medabot = no combat start
execute if entity @s[gamemode=!creative,gamemode=!spectator,scores={Battle=0,Time=0}] run function medabots_server:items/medapart_error
scoreboard players set @s[gamemode=!survival,gamemode=!adventure] PreviousError 0

# Remove stage builder
clear @s[scores={Battle=0}] minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}