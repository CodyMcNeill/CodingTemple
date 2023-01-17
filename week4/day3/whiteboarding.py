# Move Zeros
# Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.
# Example:
# Input: [0,1,0,3,12]
# Output: [1,3,12,0,0]
# Example Input: [0,0,11,2,3,4]
# Example Output: [11,2,3,4,0,0]

li1 = [0,1,0,3,12]
li2 = [0,0,11,2,3,4]

def moveZero(nums):
    empty = []
    for i in nums:
        if i != 0:
            empty.append(i)
    for i in nums:
        if i == 0:
            empty.append(i)
    print(empty)
    return empty

moveZero(li1)
moveZero(li2)