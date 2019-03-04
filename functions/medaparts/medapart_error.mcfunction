# Refresh error
scoreboard players set @s[scores={Battle=0}] Error 0

# Set lack of tinpet
execute unless entity @s[nbt={Inventory:[{Slot:16b,tag:{medabots_server:{part:"tinpet"}}}]}] run scoreboard players set @s[scores={Error=0,Battle=0}] Error 1

# Set lack of medal
execute unless entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{part:"medal"}}}]}] run scoreboard players set @s[scores={Error=0,Battle=0}] Error 2

# Set lack of a medapart
execute unless entity @s[nbt={Inventory:[{Slot:3b,tag:{medabots_server:{part:"head"}}}]}] run scoreboard players set @s[scores={Error=0,Battle=0}] Error 3
execute unless entity @s[nbt={Inventory:[{Slot:2b,tag:{medabots_server:{part:"right_arm"}}}]}] run scoreboard players set @s[scores={Error=0,Battle=0}] Error 4
execute unless entity @s[nbt={Inventory:[{Slot:1b,tag:{medabots_server:{part:"left_arm"}}}]}] run scoreboard players set @s[scores={Error=0,Battle=0}] Error 5
execute unless entity @s[nbt={Inventory:[{Slot:0b,tag:{medabots_server:{part:"legs"}}}]}] run scoreboard players set @s[scores={Error=0,Battle=0}] Error 6

# Set wrong tinpet-part gender combination
scoreboard players set @s[scores={Error=0,Battle=0},nbt={Inventory:[{Slot:0b,tag:{medabots_server:{gender:0b,part:"legs"}}},{Slot:16b,tag:{medabots_server:{id:"medabots_server:female_tinpet"}}}]}] Error 7
scoreboard players set @s[scores={Error=0,Battle=0},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{gender:0b,part:"left_arm"}}},{Slot:16b,tag:{medabots_server:{id:"medabots_server:female_tinpet"}}}]}] Error 7
scoreboard players set @s[scores={Error=0,Battle=0},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{gender:0b,part:"right_arm"}}},{Slot:16b,tag:{medabots_server:{id:"medabots_server:female_tinpet"}}}]}] Error 7
scoreboard players set @s[scores={Error=0,Battle=0},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{gender:0b,part:"head"}}},{Slot:16b,tag:{medabots_server:{id:"medabots_server:female_tinpet"}}}]}] Error 7
scoreboard players set @s[scores={Error=0,Battle=0},nbt={Inventory:[{Slot:0b,tag:{medabots_server:{gender:1b,part:"legs"}}},{Slot:16b,tag:{medabots_server:{id:"medabots_server:male_tinpet"}}}]}] Error 7
scoreboard players set @s[scores={Error=0,Battle=0},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{gender:1b,part:"left_arm"}}},{Slot:16b,tag:{medabots_server:{id:"medabots_server:male_tinpet"}}}]}] Error 7
scoreboard players set @s[scores={Error=0,Battle=0},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{gender:1b,part:"right_arm"}}},{Slot:16b,tag:{medabots_server:{id:"medabots_server:male_tinpet"}}}]}] Error 7
scoreboard players set @s[scores={Error=0,Battle=0},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{gender:1b,part:"head"}}},{Slot:16b,tag:{medabots_server:{id:"medabots_server:male_tinpet"}}}]}] Error 7

# Show this specific error only once
tag @s add message_seen
execute unless score @s PreviousError = @s Error run tag @s remove message_seen

# Show the error message
tellraw @s[scores={Error=0},tag=!message_seen] {"translate":"medabots_server:message.error.none","color":"green"}
tellraw @s[scores={Error=1},tag=!message_seen] {"translate":"medabots_server:message.error.tinpet","color":"red"}
tellraw @s[scores={Error=2},tag=!message_seen] {"translate":"medabots_server:message.error.medal","color":"red"}
tellraw @s[scores={Error=3},tag=!message_seen] {"translate":"medabots_server:message.error.head","color":"red"}
tellraw @s[scores={Error=4},tag=!message_seen] {"translate":"medabots_server:message.error.right_arm","color":"red"}
tellraw @s[scores={Error=5},tag=!message_seen] {"translate":"medabots_server:message.error.left_arm","color":"red"}
tellraw @s[scores={Error=6},tag=!message_seen] {"translate":"medabots_server:message.error.legs","color":"red"}
tellraw @s[scores={Error=7},tag=!message_seen] {"translate":"medabots_server:message.error.combination","color":"red"}

# Metabee
tellraw @s[scores={PreviousError=0,Error=1..6,Offline=0},tag=!message_seen] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:message.metabee.not_done_assambling"}]}
playsound medabots_server:entity.metabee.not_done_assambling voice @s[scores={PreviousError=0,Error=1..6,Offline=0},tag=!message_seen] ~ ~ ~ 1
tellraw @s[scores={PreviousError=..6,Error=7,Offline=0},tag=!message_seen] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:message.metabee.wait_a_minute"}]}
playsound medabots_server:entity.metabee.wait_a_minute voice @s[scores={PreviousError=..6,Error=7,Offline=0},tag=!message_seen] ~ ~ ~ 1

# Set previous error value
scoreboard players operation @s PreviousError = @s Error