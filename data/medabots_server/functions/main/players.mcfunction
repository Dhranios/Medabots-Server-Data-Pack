# Verify resource pack
execute if entity @s[scores={Offline=1..}] run function medabots_server:settings/resource_pack_verification/ask
execute unless entity @s[scores={Verified=0..}] run function medabots_server:settings/resource_pack_verification/ask
execute if entity @s[scores={Verified=1}] run function medabots_server:settings/resource_pack_verification/waiting
execute if entity @s[scores={Verified=2}] run function medabots_server:settings/resource_pack_verification/verified

# Tutorial
execute if entity @s[tag=try_tutorial_level] run function medabots_server:stage/try/tutorial

# Make players who did nothing for 1 minute invulnerable
function medabots_server:other/afk_system

# Run stage
execute if entity @s[scores={Gamemode=0,Stage=1..,LeaveStage=1..},tag=!stage_builder] run function medabots_server:stage/exit
execute if entity @s[scores={Stage=1..},tag=stage_builder] run function medabots_server:stage/run
execute if entity @s[scores={Stage=0..,LeaveStage=1..},tag=stage_builder] run function medabots_server:stage/exit/enforced
execute if entity @s[scores={Gamemode=0,Stage=0..,State=1..2},tag=main] run function medabots_server:stage/run
execute if entity @s[scores={Gamemode=0,Stage=1..,State=1..2},tag=!main] run function medabots_server:stage/non_main_run
execute if entity @s[scores={Gamemode=0,Stage=1..,LeaveStage=1..,State=3}] run function medabots_server:stage/exit/enforced
execute if entity @s[scores={Gamemode=0,Stage=1..,LeaveStage=1..,State=0}] run function medabots_server:stage/exit/enforced
execute if entity @s[scores={Gamemode=0,State=1..}] run function medabots_server:entities/medabot
execute unless entity @s[scores={Gamemode=0,State=1..}] if entity @s[tag=has_medabot_form] run function medabots_server:animations/medabot
execute if entity @s[scores={Gamemode=1}] run function medabots_server:stage/run_fly_course
scoreboard players reset @s[scores={LeaveStage=0..}] LeaveStage

# Stage builder
execute if entity @s[tag=stage_builder] run function medabots_server:stage/builder

# Make the random server messages appear
function medabots_server:other/random_message

# Play dialogs/cutscenes
execute unless entity @s[scores={Gamemode=0,State=1..2}] run function medabots_server:dialog/try

# Books
execute unless entity @s[scores={Gamemode=0}] run function #medabots_server:books

# Functions that run on every player on the server except mods
execute if entity @s[scores={Moderator=0}] run function medabots_server:main/non_mods

# No cheating!
function #medabots_server:anti_cheating

# Functions that run on every player that is not in combat
execute if entity @s[tag=!hostile] run function medabots_server:main/non_hostile_players

# Show the recommended settings if the player choses to
execute if entity @s[scores={SettingsCheck=1..2}] run function medabots_server:settings/check_recommended

# Show player settings if the player choses to
execute if entity @s[scores={SettingsCheck=3..}] run function medabots_server:settings/check

# Complete a task
execute if entity @s[scores={TaskCheck=2..}] run function medabots_server:settings/complete_task

# Don't move for power, no combat for power
function medabots_server:effects/recharge

# Loop music
function medabots_server:other/music

# Upgrade path, not used yet as the server is still in development
#execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{version:1}}}]}] run function medabots_server:update/upgrade_path/1
#execute if entity @s[scores={UpToDate=1}] run function medabots_server:update/message/1

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
scoreboard players operation @s OtherX = @s PosX
scoreboard players operation @s OtherY = @s PosY
scoreboard players operation @s OtherZ = @s PosZ
execute store result score @s PosX run data get entity @s Pos[0] 100
execute store result score @s PosY run data get entity @s Pos[1] 100
execute store result score @s PosZ run data get entity @s Pos[2] 100