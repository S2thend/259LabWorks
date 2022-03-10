

class Seive:
    def __init__(self) -> None:
        self.primes = list()


    def compute_primes(self, lim):
        self.primes.clear()
        self.primes.append(2)
        for num in range(3, lim + 1):
            self.primes.append(num)
            for divisor in range(2,num):
                if num%divisor == 0:
                    self.primes.pop()
                    break

obj = Seive()

obj.compute_primes(7)
