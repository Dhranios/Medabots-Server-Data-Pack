# Save which tinpet is being edited
execute store result score @s EditingTinpet run data get entity @s SelectedItemSlot

tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:item.tinpet","color":"green"},{"translate":"medabots_server:message.tinpet.edit"}]}
tellraw @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:male_tinpet"}}}}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:item.tinpet","color":"green"},{"translate":"medabots_server:message.tinpet.edit.male"}]}
tellraw @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:female_tinpet"}}}}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:item.tinpet","color":"green"},{"translate":"medabots_server:message.tinpet.edit.female"}]}
tellraw @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:neutral_tinpet"}}}}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:item.tinpet","color":"green"},{"translate":"medabots_server:message.tinpet.edit.neutral"}]}
tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:item.tinpet","color":"green"},{"translate":"medabots_server:message.tinpet.edit.unequip","clickEvent":{"action":"run_command","value":"/trigger UnequipTinpet"}}]}
scoreboard players enable @s UnequipTinpet

# Medawatch music
scoreboard players operation @s OldMusicType = @s MusicType
scoreboard players set @s MusicType 31
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0