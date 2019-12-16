# Settings options show on un-AFKing
execute unless entity @s[scores={Trading=0,Jump=0,Run=0,Walk=0,Swimming=0,Flying=0,Boat=0,Minecart=0,Horse=0,Pig=0,Sneaking=0,WalkOnWater=0,WalkUnderWater=0,Fall=0,UsePart=0}] run tellraw @s[scores={AFKTime=1200..}] {"translate":"medabots_server:settings.click.2","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 2"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.click"}},"extra":[{"text":"\n"},{"translate":"medabots_server:settings.click.3","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 3"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.click"}}},{"text":"\n"},{"translate":"medabots_server:message.pending_tasks","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger TaskCheck set 1"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:message.pending_tasks.click"}}}]}
execute unless entity @s[scores={Trading=0,Jump=0,Run=0,Walk=0,Swimming=0,Flying=0,Boat=0,Minecart=0,Horse=0,Pig=0,Sneaking=0,WalkOnWater=0,WalkUnderWater=0,Fall=0,UsePart=0}] unless entity @s[scores={Gamemode=0,State=3}] run tellraw @s[scores={AFKTime=1200..,Stage=1..,Gamemode=0}] {"translate":"medabots_server:message.stage.want_to_leave","color":"green","clickEvent":{"action":"run_command","value":"/trigger LeaveStage set 1"}}

# Leave AFK team
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
execute unless entity @s[scores={State=0..}] run team leave @s[team=AllyMedabot]
execute unless entity @s[scores={State=0..}] run team leave @s[team=EnemyMedabot]
execute unless entity @s[scores={State=0..}] run team leave @s[team=NeutralMedabot]

# Join correct team
team join AllyMedabot @s[team=!AFK,tag=ally_medabot,scores={State=1..}]
team join EnemyMedabot @s[team=!AFK,tag=enemy_medabot,scores={State=1..}]
team join NeutralMedabot @s[team=!AFK,tag=!ally_medabot,tag=!enemy_medabot,tag=medabot,scores={State=1..}]
team join Moderator @s[team=!AFK,team=!AllyMedabot,team=!EnemyMedabot,team=!NeutralMedabot,scores={Moderator=1}]
team join MtBattleMaster @s[team=!AFK,team=!AllyMedabot,team=!EnemyMedabot,team=!NeutralMedabot,team=!Moderator,scores={MtBattle=1}]
team join Donor @s[team=!AFK,team=!AllyMedabot,team=!EnemyMedabot,team=!NeutralMedabot,team=!Moderator,team=!MtBattleMaster,scores={Donor=1}]
team join Advanced @s[team=!AFK,team=!AllyMedabot,team=!EnemyMedabot,team=!NeutralMedabot,team=!Moderator,team=!MtBattleMaster,team=!Donor,tag=advanced]
team join Bot @s[team=!AFK,team=!AllyMedabot,team=!EnemyMedabot,team=!NeutralMedabot,team=!Moderator,team=!MtBattleMaster,team=!Donor,team=!Advanced,tag=bot]

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
execute if entity @s[scores={AFKTime=1200}] run playsound medabots_server:entity.metabee.forgetting_me voice @s ~ ~ ~ 1
tellraw @s[scores={AFKTime=1200}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:message.metabee.forgetting_me"}]}
team join AFK @s[scores={AFKTime=1200..},team=!AFK]

# Friendly reminder
execute if entity @s[scores={AFKTime=2400}] run playsound medabots_server:entity.metabee.hurry_up voice @s ~ ~ ~ 1
tellraw @s[scores={AFKTime=2400}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:message.metabee.hurry_up"}]}

# Make sounds
execute if entity @s[scores={Damage=1..}] run playsound medabots_server:entity.medabot.damage player @s ~ ~ ~ 1
execute if entity @s[scores={Run=0,Jump=1..,WalkUnderWater=0}] run playsound medabots_server:entity.medabot.move.jump player @s ~ ~ ~ 1
execute if entity @s[scores={Run=1..,Jump=1..,WalkUnderWater=0}] run playsound medabots_server:entity.medabot.move.leap player @s ~ ~ ~ 1
execute if entity @s[scores={Run=5..,Jump=0,Sound=0},tag=action_mode,tag=!hostile] if block ~ ~ ~ minecraft:stone_slab[type=bottom] run playsound medabots_server:entity.medabot.move.roll player @s ~ ~ ~ .2
execute if entity @s[scores={Run=5..,Jump=0,Sound=0},tag=action_mode,tag=!hostile] if block ~ ~ ~ minecraft:stone_slab[type=bottom] run scoreboard players set @s Sound 8
execute if entity @s[scores={Walk=5..,Jump=0,Sound=0},tag=action_mode,tag=!hostile] if block ~ ~ ~ minecraft:stone_slab[type=bottom] run playsound medabots_server:entity.medabot.move.roll player @s ~ ~ ~ .2
execute if entity @s[scores={Walk=5..,Jump=0,Sound=0},tag=action_mode,tag=!hostile] if block ~ ~ ~ minecraft:stone_slab[type=bottom] run scoreboard players set @s Sound 8
execute if entity @s[scores={Swimming=5..,Sound=0}] run playsound medabots_server:entity.medabot.move.swim player @s ~ ~ ~ 1
execute if entity @s[scores={Swimming=5..,Sound=0}] run scoreboard players set @s Sound 2
execute if entity @s[scores={Walk=5..,Jump=0,Sound=0}] unless entity @s[tag=action_mode,tag=!hostile] run playsound medabots_server:entity.medabot.move.walk player @s ~ ~ ~ 1
execute if entity @s[scores={Walk=5..,Jump=0,Sound=0}] unless entity @s[tag=action_mode,tag=!hostile] run scoreboard players set @s Sound 8
execute if entity @s[scores={Walk=5..,Jump=0,Sound=0},tag=action_mode,tag=!hostile] unless block ~ ~ ~ minecraft:stone_slab[type=bottom] run playsound medabots_server:entity.medabot.move.walk player @s ~ ~ ~ 1
execute if entity @s[scores={Walk=5..,Jump=0,Sound=0},tag=action_mode,tag=!hostile] unless block ~ ~ ~ minecraft:stone_slab[type=bottom] run scoreboard players set @s Sound 8
execute if entity @s[scores={Flying=5..,Sound=0},gamemode=creative,team=Moderator,nbt={abilities:{flying:1b}}] run playsound medabots_server:entity.medabot.move.mod player @s ~ ~ ~ .1
execute if entity @s[scores={Flying=5..,Sound=0},gamemode=creative,team=Moderator,nbt={abilities:{flying:1b}}] run scoreboard players set @s Sound 20
execute if entity @s[scores={Fall=5..,Sound=0}] run playsound medabots_server:entity.medabot.move.fall player @s ~ ~ ~ 1
execute if entity @s[scores={Fall=5..,Sound=0}] run scoreboard players set @s Sound 10
execute if entity @s[scores={Run=5..,Jump=0,Sound=0}] unless entity @s[tag=action_mode,tag=!hostile] run playsound medabots_server:entity.medabot.move.run player @s ~ ~ ~ 1
execute if entity @s[scores={Run=5..,Jump=0,Sound=0}] unless entity @s[tag=action_mode,tag=!hostile] run scoreboard players set @s Sound 6
execute if entity @s[scores={Run=5..,Jump=0,Sound=0},tag=action_mode,tag=!hostile] unless block ~ ~ ~ minecraft:stone_slab[type=bottom] run playsound medabots_server:entity.medabot.move.run player @s ~ ~ ~ 1
execute if entity @s[scores={Run=5..,Jump=0,Sound=0},tag=action_mode,tag=!hostile] unless block ~ ~ ~ minecraft:stone_slab[type=bottom] run scoreboard players set @s Sound 6
execute if entity @s[scores={WalkUnderWater=5..,Sound=0},gamemode=!spectator] run playsound medabots_server:entity.medabot.move.under_water player @s ~ ~ ~ 1
execute if entity @s[scores={WalkUnderWater=5..,Sound=0},gamemode=!spectator] run scoreboard players set @s Sound 17
execute if entity @s[scores={WalkOnWater=5..,Sound=0},gamemode=!spectator] run playsound medabots_server:entity.medabot.move.on_water player @s ~ ~ ~ 1
execute if entity @s[scores={WalkOnWater=5..,Sound=0},gamemode=!spectator] run scoreboard players set @s Sound 17

# Reset movement checks
tag @s[tag=jumping] remove jumping
tag @s[scores={Jump=1..}] add jumping
scoreboard players set @s[scores={Jump=1..}] Jump 0
tag @s[tag=walking] remove walking
tag @s[scores={Walk=1..}] add walking
tag @s[scores={WalkOnWater=1..}] add walking
tag @s[scores={WalkUnderWater=1..}] add walking
tag @s[scores={Swimming=1..}] add walking
scoreboard players set @s[scores={Walk=1..}] Walk 0
scoreboard players set @s[scores={WalkOnWater=1..}] WalkOnWater 0
scoreboard players set @s[scores={WalkUnderWater=1..}] WalkUnderWater 0
scoreboard players set @s[scores={Swimming=1..}] Swimming 0
tag @s[tag=running] remove running
tag @s[scores={Run=1..}] add running
scoreboard players set @s[scores={Run=1..}] Run 0
scoreboard players set @s[scores={Drop=1..}] Drop 0
scoreboard players set @s[scores={Boat=1..}] Boat 0
scoreboard players set @s[scores={Flying=1..}] Flying 0
scoreboard players set @s[scores={Minecart=1..}] Minecart 0
scoreboard players set @s[scores={Horse=1..}] Horse 0
scoreboard players set @s[scores={Pig=1..}] Pig 0
tag @s[tag=fell] remove fell
tag @s[scores={Fall=1..}] add fell
scoreboard players set @s[scores={Fall=1..}] Fall 0
tag @s[tag=sneak_pos] remove sneak_pos
tag @s[scores={Sneaking=1..}] add sneak_pos
scoreboard players set @s[scores={Sneaking=1..}] Sneaking 0
tag @s[tag=sneaking] remove sneaking
tag @s[scores={Sneak=1..}] add sneaking
scoreboard players set @s[scores={Sneak=1..}] Sneak 0
execute if entity @s[scores={Trading=1},tag=trading] run function medabots_server:shopping/reset
scoreboard players set @s[scores={Trading=1..}] Trading 2
execute if entity @s[scores={Trading=1..},tag=!trading] run function medabots_server:shopping/target_villager
scoreboard players set @s[scores={Trading=1..},tag=trading] Trading 0
execute unless entity @e[tag=shop,distance=..4,limit=1] run tag @s[tag=trading] remove trading
tag @s[scores={Trading=1..}] add trading

# Count up
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s[scores={Trading=0,Jump=0,Run=0,Walk=0,Swimming=0,Flying=0,Boat=0,Minecart=0,Horse=0,Pig=0,Sneaking=0,WalkOnWater=0,WalkUnderWater=0,Fall=0,UsePart=0}] AFKTime 1