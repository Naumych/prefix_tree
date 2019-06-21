class Node
  attr_accessor :node_value, :end_of_word #, :node_childs
  attr_reader :node_childs

  def initialize(node_value, node_childs = [], end_of_word = false)
    @node_value = node_value
    @node_childs = node_childs # тут должен быть вызов функции node_childs, происходит ли он?
    @end_of_word = end_of_word
  end

  def node_childs=(node_childs)
    node_childs.push(node_child)
  end
end

class Trie
  #attr_accessor :trie

  def initialize()
    @first_node_in_trie = Node.new(nil) #тут вторым ваще-то должна быть ссылка на нижнего

  end

  def add(word)
    root = first_node_in_trie
    while i != word.length-1
    if root.node_childs.node_value.include?(word[0].to_s)
      word = word.slice(1..word.length-1) #если слово поместилось не полностью фиксить тут
      add(word)
    else
      root.node_childs.push(Node.new(word[0])
      root.node_value = word[0].to_s
      root.node_childs.push
      Node.new(word[0])




=begin

    i=0
    trie = self.new(word[i])

    while i < word.length-2
      node=Node.new(word[i],word[i+1]) #вопрос хранить ли тут объекты или их значения

=end

  end

  def add_node(root, word)
    while word.length-1
      root.node_childs.push(Node.new(word[0], word[1])
      word = word.slice(1..word.length-1)
      add_node(???  word)
    end
  end

  def includes?

  end

  def list

  end



end