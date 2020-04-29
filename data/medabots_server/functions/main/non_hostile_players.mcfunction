# No vanilla combat
effect give @s minecraft:weakness 1000000 127 true
effect give @s[nbt=!{HurtTime:0s}] minecraft:instant_health 1 19 true

# Re-give new items so they are seen by advancements
execute at @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}]}] unless entity @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:loot_container",medallars:0d}}}]}] run function medabots_server:items/loot_container/give_medallars
execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:medallar",stage_item:0b}}}]}] run function medabots_server:items/put_medallars_on_bank
execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:medallar_cent",stage_item:0b}}}]}] run function medabots_server:items/put_medallar_cents_on_bank
execute at @s[nbt={Inventory:[{tag:{medabots_server:{stage_item:0b}}}]}] run function medabots_server:items/give_obtained_item
execute at @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:loot_container",items:[{}]}}}]}] run function medabots_server:items/loot_container/drop

# Fast roads
execute if entity @s[tag=action_mode] run function medabots_server:settings/action_mode

# No drowning
execute anchored eyes if block ^ ^ ^ minecraft:water run effect give @s minecraft:water_breathing 1 0 true

# Talk to entities
tag @e[distance=..3,tag=!talk,team=Passive] add talk 
tag @e[distance=..3,tag=!talk,team=Rubberobo] add talk

# Prevent self-destruct at stage enter
scoreboard players reset @s SelfDestruct

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
execute if entity @s[scores={EditingTinpet=9}] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{medabots_server:{part:"tinpet"}}}]}] run function medabots_server:items/tinpet/stop_editing
execute if entity @s[scores={UsePart=1..,EditingTinpet=0..8},nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet"}}}}] run function medabots_server:items/tinpet/stop_editing
execute if entity @s[scores={UsePart=1..,EditingTinpet=9}] unless entity @s[nbt={SelectedItem:{}}] run function medabots_server:items/tinpet/stop_editing
execute if entity @s[scores={UsePart=1..,EditingTinpet=0..},nbt={SelectedItem:{tag:{medabots_server:{part:"medal"}}}}] run function medabots_server:items/tinpet/equip_medal
execute if entity @s[scores={UsePart=1..,EditingTinpet=0..},nbt={SelectedItem:{tag:{medabots_server:{part:"head"}}}}] run function medabots_server:items/tinpet/equip_head
execute if entity @s[scores={UsePart=1..,EditingTinpet=0..},nbt={SelectedItem:{tag:{medabots_server:{part:"right_arm"}}}}] run function medabots_server:items/tinpet/equip_right_arm
execute if entity @s[scores={UsePart=1..,EditingTinpet=0..},nbt={SelectedItem:{tag:{medabots_server:{part:"left_arm"}}}}] run function medabots_server:items/tinpet/equip_left_arm
execute if entity @s[scores={UsePart=1..,EditingTinpet=0..},nbt={SelectedItem:{tag:{medabots_server:{part:"legs"}}}}] run function medabots_server:items/tinpet/equip_legs
execute if entity @s[scores={UsePart=1..,Dialog=0,Trading=0},nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet"}}}}] unless entity @s[scores={PlayerInteract=1..}] unless entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/edit
execute if entity @s[scores={UsePart=1..,Dialog=0,Trading=0},nbt={Inventory:[{Slot:-106b,tag:{medabots_server:{part:"tinpet"}}}]}] unless entity @s[scores={PlayerInteract=1..}] unless entity @s[nbt={SelectedItem:{}}] run function medabots_server:items/tinpet/edit
execute if entity @s[scores={UnequipTinpet=1..}] run function medabots_server:items/tinpet/unequip
tellraw @s[scores={UsePart=1..,Dialog=1..},nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet"}}}}] {"translate":"medabots_server:message.tinpet.dialog","color":"green"}
execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/editing