# create structure

require 'pry'

module M1
end

module M2
end

module M3
end


class A
end

class B
  include M1
  include M2
end

class C
  include M3
end

