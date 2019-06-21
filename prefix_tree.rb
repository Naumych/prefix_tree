class Node
  attr_accessor :node_value #, :node_childs
  attr_reader :node_childs

  def initialize(node_value, node_childs = [])
    @node_value = node_value
    @node_childs = node_childs # тут должен быть вызов функции node_childs, происходит ли он?
  end

  def node_childs=(node_childs)
    node_childs.push(node_child)
  end
end

class Trie
  #attr_accessor :trie

  def initialize()
    @first_node_in_trie = Node.new(nil ) #тут вторым ваще-то должна быть ссылка на нижнего

  end

  def add(word)
    i=0
    trie = self.new(word[i])

    while i < word.length-2
      node=Node.new(word[i],word[i+1]) #вопрос хранить ли тут объекты или их значения


  end

  def includes?

  end

  def list

  end

end