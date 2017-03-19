"""
It provides classes to search for prime numbers
"""


class PrimeClass(object):
    """
    Contains methods to test for primality
    """

    def is_prime(self, num_int):
        """
        Test if an integer is prime
        """
        if num_int == 0 or num_int == 1:
            return False
        return self._smallest_divisor(num_int) == num_int

    def _smallest_divisor(self, num_int):
        """
        Find the smallest divisor of an integer number
        """
        return self._find_divisor(num_int, 2)

    def _find_divisor(self, num_int, divisor):
        """
        Return the first divisor of an integer number starting from
        a given number
        """
        if divisor**2 > num_int:
            return num_int
        if self._divides(divisor, num_int):
            return divisor
        return self._find_divisor(num_int, divisor + 1)

    def _divides(self, divisor, num_int):
        """
        Test if a number is a divisor of a given number
        """
        return num_int % divisor == 0
