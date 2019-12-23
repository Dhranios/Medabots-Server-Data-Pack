execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{stage_item:1b,id:"medabots_server:medallar"}}}]}] run function medabots_server:items/loot_container/put_in/medallar
execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{stage_item:1b,id:"medabots_server:medallar_cent"}}}]}] run function medabots_server:items/loot_container/put_in/medallar_cent

execute unless entity @s[nbt={Inventory:[{tag:{medabots_server:{stage_item:1b,id:"medabots_server:medallar"}}}]}] unless entity @s[nbt={Inventory:[{tag:{medabots_server:{stage_item:1b,id:"medabots_server:medallar_cent"}}}]}] run function medabots_server:items/loot_container/put_in/item
