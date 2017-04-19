require('rspec')
require('find_and_replace')

describe('Spring#find_and_place') do
  it('replace the word with another word') do
    expect('hello world'.find_and_replace("world", "earth")).to(eq('hello earth'))
  end
  it('replace the word with partial match with other world') do
    expect('I am walking my cat to the cathedral.'.find_and_replace("cat", "dog")).to(eq('I am walking my dog to the doghedral.'))
  end
end
