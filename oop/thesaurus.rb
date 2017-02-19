# Create a thesaurus program. To create it, you will create two classes, Thesaurus and Entry.
# A Thesaurus will contain many Entries. An Entry contains three primary attributes:
# word, synonymns, and antonyms. Your application should contain the following features:
# 1. The ability to add new words to a Thesaurus.
# 2. The ability to delete a word from a Thesaurus. 
# 3. The ability to look up a word's synonyms.
# 4. The ability to look up a word's antonyms.
# 5. The ability to add a synonym to a word.
# 6. The ability to add an antonym to a word.
#
# Part of the challenge is to determine which functionality belongs in the Thesaurus class,
# and which belongs in the Entry class.

class Entry
  attr_accessor :word, :synonyms, :antonyms
  
  def initialize(word, hash={})
    @word = word
    @synonyms = hash[:synonyms]
    @antonyms = hash[:antonyms]
  end

  def add_synonym(synonym)
    self.synonyms << synonym
  end

  def add_antonym(antonym)
    self.antonyms << antonym
  end

end

class Thesaurus
  attr_accessor :entries

  def initialize(hash={})
    @entries = hash
  end

  def add_entry(entry)
    @entries.merge!({entry.word => entry})
  end

  def delete_entry(entry)
    @entries.delete(entry)
  end

  def add_synonym_to_entry(word, synonym)
    entry = self.entries[word]
    entry.add_synonym(synonym)
    self.add_entry(entry)
  end

  def add_antonym_to_entry(word, antonym)
    entry = self.entries[word]
    entry.add_antonym(antonym)
    self.add_entry(entry)
  end

end