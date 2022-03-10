import random
import unittest
import seive

''' Python program to print all primes smaller than or equal to
 n using Sieve of Eratosthenes'''
correct_list= list()

def SieveOfEratosthenes(n):
    correct_list.clear()
    '''Create a boolean array "prime[0..n]" and initialize
     all entries it as true. A value in prime[i] will
     finally be false if i is Not a prime, else true.'''
    prime = [True for i in range(n + 1)]
    p = 2
    while (p * p <= n):
         
        # If prime[p] is not changed, then it is a prime
        if (prime[p] == True):
             
            # Update all multiples of p
            for i in range(p ** 2, n + 1, p):
                prime[i] = False
        p += 1
    prime[0]= False
    prime[1]= False
    # Print all prime numbers
    for p in range(n + 1):
        if prime[p]:
            correct_list.append(p)


class TestSeiveMethods(unittest.TestCase):

    def test_seive(self):
        obj = seive.Seive()

        obj.compute_primes(7)
        
        self.assertEqual(obj.primes, [2,3,5,7])


        obj.compute_primes(15)
        
        self.assertEqual(obj.primes, [2,3,5,7,11,13])


        obj.compute_primes(99)
        SieveOfEratosthenes(99)

        self.assertEqual(obj.primes, correct_list)


        for i in range(1,10):
            rn = random.randrange(0,10**3)
            obj.compute_primes(rn)
            SieveOfEratosthenes(rn)
            self.assertEqual(obj.primes, correct_list)

if __name__ == "__main__":        
    unittest.main()