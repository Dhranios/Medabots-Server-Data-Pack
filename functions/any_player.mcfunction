# Run stage
execute if entity @s[tag=!enemy_medabot,scores={Stage=1..}] run function medabots_server:stage/run

# No cheating!
function medabots_server:anti_cheating/items
function medabots_server:anti_cheating/scores
function medabots_server:anti_cheating/anti_fly_hack

# Talk to entities
tag @e[distance=..3,tag=!talk,team=Passive] add talk 
tag @e[distance=..3,tag=!talk,team=Rubberobo] add talk 

# Functions that run on every player on the server except mods
execute if entity @s[scores={Moderator=0}] run function medabots_server:any_non_mod

# Remove the bobber, that is a side effect for activation
execute if entity @s[scores={UsePart=1..},gamemode=!creative] run kill @e[type=minecraft:fishing_bobber,distance=..8]

# Combat (it's not in any_hostile_player so that the weapons don't get stuck when the combat is ended)
function medabots_server:any_medabot

# Make players in combat do something
execute if entity @s[tag=hostile] run function medabots_server:any_hostile_player

# Functions that run on every player that is not in combat
execute if entity @s[tag=!hostile] run function medabots_server:any_non_hostile_player

# Show the recommended settings if the player choses to
execute if entity @s[scores={SettingsCheck=1..}] run function medabots_server:other/settings_check

# Complete a task
execute if entity @s[scores={TaskCheck=2..}] run function medabots_server:other/complete_task

# Make players make a death sound
execute if entity @s[scores={Death=1}] run playsound medabots_server:entity.medabot.death player @a ~ ~ ~ 0.7
scoreboard players set @s[scores={Death=1..}] Damage 0

# Send the death message
execute if entity @s[scores={Death=1}] run function medabots_server:medaparts/death_message
tag @s[scores={Death=0}] remove retry

# Remove player from the world
teleport @s[scores={Death=20}] ~ -4096 ~

# Death timer
scoreboard players add @s[scores={Death=1..}] Death 1
scoreboard players add @s[scores={Death=..-1}] Death 1

# For when you respawn
execute if entity @s[x=-285,y=55,z=-52,distance=..3,scores={Death=1..}] run function medabots_server:other/respawn

# Make players who did nothing for 1 minute invulnerable
function medabots_server:other/afk_system

# Books
function medabots_server:other/how_to
function medabots_server:other/important
function medabots_server:other/medaparts
function medabots_server:other/rules

# Don't move for power, no combat for power
function medabots_server:medaparts/recharge

# Loop music
function medabots_server:other/music

# Hush, no need to see what's going on here #FuturePlans
execute if entity @s[tag=street_pass] run function medabots_server:other/streetpass

# Welcome message
execute if entity @s[scores={Offline=1..}] run function medabots_server:other/log_on

# Upgrade path, not used yet as the server is still in development
#execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{version:1}}}]}] run function medabots_server:other/upgrade_path/1
#execute if entity @s[scores={UpToDate=1}] run function medabots_server:other/update_message/1

# Fly course running
execute if entity @s[scores={FlyCourse=1..}] run function medabots_server:stage/fly_course

# Enable chosing options
scoreboard players enable @s Action
scoreboard players enable @s TaskCheck
scoreboard players enable @s SettingsCheck

# Reset the attack, damage and use part checks
scoreboard players set @s[scores={Damage=1..}] Damage 0
scoreboard players set @s[scores={UsePart=1..}] UsePart 0
scoreboard players set @s[scores={Attack=1..}] Attack 0

# Store old position
execute store result score @s PosX run data get entity @s Pos[0] 100
execute store result score @s PosY run data get entity @s Pos[1] 100
execute store result score @s PosZ run data get entity @s Pos[2] 100