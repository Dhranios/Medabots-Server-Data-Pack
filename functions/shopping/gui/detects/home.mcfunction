# By: shraavan97
# 08 May 2019
# 
# GUI Detection - Reacts on item clicked via /clear
# Returns: Value to gui.page scoreboard
# Page 1

execute unless entity @s[nbt={Inventory:[{tag:{gui:{buy:1b}}}]}] run function medabots_server:shopping/gui/actions/buy
execute unless entity @s[nbt={Inventory:[{tag:{gui:{sell:1b}}}]}] run function medabots_server:shopping/gui/actions/sell

