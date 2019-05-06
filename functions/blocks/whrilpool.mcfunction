# Tags new whrilpools with what block they'll replace
execute unless entity @s[scores={Time=0..}] run function medabots_server:blocks/whrilpool/scores

# Remove when cleaning up a stage
execute if entity @s[tag=dead] run function medabots_server:blocks/whrilpool/clean_up
