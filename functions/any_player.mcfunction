# Leave stage
scoreboard players set @s[scores={LeaveStage=1}] Battle 0
scoreboard players reset @s[scores={LeaveStage=1}] LeaveStage

# Run stage
execute unless entity @s[scores={FlyCourse=0..}] if entity @s[scores={Stage=1..,Battle=0},tag=!murder_mystery] run function medabots_server:stage/left_server
execute unless entity @s[scores={FlyCourse=0..}] if entity @s[scores={Stage=1..,Battle=1..},tag=!enemy_medabot,tag=!murder_mystery] run function medabots_server:stage/run
execute if entity @s[tag=!enemy_medabot,scores={Stage=1..,FlyCourse=0..}] run function medabots_server:stage/run_fly_course

# Make the random server messages appear
function medabots_server:other/random_message

# Play dialogs/cutscenes
function medabots_server:dialog

# No cheating!
function medabots_server:anti_cheating/items
function medabots_server:anti_cheating/scores
function medabots_server:anti_cheating/anti_fly_hack

# Functions that run on every player on the server except mods
execute if entity @s[scores={Moderator=0}] run function medabots_server:any_non_mod

# Players are medabots
function medabots_server:any_medabot

# Make players in combat do something
execute if entity @s[tag=hostile] run function medabots_server:any_hostile_player

# Functions that run on every player that is not in combat
execute if entity @s[tag=!hostile] run function medabots_server:any_non_hostile_player

# Show the recommended settings if the player choses to
execute if entity @s[scores={SettingsCheck=1..2}] run function medabots_server:other/recommended_settings_check

# Show player settings if the player choses to
execute if entity @s[scores={SettingsCheck=3..}] run function medabots_server:other/settings_check

# Complete a task
execute if entity @s[scores={TaskCheck=2..}] run function medabots_server:other/complete_task

# Death
execute if entity @s[scores={Death=1}] run function medabots_server:other/death
tag @s[scores={Death=0},tag=retry] remove retry

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

# Verify resource pack
execute if entity @s[scores={Offline=1..}] run function medabots_server:other/verify_resource_pack
execute unless entity @s[scores={Verified=0..}] run function medabots_server:other/resource_pack_verification
execute if entity @s[scores={Verified=1}] run function medabots_server:other/awaiting_resource_pack_verification
execute if entity @s[scores={Verified=2}] run function medabots_server:other/resource_pack_verified

# Upgrade path, not used yet as the server is still in development
#execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{version:1}}}]}] run function medabots_server:other/upgrade_path/1
#execute if entity @s[scores={UpToDate=1}] run function medabots_server:other/update_message/1

# Fly course running
execute if entity @s[scores={FlyCourse=0..}] run function medabots_server:stage/fly_course

# Buy items from shops
execute if entity @s[scores={Shopping=1..}] run function medabots_server:shopping/buy_item

# Enable chosing options
scoreboard players enable @s TaskCheck
scoreboard players enable @s SettingsCheck
scoreboard players enable @s Verified
scoreboard players enable @s Shopping
scoreboard players enable @s LeaveStage

# Reset the attack, damage and use part checks
scoreboard players set @s[scores={Damage=1..}] Damage 0
scoreboard players set @s[scores={UsePart=1..}] UsePart 0
scoreboard players set @s[scores={Attack=1..}] Attack 0
scoreboard players set @s[scores={Shopping=1..}] Shopping 0

# Store old position
execute store result score @s PosX run data get entity @s Pos[0] 100
execute store result score @s PosY run data get entity @s Pos[1] 100
execute store result score @s PosZ run data get entity @s Pos[2] 100