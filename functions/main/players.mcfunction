# Re-give items seen by advancements
execute at @s[nbt={Inventory:[{tag:{medabots_server:{stage_item:0b}}}]}] run function medabots_server:items/give_obtained_item

# Run stage
execute unless entity @s[scores={FlyCourse=0..}] if entity @s[scores={Stage=1..,LeaveStage=1..},tag=!murder_mystery] run function medabots_server:stage/left_server
execute unless entity @s[scores={FlyCourse=0..}] if entity @s[scores={Stage=1..,LeaveStage=1..,Battle=3},tag=!murder_mystery] run function medabots_server:stage/left_server_enforced
execute unless entity @s[scores={FlyCourse=0..}] if entity @s[scores={Stage=0..,Battle=1..},tag=!enemy_medabot,tag=!murder_mystery] run function medabots_server:stage/run
execute unless entity @s[scores={FlyCourse=0..}] if entity @s[scores={Stage=1..,Battle=1..},tag=enemy_medabot,tag=!murder_mystery] run function medabots_server:stage/enemy_run
execute if entity @s[tag=!enemy_medabot,scores={Stage=1..,FlyCourse=0..}] run function medabots_server:stage/run_fly_course
scoreboard players reset @s[scores={LeaveStage=1}] LeaveStage

# Make the random server messages appear
function medabots_server:other/random_message

# Play dialogs/cutscenes
function medabots_server:dialog/try

# Make players who did nothing for 1 minute invulnerable
function medabots_server:other/afk_system

# Functions that run on every player on the server except mods
execute if entity @s[scores={Moderator=0}] run function medabots_server:main/non_mods

# No cheating!
function #medabots_server:anti_cheating

# Send a killer message depending on parts
execute if entity @s[scores={Killer=1..}] run function medabots_server:other/killer

# Players are medabots
function medabots_server:main/medabots

# Make players in combat do something
execute if entity @s[tag=hostile] run function medabots_server:main/hostile_players

# Functions that run on every player that is not in combat
execute if entity @s[tag=!hostile] run function medabots_server:main/non_hostile_players

# Show the recommended settings if the player choses to
execute if entity @s[scores={SettingsCheck=1..2}] run function medabots_server:settings/check_recommended

# Show player settings if the player choses to
execute if entity @s[scores={SettingsCheck=3..}] run function medabots_server:settings/check

# Complete a task
execute if entity @s[scores={TaskCheck=2..}] run function medabots_server:settings/complete_task

# Death
execute if entity @s[scores={Death=1}] run function medabots_server:other/death

# Remove player from the world
teleport @s[scores={Death=20}] ~ -4096 ~

# Death timer
scoreboard players add @s[scores={Death=1..}] Death 1
scoreboard players add @s[scores={Death=..-1}] Death 1

# Books
function #medabots_server:books

# Don't move for power, no combat for power
function medabots_server:effects/recharge

# Loop music
function medabots_server:other/music

# Hush, no need to see what's going on here #FuturePlans
execute if entity @s[tag=street_pass] run function medabots_server:items/streetpass

# Verify resource pack
execute if entity @s[scores={Offline=1..}] run function medabots_server:settings/resource_pack_verification/ask
execute unless entity @s[scores={Verified=0..}] run function medabots_server:settings/resource_pack_verification/ask
execute if entity @s[scores={Verified=1}] run function medabots_server:settings/resource_pack_verification/waiting
execute if entity @s[scores={Verified=2}] run function medabots_server:settings/resource_pack_verification/verified

# Upgrade path, not used yet as the server is still in development
#execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{version:1}}}]}] run function medabots_server:update/upgrade_path/1
#execute if entity @s[scores={UpToDate=1}] run function medabots_server:update/message/1

# Fly course running
execute if entity @s[scores={FlyCourse=0..}] run function medabots_server:stage/fly_course

# Buy items from shops
execute if entity @s[scores={Shopping=1..}] run function medabots_server:shopping/buy_item
execute if entity @s[scores={BuyMedapart=1..}] run function medabots_server:shopping/buy_medapart

# Enable chosing options
scoreboard players enable @s TaskCheck
scoreboard players enable @s SettingsCheck
scoreboard players enable @s Verified
scoreboard players enable @s Shopping
scoreboard players enable @s BuyMedapart
scoreboard players enable @s LeaveStage

# Reset the attack, damage and use part checks
scoreboard players set @s[scores={Damage=1..}] Damage 0
scoreboard players set @s[scores={UsePart=1..}] UsePart 0
scoreboard players set @s[scores={Attack=1..}] Attack 0
scoreboard players set @s[scores={Shopping=1..}] Shopping 0
scoreboard players set @s[scores={BuyMedapart=1..}] BuyMedapart 0
execute if entity @s[tag=!trading] run function medabots_server:shopping/reset

# Store old position
execute store result score @s PosX run data get entity @s Pos[0] 100
execute store result score @s PosY run data get entity @s Pos[1] 100
execute store result score @s PosZ run data get entity @s Pos[2] 100