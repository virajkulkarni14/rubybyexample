# Implementation of Singly Linked List

class SinglyLinkedList

  class Element
  
    def initialize(successor, list, content)
      @successor = successor
      @list = list
      @content = content
    end

    attr_accessor :successor, :list

  end

end
