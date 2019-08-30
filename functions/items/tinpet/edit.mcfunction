# Save which tinpet is being edited
execute store result score @s EditingTinpet run data get entity @s SelectedItemSlot

tellraw @s {"translate":"medabots_server:message.tinpet.edit","color":"green"}
tellraw @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:male_tinpet"}}}}] {"translate":"medabots_server:message.tinpet.edit.male","color":"green"}
tellraw @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:female_tinpet"}}}}] {"translate":"medabots_server:message.tinpet.edit.female","color":"green"}
tellraw @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:neutral_tinpet"}}}}] {"translate":"medabots_server:message.tinpet.edit.neutral","color":"green"}
tellraw @s {"text":""}
tellraw @s {"translate":"medabots_server:message.tinpet.edit.unequip","color":"green","clickEvent":{"action":"run_command","value":"/trigger UnequipTinpet"}}
scoreboard players enable @s UnequipTinpet

# Medawatch music
stopsound @s music
playsound medabots_server:music.medawatch_intro music @s ~ ~ ~ 1000
scoreboard players set @s MusicType 31
scoreboard players set @s Music 75