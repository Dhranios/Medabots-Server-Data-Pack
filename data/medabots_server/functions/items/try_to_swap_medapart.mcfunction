execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{gender:0b}}}},tag=male_tinpet,tag=!swapped] run function medabots_server:items/swap_medapart
execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{gender:2b}}}},tag=male_tinpet,tag=!swapped] run function medabots_server:items/swap_medapart
execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{gender:1b}}}},tag=female_tinpet,tag=!swapped] run function medabots_server:items/swap_medapart
execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{gender:2b}}}},tag=female_tinpet,tag=!swapped] run function medabots_server:items/swap_medapart
execute if entity @s[tag=neutral_tinpet,tag=!swapped] run function medabots_server:items/swap_medapart
tag @s remove swapped