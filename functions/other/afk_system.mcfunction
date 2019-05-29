# Settings options show on un-AFKing
execute unless entity @s[scores={Trading=0,Jump=0,Run=0,Walk=0,Swimming=0,Flying=0,Boat=0,Minecart=0,Horse=0,Pig=0,Sneaking=0,WalkOnWater=0,WalkUnderWater=0,Fall=0,UsePart=0}] run tellraw @s[scores={AFKTime=1200..}] {"translate":"medabots_server:settings.click.2","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 2"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.click"}},"extra":[{"text":"\n"},{"translate":"medabots_server:settings.click.3","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 3"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.click"}}},{"text":"\n"},{"translate":"medabots_server:message.pending_tasks","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger TaskCheck set 1"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:message.pending_tasks.click"}}}]}
execute unless entity @s[scores={Trading=0,Jump=0,Run=0,Walk=0,Swimming=0,Flying=0,Boat=0,Minecart=0,Horse=0,Pig=0,Sneaking=0,WalkOnWater=0,WalkUnderWater=0,Fall=0,UsePart=0}] run tellraw @s[scores={AFKTime=1200..,Stage=1..}] {"translate":"medabots_server:message.stage.want_to_leave","color":"green","clickEvent":{"action":"run_command","value":"/trigger LeaveStage set 1"}}

# This is a bot
team join Bot @s[tag=Bot,team=AFK,scores={Walk=1..}]
team join Bot @s[tag=Bot,team=AFK,scores={Run=1..}]
team join Bot @s[tag=Bot,team=AFK,scores={Boat=1..}]
team join Bot @s[tag=Bot,team=AFK,scores={Minecart=1..}]
team join Bot @s[tag=Bot,team=AFK,scores={Pig=1..}]
team join Bot @s[tag=Bot,team=AFK,scores={Horse=1..}]
team join Bot @s[tag=Bot,team=AFK,scores={Flying=1..}]
team join Bot @s[tag=Bot,team=AFK,scores={Swimming=1..}]
team join Bot @s[tag=Bot,team=AFK,scores={WalkOnWater=1..}]
team join Bot @s[tag=Bot,team=AFK,scores={WalkUnderWater=1..}]
team join Bot @s[tag=Bot,team=AFK,scores={Sneaking=1..}]
team join Bot @s[tag=Bot,team=AFK,scores={Jump=1..}]
team join Bot @s[tag=Bot,team=AFK,scores={Fall=1..}]
team join Bot @s[tag=Bot,team=AFK,scores={Medaforce=1}]
team join Bot @s[tag=Bot,team=AFK,scores={Attack=1..}]
team join Bot @s[tag=Bot,team=AFK,scores={Drop=1..}]
team join Bot @s[tag=Bot,team=AFK,scores={Offline=1..}]
team join Bot @s[tag=Bot,team=AFK,scores={UsePart=1..}]
team join Bot @s[tag=Bot,team=AFK,scores={Trading=1..}]
team join Bot @s[tag=Bot,team=EnemyPlayer]
team join Bot @s[tag=Bot,team=]

# This player is knowledged
team join Advanced @s[team=AFK,scores={OnlineTime=5760..,Walk=1..}]
team join Advanced @s[team=AFK,scores={OnlineTime=5760..,Run=1..}]
team join Advanced @s[team=AFK,scores={OnlineTime=5760..,Boat=1..}]
team join Advanced @s[team=AFK,scores={OnlineTime=5760..,Minecart=1..}]
team join Advanced @s[team=AFK,scores={OnlineTime=5760..,Pig=1..}]
team join Advanced @s[team=AFK,scores={OnlineTime=5760..,Horse=1..}]
team join Advanced @s[team=AFK,scores={OnlineTime=5760..,Flying=1..}]
team join Advanced @s[team=AFK,scores={OnlineTime=5760..,Swimming=1..}]
team join Advanced @s[team=AFK,scores={OnlineTime=5760..,WalkOnWater=1..}]
team join Advanced @s[team=AFK,scores={OnlineTime=5760..,WalkUnderWater=1..}]
team join Advanced @s[team=AFK,scores={OnlineTime=5760..,Sneaking=1..}]
team join Advanced @s[team=AFK,scores={OnlineTime=5760..,Jump=1..}]
team join Advanced @s[team=AFK,scores={OnlineTime=5760..,Fall=1..}]
team join Advanced @s[team=AFK,scores={OnlineTime=5760..,Medaforce=1}]
team join Advanced @s[team=AFK,scores={OnlineTime=5760..,Attack=1..}]
team join Advanced @s[team=AFK,scores={OnlineTime=5760..,Drop=1..}]
team join Advanced @s[team=AFK,scores={OnlineTime=5760..,Offline=1..}]
team join Advanced @s[team=AFK,scores={OnlineTime=5760..,UsePart=1..}]
team join Advanced @s[team=AFK,scores={OnlineTime=5760..,Trading=1..}]
team join Advanced @s[team=EnemyPlayer,scores={OnlineTime=5760..,Battle=0}]
team join Advanced @s[team=,scores={OnlineTime=5760..}]

# This is a donator
team join Donor @s[team=AFK,scores={Donor=1,Walk=1..}]
team join Donor @s[team=AFK,scores={Donor=1,Run=1..}]
team join Donor @s[team=AFK,scores={Donor=1,Boat=1..}]
team join Donor @s[team=AFK,scores={Donor=1,Minecart=1..}]
team join Donor @s[team=AFK,scores={Donor=1,Pig=1..}]
team join Donor @s[team=AFK,scores={Donor=1,Horse=1..}]
team join Donor @s[team=AFK,scores={Donor=1,Flying=1..}]
team join Donor @s[team=AFK,scores={Donor=1,Swimming=1..}]
team join Donor @s[team=AFK,scores={Donor=1,WalkOnWater=1..}]
team join Donor @s[team=AFK,scores={Donor=1,WalkUnderWater=1..}]
team join Donor @s[team=AFK,scores={Donor=1,Sneaking=1..}]
team join Donor @s[team=AFK,scores={Donor=1,Jump=1..}]
team join Donor @s[team=AFK,scores={Donor=1,Fall=1..}]
team join Donor @s[team=AFK,scores={Donor=1,Medaforce=1}]
team join Donor @s[team=AFK,scores={Donor=1,Attack=1..}]
team join Donor @s[team=AFK,scores={Donor=1,Drop=1..}]
team join Donor @s[team=AFK,scores={Donor=1,Offline=1..}]
team join Donor @s[team=AFK,scores={Donor=1,UsePart=1..}]
team join Donor @s[team=AFK,scores={Donor=1,Trading=1..}]
team join Donor @s[team=EnemyPlayer,scores={Donor=1,Battle=0}]
team join Donor @s[team=Advanced,scores={Donor=1}]
team join Donor @s[team=,scores={Donor=1}]

# This person won on Mt. Battle
team join MtBattleMaster @s[team=AFK,scores={MtBattle=1,Walk=1..}]
team join MtBattleMaster @s[team=AFK,scores={MtBattle=1,Run=1..}]
team join MtBattleMaster @s[team=AFK,scores={MtBattle=1,Boat=1..}]
team join MtBattleMaster @s[team=AFK,scores={MtBattle=1,Minecart=1..}]
team join MtBattleMaster @s[team=AFK,scores={MtBattle=1,Pig=1..}]
team join MtBattleMaster @s[team=AFK,scores={MtBattle=1,Horse=1..}]
team join MtBattleMaster @s[team=AFK,scores={MtBattle=1,Flying=1..}]
team join MtBattleMaster @s[team=AFK,scores={MtBattle=1,Swimming=1..}]
team join MtBattleMaster @s[team=AFK,scores={MtBattle=1,WalkOnWater=1..}]
team join MtBattleMaster @s[team=AFK,scores={MtBattle=1,WalkUnderWater=1..}]
team join MtBattleMaster @s[team=AFK,scores={MtBattle=1,Sneaking=1..}]
team join MtBattleMaster @s[team=AFK,scores={MtBattle=1,Jump=1..}]
team join MtBattleMaster @s[team=AFK,scores={MtBattle=1,Fall=1..}]
team join MtBattleMaster @s[team=AFK,scores={MtBattle=1,Medaforce=1}]
team join MtBattleMaster @s[team=AFK,scores={MtBattle=1,Attack=1..}]
team join MtBattleMaster @s[team=AFK,scores={MtBattle=1,Drop=1..}]
team join MtBattleMaster @s[team=AFK,scores={MtBattle=1,Offline=1..}]
team join MtBattleMaster @s[team=AFK,scores={MtBattle=1,UsePart=1..}]
team join MtBattleMaster @s[team=AFK,scores={MtBattle=1,Trading=1..}]
team join MtBattleMaster @s[team=EnemyPlayer,scores={MtBattle=1,Battle=0}]
team join MtBattleMaster @s[team=Bot,scores={MtBattle=1}]
team join MtBattleMaster @s[team=Advanced,scores={MtBattle=1}]
team join MtBattleMaster @s[team=Donor,scores={MtBattle=1}]
team join MtBattleMaster @s[team=,scores={MtBattle=1}]

# This is a moderator
team join Moderator @s[team=AFK,scores={Moderator=1,Walk=1..}]
team join Moderator @s[team=AFK,scores={Moderator=1,Run=1..}]
team join Moderator @s[team=AFK,scores={Moderator=1,Fall=1..}]
team join Moderator @s[team=AFK,scores={Moderator=1,Jump=1..}]
team join Moderator @s[team=AFK,scores={Moderator=1,WalkOnWater=1..}]
team join Moderator @s[team=AFK,scores={Moderator=1,WalkUnderWater=1..}]
team join Moderator @s[team=AFK,scores={Moderator=1,Flying=1..}]
team join Moderator @s[team=AFK,scores={Moderator=1,Swimming=1..}]
team join Moderator @s[team=AFK,scores={Moderator=1,Sneaking=1..}]
team join Moderator @s[team=AFK,scores={Moderator=1,Minecart=1..}]
team join Moderator @s[team=AFK,scores={Moderator=1,Boat=1..}]
team join Moderator @s[team=AFK,scores={Moderator=1,Horse=1..}]
team join Moderator @s[team=AFK,scores={Moderator=1,Pig=1..}]
team join Moderator @s[team=AFK,scores={Moderator=1,Medaforce=1}]
team join Moderator @s[team=AFK,scores={Moderator=1,Attack=1..}]
team join Moderator @s[team=AFK,scores={Moderator=1,Drop=1..}]
team join Moderator @s[team=AFK,scores={Moderator=1,Offline=1..}]
team join Moderator @s[team=AFK,scores={Moderator=1,UsePart=1..}]
team join Moderator @s[team=AFK,scores={Moderator=1,Trading=1..}]
team join Moderator @s[team=EnemyPlayer,scores={Moderator=1,Battle=0}]
team join Moderator @s[team=Bot,scores={Moderator=1}]
team join Moderator @s[team=Advanced,scores={Moderator=1}]
team join Moderator @s[team=Donor,scores={Moderator=1}]
team join Moderator @s[team=MtBattleMaster,scores={Moderator=1}]
team join Moderator @s[team=,scores={Moderator=1}]

# None of the above
team leave @s[team=AFK,scores={Walk=1..}]
team leave @s[team=AFK,scores={Run=1..}]
team leave @s[team=AFK,scores={Jump=1..}]
team leave @s[team=AFK,scores={WalkOnWater=1..}]
team leave @s[team=AFK,scores={WalkUnderWater=1..}]
team leave @s[team=AFK,scores={Fall=1..}]
team leave @s[team=AFK,scores={Flying=1..}]
team leave @s[team=AFK,scores={Swimming=1..}]
team leave @s[team=AFK,scores={Sneaking=1..}]
team leave @s[team=AFK,scores={Horse=1..}]
team leave @s[team=AFK,scores={Minecart=1..}]
team leave @s[team=AFK,scores={Boat=1..}]
team leave @s[team=AFK,scores={Pig=1..}]
team leave @s[team=AFK,scores={Medaforce=1}]
team leave @s[team=AFK,scores={Attack=1..}]
team leave @s[team=AFK,scores={Drop=1..}]
team leave @s[team=AFK,scores={Offline=1..}]
team leave @s[team=AFK,scores={UsePart=1..}]
team leave @s[team=AFK,scores={Trading=1..}]
team leave @s[team=EnemyPlayer,scores={Battle=0}]

# Not AFK anymore
execute if entity @s[scores={AFKTime=1200..,Trading=1..}] run tellraw @a {"translate":"medabots_server:message.afk.no","with":[{"selector":"@s"}]}
scoreboard players set @s[scores={Trading=1..,AFKTime=1..}] AFKTime 0
execute if entity @s[scores={AFKTime=1200..,UsePart=1..}] run tellraw @a {"translate":"medabots_server:message.afk.no","with":[{"selector":"@s"}]}
scoreboard players set @s[scores={UsePart=1..,AFKTime=1..}] AFKTime 0
execute if entity @s[scores={AFKTime=1200..,Attack=1..}] run tellraw @a {"translate":"medabots_server:message.afk.no","with":[{"selector":"@s"}]}
scoreboard players set @s[scores={Attack=1..,AFKTime=1..}] AFKTime 0
execute if entity @s[scores={AFKTime=1200..,Drop=1..}] run tellraw @a {"translate":"medabots_server:message.afk.no","with":[{"selector":"@s"}]}
scoreboard players set @s[scores={Drop=1..,AFKTime=1..}] AFKTime 0
execute if entity @s[scores={AFKTime=1200..,Medaforce=1}] run tellraw @a {"translate":"medabots_server:message.afk.no","with":[{"selector":"@s"}]}
scoreboard players set @s[scores={Medaforce=1,AFKTime=1..}] AFKTime 0
execute if entity @s[scores={AFKTime=1200..,Jump=1..}] run tellraw @a {"translate":"medabots_server:message.afk.no","with":[{"selector":"@s"}]}
scoreboard players set @s[scores={Jump=1..,AFKTime=1..}] AFKTime 0
execute if entity @s[scores={AFKTime=1200..,Fall=1..}] run tellraw @a {"translate":"medabots_server:message.afk.no","with":[{"selector":"@s"}]}
scoreboard players set @s[scores={Fall=1..,AFKTime=1..}] AFKTime 0
execute if entity @s[scores={AFKTime=1200..,Run=1..}] run tellraw @a {"translate":"medabots_server:message.afk.no","with":[{"selector":"@s"}]}
scoreboard players set @s[scores={Run=1..,AFKTime=1..}] AFKTime 0
execute if entity @s[scores={AFKTime=1200..,Swimming=1..}] run tellraw @a {"translate":"medabots_server:message.afk.no","with":[{"selector":"@s"}]}
scoreboard players set @s[scores={Swimming=1..,AFKTime=1..}] AFKTime 0
execute if entity @s[scores={AFKTime=1200..,Flying=1..}] run tellraw @a {"translate":"medabots_server:message.afk.no","with":[{"selector":"@s"}]}
scoreboard players set @s[scores={Flying=1..,AFKTime=1..}] AFKTime 0
execute if entity @s[scores={AFKTime=1200..,Pig=1..}] run tellraw @a {"translate":"medabots_server:message.afk.no","with":[{"selector":"@s"}]}
scoreboard players set @s[scores={Pig=1..,AFKTime=1..}] AFKTime 0
execute if entity @s[scores={AFKTime=1200..,Horse=1..}] run tellraw @a {"translate":"medabots_server:message.afk.no","with":[{"selector":"@s"}]}
scoreboard players set @s[scores={Horse=1..,AFKTime=1..}] AFKTime 0
execute if entity @s[scores={AFKTime=1200..,Boat=1..}] run tellraw @a {"translate":"medabots_server:message.afk.no","with":[{"selector":"@s"}]}
scoreboard players set @s[scores={Boat=1..,AFKTime=1..}] AFKTime 0
execute if entity @s[scores={AFKTime=1200..,Minecart=1..}] run tellraw @a {"translate":"medabots_server:message.afk.no","with":[{"selector":"@s"}]}
scoreboard players set @s[scores={Minecart=1..,AFKTime=1..}] AFKTime 0
execute if entity @s[scores={AFKTime=1200..,WalkOnWater=1..}] run tellraw @a {"translate":"medabots_server:message.afk.no","with":[{"selector":"@s"}]}
scoreboard players set @s[scores={WalkOnWater=1..,AFKTime=1..}] AFKTime 0
execute if entity @s[scores={AFKTime=1200..,WalkUnderWater=1..}] run tellraw @a {"translate":"medabots_server:message.afk.no","with":[{"selector":"@s"}]}
scoreboard players set @s[scores={WalkUnderWater=1..,AFKTime=1..}] AFKTime 0
execute if entity @s[scores={AFKTime=1200..,Walk=1..}] run tellraw @a {"translate":"medabots_server:message.afk.no","with":[{"selector":"@s"}]}
scoreboard players set @s[scores={Walk=1..,AFKTime=1..}] AFKTime 0
execute if entity @s[scores={AFKTime=1200..,Sneaking=1..}] run tellraw @a {"translate":"medabots_server:message.afk.no","with":[{"selector":"@s"}]}
scoreboard players set @s[scores={Sneaking=1..,AFKTime=1..}] AFKTime 0

# Now AFK
execute if entity @s[scores={AFKTime=1200}] run tellraw @a {"translate":"medabots_server:message.afk.yes","with":[{"selector":"@s"}]}
execute if entity @s[scores={AFKTime=1200}] run playsound medabots_server:entity.metabee.forgetting_me voice @s ~ ~ ~ 2
tellraw @s[scores={AFKTime=1200}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:message.metabee.forgetting_me"}]}
team join AFK @s[scores={AFKTime=1200..},team=!AFK]

# Friendly reminder
execute if entity @s[scores={AFKTime=2400}] run playsound medabots_server:entity.metabee.hurry_up voice @s ~ ~ ~ 2
tellraw @s[scores={AFKTime=2400}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:message.metabee.hurry_up"}]}

# Make sounds
execute if entity @s[scores={Damage=1..}] run playsound medabots_server:entity.medabot.damage player @s ~ ~ ~ .5
execute if entity @s[scores={Run=0,Jump=1..,WalkUnderWater=0}] run playsound medabots_server:entity.medabot.move.jump player @s ~ ~ ~ .05
execute if entity @s[scores={Run=1..,Jump=1..,WalkUnderWater=0}] run playsound medabots_server:entity.medabot.move.leap player @s ~ ~ ~ .1
execute if entity @s[scores={Run=5..,Jump=0,Sound=0},tag=action_mode,tag=!hostile] if block ~ ~ ~ minecraft:stone_slab[type=bottom] run playsound medabots_server:entity.medabot.move.roll player @s ~ ~ ~ .2
execute if entity @s[scores={Walk=5..,Jump=0,Sound=0},tag=action_mode,tag=!hostile] if block ~ ~ ~ minecraft:stone_slab[type=bottom] run playsound medabots_server:entity.medabot.move.roll player @s ~ ~ ~ .2
execute if entity @s[scores={Swimming=5..,Sound=0}] run playsound medabots_server:entity.medabot.move.swim player @s ~ ~ ~ .1
execute if entity @s[scores={Walk=5..,Jump=0,Sound=0}] run playsound medabots_server:entity.medabot.move.walk player @s ~ ~ ~ .025
execute if entity @s[scores={Walk=5..,Jump=0,Sound=0}] run scoreboard players set @s Sound 8
execute if entity @s[scores={Flying=5..,Sound=0},gamemode=creative,team=Moderator,nbt={abilities:{flying:1b}}] run playsound medabots_server:entity.medabot.move.mod player @s ~ ~ ~ .1
execute if entity @s[scores={Flying=5..,Sound=0},gamemode=creative,team=Moderator,nbt={abilities:{flying:1b}}] run scoreboard players set @s Sound 20
execute if entity @s[scores={Fall=5..,Sound=0}] run playsound medabots_server:entity.medabot.move.fall player @s ~ ~ ~ .1
execute if entity @s[scores={Fall=5..,Sound=0}] run scoreboard players set @s Sound 10
execute if entity @s[scores={Run=5..,Jump=0,Sound=0}] run playsound medabots_server:entity.medabot.move.run player @s ~ ~ ~ .05
execute if entity @s[scores={Run=5..,Jump=0,Sound=0}] run scoreboard players set @s Sound 6
execute if entity @s[scores={WalkUnderWater=5..,Sound=0}] run playsound medabots_server:entity.medabot.move.under_water player @s ~ ~ ~ .1
execute if entity @s[scores={WalkUnderWater=5..,Sound=0}] run scoreboard players set @s Sound 17
execute if entity @s[scores={WalkOnWater=5..,Sound=0}] run playsound medabots_server:entity.medabot.move.on_water player @s ~ ~ ~ .1
execute if entity @s[scores={Swimming=5..,Sound=0}] run scoreboard players set @s Sound 2
execute if entity @s[scores={WalkOnWater=5..,Sound=0}] run scoreboard players set @s Sound 17

# Reset movement checks
tag @s[tag=jumping] remove jumping
tag @s[scores={Jump=1..}] add jumping
scoreboard players set @s[scores={Jump=1..}] Jump 0
tag @s[tag=walking] remove walking
tag @s[scores={Walk=1..}] add walking
scoreboard players set @s[scores={Walk=1..}] Walk 0
tag @s[tag=running] remove running
tag @s[scores={Run=1..}] add running
scoreboard players set @s[scores={Run=1..}] Run 0
scoreboard players set @s[scores={Swimming=1..}] Swimming 0
scoreboard players set @s[scores={Drop=1..}] Drop 0
scoreboard players set @s[scores={Boat=1..}] Boat 0
scoreboard players set @s[scores={Flying=1..}] Flying 0
scoreboard players set @s[scores={Minecart=1..}] Minecart 0
scoreboard players set @s[scores={Horse=1..}] Horse 0
scoreboard players set @s[scores={WalkOnWater=1..}] WalkOnWater 0
scoreboard players set @s[scores={WalkUnderWater=1..}] WalkUnderWater 0
scoreboard players set @s[scores={Pig=1..}] Pig 0
scoreboard players set @s[scores={Fall=1..}] Fall 0
tag @s[tag=sneak_pos] remove sneak_pos
tag @s[scores={Sneaking=1..}] add sneak_pos
scoreboard players set @s[scores={Sneaking=1..}] Sneaking 0
tag @s[tag=sneaking] remove sneaking
tag @s[scores={Sneak=1..}] add sneaking
scoreboard players set @s[scores={Sneak=1..}] Sneak 0
scoreboard players set @s[scores={Trading=1..},tag=!trading] Trading 2
scoreboard players set @s[scores={Trading=1..},tag=trading] Trading 0
execute unless entity @e[tag=shop,distance=..4,limit=1] if entity @s[tag=trading] run function medabots_server:shopping/gui/restore_inv
execute unless entity @e[tag=shop,distance=..4,limit=1] run tag @s[tag=trading] remove trading
tag @s[scores={Trading=1..}] add trading

# Count up
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s[scores={Trading=0,Jump=0,Run=0,Walk=0,Swimming=0,Flying=0,Boat=0,Minecart=0,Horse=0,Pig=0,Sneaking=0,WalkOnWater=0,WalkUnderWater=0,Fall=0,UsePart=0}] AFKTime 1