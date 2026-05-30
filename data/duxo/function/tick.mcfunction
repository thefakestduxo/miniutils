execute as @a[scores={duxo.mini.rules=1..}] run tellraw @s {"storage": "duxo:mini", "nbt": "rules"}
scoreboard players enable @a duxo.mini.rules
scoreboard players set @a duxo.mini.rules 0