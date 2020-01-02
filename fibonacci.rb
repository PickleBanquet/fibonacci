def recursive_fib(n)
	if (n == 0 || n == 1)
		return n
	end
	return recursive_fib(n-1) + recursive_fib(n-2)
end

def iterative_fib(n)
	a = 0
	b = 1
	while a <= n
		a = b
		b = a + b
	end
	puts a
end
puts recursive_fib(35)
puts iterative_fib(35)

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end