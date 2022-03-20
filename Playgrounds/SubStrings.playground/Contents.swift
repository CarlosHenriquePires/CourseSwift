import UIKit

let musicStr = "Lose Yourself \n Till I Colapse \n Stan \n When I'm gone"
print(musicStr)
let arrayMusic = musicStr.components(separatedBy: "\n")

print(arrayMusic)

var tempMusicStr = ""
for item in arrayMusic {
    let barraN="\n"
    tempMusicStr += item + barraN
}
print(tempMusicStr)

