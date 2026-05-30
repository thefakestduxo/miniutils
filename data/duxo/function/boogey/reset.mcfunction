schedule clear duxo:boogey/timer


scoreboard players operation #Boogey BoogeyScore = BoogeyConf BoogeyScore
scoreboard players operation #Boogey BoogeyMinutes = BoogeyConf BoogeyMinutes
scoreboard players set #Boogey BoogeySeconds 0



schedule function duxo:boogey/roll 30s
schedule function duxo:boogey/timer 60s