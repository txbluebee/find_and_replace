require('rspec')
require('find_replace')

describe('Spring#find_place') do
  it('replace the word with another word') do
    expect('world'.find_replace()).to(eq('earth'))
  end
  it('replace the word with another word') do
    expect('he loves dog so much'.find_replace()).to(eq('he loves cat so much'))
  end
  it('replace single word with another word with partial change') do
    expect('catwalk'.find_replace()).to(eq('dogwalk'))
  end
end
