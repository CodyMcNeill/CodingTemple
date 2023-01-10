# Consecutive Indices
# You are given a list of unique integers (arr), and two integers (a and b). Your task is to find out whether or not a and b appear consecutively in arr, and return a boolean value (True if a and b are consecutive, False otherwise).
# Example:
# Input: ([3,1,0,19,4], 19, 5)
# Output: False
# Input: ([1, 6, 9, -3, 4, -78, 0], -3, 4)
# Output: True
# Input: ([3,1,0,19], 19, 0)
# Output: True

nums = [3,1,0,19,4]
nums2 = [1, 6, 9, -3, 4, -78, 0]
nums3 = [3, 1, 0, 19]
def consecutiveNums(nums, num1, num2):
    for i in range(len(nums)-1):
        if (nums[i] == num1 and nums[i+1] == num2) or (nums[i] == num2 and nums[i+1] == num1):
            return True
    else:
        return False

print(consecutiveNums(nums, 19, 5))
print(consecutiveNums(nums2, -3, 4))
print(consecutiveNums(nums3, 19, 0))