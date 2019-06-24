class Node
  attr_accessor :node_value, :end_of_word #, :node_childs
  attr_reader :node_childs

  def initialize(node_value, node_childs = [], end_of_word = false)
    @node_value = node_value
    @node_childs = node_childs # тут должен быть вызов функции node_childs, происходит ли он?
    @end_of_word = end_of_word
  end

  #def node_childs=(node_childs)
  #  node_childs.push(node_child)
  #end

  def print_node
    puts "Value of node #{node_value}. Childs of node: #{node_childs} "
  end
end

class Trie
  #attr_accessor :trie

  def initialize()
    @root = Node.new(nil) #тут вторым ваще-то должна быть ссылка на нижнего

  end

  def add_word(word)
    puts @root.inspect
    base = @root #base это массив нодов какого-то хуя
    letters = word.chars
    letters.each do |letter|
      #base = add_char(letter, base.node_childs)
      puts base
      puts letter
    end

    #base.end_of_word = true
  end

  def add_char(char, trie)
    trie.find{ |n| n.node_value == char} || add_node(char, trie)
  end

  def add_node(char, trie)
    trie.push(Node.new(char))
    puts trie.inspect
  end

end

node = Node.new("A",[1,2])
node.print_node
triee = Trie.new()
triee.add_word("greeda")
puts triee.
=begin
    while i != word.length-1
    if root.node_childs.node_value.include?(word[0].to_s)
      word = word.slice(1..word.length-1) #если слово поместилось не полностью фиксить тут
      add(word)
    else
      root.node_childs.push(Node.new(word[0])
      root.node_value = word[0].to_s
      root.node_childs.push
      Node.new(word[0])
=end



=begin

    i=0
    trie = self.new(word[i])

    while i < word.length-2
      node=Node.new(word[i],word[i+1]) #вопрос хранить ли тут объекты или их значения

=end

