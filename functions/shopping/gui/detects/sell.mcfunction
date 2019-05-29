# By: shraavan97
# 08 May 2019
# 
# GUI Detection - Reacts on item clicked via /clear
# Returns: Value to gui.page scoreboard
# Page 1

execute unless entity @s[nbt={Inventory:[{tag:{gui:{item1:1b}}}]}] run function medabots_server:shopping/gui/actions/item1
execute unless entity @s[nbt={Inventory:[{tag:{gui:{item2:1b}}}]}] run function medabots_server:shopping/gui/actions/item2
execute unless entity @s[nbt={Inventory:[{tag:{gui:{item3:1b}}}]}] run function medabots_server:shopping/gui/actions/item3

