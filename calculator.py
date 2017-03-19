"""
It provides classes to compute math operations
on lists
"""


class CalculatorClass(object):
    """
    Contains basic arithmetic operations on lists
    """

    def sum(self, num_list):
        """
        Compute the sum of a list of numbers
        """
        return reduce(lambda x, y: x+y, num_list, 0)
