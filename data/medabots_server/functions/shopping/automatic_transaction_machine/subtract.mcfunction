scoreboard players remove @s[scores={TransactionValue=2..}] TransactionValue 1
execute unless entity @s[scores={TransactionValue=0..}] run scoreboard players set @s TransactionValue 0
tag @s add me
data merge block ~ ~ ~ {Text2:'{"score":{"name":"@a[tag=me]","objective":"TransactionValue"}}',Text3:'{"text":""}'}
tag @s remove me