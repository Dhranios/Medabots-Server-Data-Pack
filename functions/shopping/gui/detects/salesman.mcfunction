# By: shraavan97
# 08 May 2019
# 
# GUI Detection - Reacts on item clicked via /clear
# Returns: Value to gui.page scoreboard
# Page 1

execute unless entity @s[nbt={Inventory:[{tag:{gui:{expresso:1b}}}]}] run function medabots_server:shopping/gui/actions/expresso
execute unless entity @s[nbt={Inventory:[{tag:{gui:{sunglasses:1b}}}]}] run function medabots_server:shopping/gui/actions/sunglasses
execute unless entity @s[nbt={Inventory:[{tag:{gui:{crown:1b}}}]}] run function medabots_server:shopping/gui/actions/unknown_crown

