#Program to test your implementation


def function(x):
    y = x**2 - x**3 #function to be implemented
    return y

def binaryToFractional(binaryString):
    stringLen = len(binaryString)
    fracAmount = 0
    for i in range(stringLen):
        if(binaryString[i] != "0"):
            power = -1 * (i+1)
            fracAmount += int(binaryString[i]) * 2 ** (power)
    return fracAmount



def testFunction(eightBitX, eightBitY):
    xValue = binaryToFractional(eightBitX)

    yValueFromISE = binaryToFractional(eightBitY)

    yValueReal = function(xValue)

    accuracy = abs(yValueFromISE - yValueReal)

    print("Different is",accuracy)


print("Enter X value:")
eightBitX = input()

print("Enter Y value:")
eightBitY = input()

testFunction(eightBitX, eightBitY)
