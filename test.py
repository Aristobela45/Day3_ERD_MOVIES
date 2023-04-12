from whiteboard import solution
import unittest 


class TestSolution(unittest.TestCase):
    def test_one(self):
        arr = [7,1]
        self.assertEqual(solution(arr), [1,7])

    def test_two(self):
        arr = [5,8,6,3,4]
        self.assertEqual(solution(arr), [3,8,6,5,4])

    def test_three(self):
        arr = [1,8,7,6,5,4,3,2,9,0]
        self.assertEqual(solution(arr), [1, 8, 3, 6, 5, 4, 7, 2, 9, 0])


if __name__ == '__main__':
    unittest.main()