require('rspec')
require('myhash')

describe(MyHash) do
  describe("#myFetch") do
    it("retrieves a stored value by its key") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      expect(test_hash.myFetch("kitten")).to(eq("cute"))
    end
  end

  describe("#myHas_key?") do
    it("checks if a key exists") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      expect(test_hash.myHas_key("puppy")).to(eq(false))
    end
  end

  describe("#myLength") do
    it("returns number of key/pair values in custom hash") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      test_hash.myStore("puppy", "cuter")
      expect(test_hash.myLength()).to(eq(2))
    end
  end

  describe("#myLength") do
    it("returns number of key/pair values in custom hash") do
      test_hash1 = MyHash.new()
      test_hash2 = MyHash.new()
      test_hash1.myStore("kitten", "cute")
      test_hash1.myStore("puppy", "cuter")
      test_hash2.myStore("fish", "boring")
      test_hash2.myStore("unicorn", "cuter")
      expect(test_hash1.myMerge(test_hash2)).to(eq(2))
    end
  end


end
