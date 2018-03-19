describe 'user visits comedians index'  do
  context 'visit [/comedians]' do
    it 'they see all comedians'  do
      Comedian.create(name: "kyle", age: 29)

      visit '/comedians'

      expect(page).to have_content("kyle")
      expect(page).to have_content("29")

    end
  end
end

describe 'user visits comedians index'  do
  context 'visit [/comedians]' do
    it 'they see all comedians specials'  do
      com = Comedian.create(name: "kyle", age: 29)
      com.specials.create(name: 'fun')
      visit '/comedians'

      expect(page).to have_content("fun")

    end
  end
end


describe 'user visits comedians index'  do
  context 'visit [/comedians]' do
    it 'they see all average age '  do
     Comedian.create(name: "kyle", age: 30)
     Comedian.create(name: "kyle", age: 20)
      visit '/comedians'

      expect(page).to have_content("25")

    end
  end
end


describe 'user visits comedians by age'  do
  context 'visit [/comedians?age=34]' do
    it 'they see all comdeians that age '  do
     Comedian.create(name: "kyle", age: 30)
     Comedian.create(name: "mary", age: 20)
      Comedian.create(name: "paul", age: 30)
      visit '/comedians'

      expect(page).to have_content("30")
      expect(page).to have_content("kyle")


    end
  end
end



describe 'user visits comedians indexx'  do
  context 'visit [/comedians]' do
    it 'they see all count of specials'  do
      com = Comedian.create(name: "kyle", age: 29)
      com.specials.create(name: 'fun')
      com.specials.create(name: 'super')
      visit '/comedians'

      expect(page).to have_content("2")
      expect(page).to have_content("kyle")
      expect(page).to have_content("fun")



    end
  end
end
