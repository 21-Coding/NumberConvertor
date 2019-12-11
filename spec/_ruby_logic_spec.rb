require('rspec')
require('_ruby_logic')


describe('#numbers')do
it('should convert the ones')do
expect(numbers(5)).to(eq('Five'))
end
it('should convert the teen numbers ')do
expect(numbers(15)).to(eq('Fifteen'))
end
it('should convert the hundreds ')do
expect(numbers(152)).to(eq('One Hundred Fifty Two'))
end
it('should convert the hundreds ')do
expect(numbers(4152)).to(eq('Four Thousand One Hundred Fifty Two'))
end
it('should convert the hundreds w teens ')do
expect(numbers(118)).to(eq('One Hundred Eighteen'))
end
it('should convert the tens')do
expect(numbers(65)).to(eq('Sixty Five'))
end
end
