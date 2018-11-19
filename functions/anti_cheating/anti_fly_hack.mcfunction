# Check if the player is in the air
execute if blocks -167 121 -34 -165 124 -32 ~-1 ~-1 ~-1 all run scoreboard players add @s[gamemode=survival] FlyHackTime 1
execute if blocks -167 121 -34 -165 124 -32 ~-1 ~-1 ~-1 all run scoreboard players add @s[gamemode=adventure] FlyHackTime 1

# Ignore players who use fly parts
scoreboard players set @s[scores={Fly=1..}] FlyHackTime 0
scoreboard players set @s[nbt={Inventory:[{Slot:102b,tag:{medabots_server:{id:"medabots_server:fly_course_wings"}}}]}] FlyHackTime 0

# Reset timer if player lands
scoreboard players set @s[scores={FlyHackTime=1..},nbt={OnGround:1b}] FlyHackTime 0

# Busted for using fly hacks, take your punishment and leave!
tellraw @s[scores={FlyHackTime=140}] {"translate":"medabots_server:message.anti_cheating.fly","color":"red"}

# Don't remove the level because of death
experience add @s[scores={FlyHackTime=140}] 1 levels
kill @s[scores={FlyHackTime=140}]

# Notify the moderators
execute if entity @s[scores={FlyHackTime=140}] run tellraw @s[team=Moderator] {"translate":"medabots_server:message.anti_cheating.fly.mod","color":"red","with":[{"selector":"@s"}]}
scoreboard players set @s[scores={FlyHackTime=140}] FlyHackTime 0