title @a times 0 200 60
title @a title [{bold:true,color:red,text:"GAME OVER!"}]
title @a subtitle [{"selector":"@a[team=!lives_0]"},{color:gold,text:" WINS!"}]
execute as @a at @s run playsound duxo:end
execute as @a[team=!lives_0] at @s run playsound duxo:first
scoreboard players add @a[team=!lives_0] wins 1

scoreboard players set start boolean 0

tellraw @a [{text:"\n"},{"selector":"@a[team=!lives_0]"},{"color":"yellow","text":" now has "},{"color":"gold","score":{"name":"@a[team=!lives_0]","objective":"wins"}},{"color":"yellow","text":" win(s)!"},{text:"\n"}]