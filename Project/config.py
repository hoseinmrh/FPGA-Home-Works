# implement memory of function

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

def binaryGen(number):

    binaryString = format(number, "#010b")
    return binaryString.replace("0b", "")


def fracToBinConversion(no, precision): 
    binary = ""  
    IntegralPart = int(no)  
    fractionalPart = no- IntegralPart
    #to convert an fractional part to binary equivalent
    while (precision):
        fractionalPart *= 2
        bit = int(fractionalPart)
        if (bit == 1) :   
            fractionalPart -= bit  
            binary += '1'
        else : 
            binary += '0'
        precision -= 1
    return binary  

def main(nBits):
     upperBound = 2 ** (nBits)
     textFile = open("LUTconfig.txt", "w")
     for i in range (upperBound):
        binaryString = binaryGen(i)
        xValue = binaryToFractional(binaryString)
        yValue = round(function(xValue), nBits)
        yValueBin = fracToBinConversion(yValue, nBits)
        textFile.write(yValueBin+'\n')

main(8)
