# Tags new bridges with what block they'll replace
execute unless entity @s[scores={Time=0..}] run function medabots_server:blocks/bridge/scores

# Remove when cleaning up a stage
execute if entity @s[tag=dead] run function medabots_server:blocks/bridge/clean_up
