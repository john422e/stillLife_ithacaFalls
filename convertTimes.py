"""
convert time in minutes:seconds to seconds
"""

using = True

while using:
    print('q to quit')
    inTime = input("ENTER TIME 00:00.0   ") # minutes, seconds (floats okay)
    if inTime == 'q':
        using = False
    else:
        inTime = inTime.split(":")
        inTime = [float(i) for i in inTime]
        seconds = inTime[0] * 60 + inTime[1]
        print(inTime, seconds, '\n\n')

print("GOODBYE")
