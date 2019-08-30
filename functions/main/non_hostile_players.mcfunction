# Fast roads
execute if entity @s[tag=action_mode,scores={Battle=0}] run function medabots_server:settings/action_mode

# No drowning
execute anchored eyes if block ^ ^ ^ minecraft:water run effect give @s minecraft:water_breathing 1 0 true

# Talk to entities
tag @e[distance=..3,tag=!talk,team=Passive] add talk 
tag @e[distance=..3,tag=!talk,team=Rubberobo] add talk

# Prevent self-destruct at stage enter
scoreboard players reset @s SelfDestruct

# Books
function #medabots_server:books

# Set up Medabot
execute if entity @s[scores={EditingTinpet=0}] unless entity @s[nbt={Inventory:[{Slot:0b,tag:{medabots_server:{part:"tinpet"}}}]}] run function medabots_server:items/tinpet/stop_editing
execute if entity @s[scores={EditingTinpet=1}] unless entity @s[nbt={Inventory:[{Slot:1b,tag:{medabots_server:{part:"tinpet"}}}]}] run function medabots_server:items/tinpet/stop_editing
execute if entity @s[scores={EditingTinpet=2}] unless entity @s[nbt={Inventory:[{Slot:2b,tag:{medabots_server:{part:"tinpet"}}}]}] run function medabots_server:items/tinpet/stop_editing
execute if entity @s[scores={EditingTinpet=3}] unless entity @s[nbt={Inventory:[{Slot:3b,tag:{medabots_server:{part:"tinpet"}}}]}] run function medabots_server:items/tinpet/stop_editing
execute if entity @s[scores={EditingTinpet=4}] unless entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{part:"tinpet"}}}]}] run function medabots_server:items/tinpet/stop_editing
execute if entity @s[scores={EditingTinpet=5}] unless entity @s[nbt={Inventory:[{Slot:5b,tag:{medabots_server:{part:"tinpet"}}}]}] run function medabots_server:items/tinpet/stop_editing
execute if entity @s[scores={EditingTinpet=6}] unless entity @s[nbt={Inventory:[{Slot:6b,tag:{medabots_server:{part:"tinpet"}}}]}] run function medabots_server:items/tinpet/stop_editing
execute if entity @s[scores={EditingTinpet=7}] unless entity @s[nbt={Inventory:[{Slot:7b,tag:{medabots_server:{part:"tinpet"}}}]}] run function medabots_server:items/tinpet/stop_editing
execute if entity @s[scores={EditingTinpet=8}] unless entity @s[nbt={Inventory:[{Slot:8b,tag:{medabots_server:{part:"tinpet"}}}]}] run function medabots_server:items/tinpet/stop_editing
execute if entity @s[scores={UsePart=1..,EditingTinpet=0..},nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet"}}}}] run function medabots_server:items/tinpet/stop_editing
execute if entity @s[scores={UsePart=1..,EditingTinpet=0..},nbt={SelectedItem:{tag:{medabots_server:{part:"medal"}}}}] run function medabots_server:items/tinpet/equip_medal
execute if entity @s[scores={UsePart=1..,EditingTinpet=0..},nbt={SelectedItem:{tag:{medabots_server:{part:"head"}}}}] run function medabots_server:items/tinpet/equip_head
execute if entity @s[scores={UsePart=1..,EditingTinpet=0..},nbt={SelectedItem:{tag:{medabots_server:{part:"right_arm"}}}}] run function medabots_server:items/tinpet/equip_right_arm
execute if entity @s[scores={UsePart=1..,EditingTinpet=0..},nbt={SelectedItem:{tag:{medabots_server:{part:"left_arm"}}}}] run function medabots_server:items/tinpet/equip_left_arm
execute if entity @s[scores={UsePart=1..,EditingTinpet=0..},nbt={SelectedItem:{tag:{medabots_server:{part:"legs"}}}}] run function medabots_server:items/tinpet/equip_legs
execute if entity @s[scores={UsePart=1..,Dialog=0},nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet"}}}}] unless entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/edit
execute if entity @s[scores={UnequipTinpet=1..}] run function medabots_server:items/tinpet/unequip
tellraw @s[scores={UsePart=1..,Dialog=1..},nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet"}}}}] {"translate":"medabots_server:message.tinpet.dialog","color":"green"}