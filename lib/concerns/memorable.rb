module Memorable

    module ClassMethods
        def reset_all #self is removed since Extend defines class methods inside modules
            all.clear
        end

        def count
            all.count
        end
    end

    module InstanceMethods
        def initialize
            self.class.all << self
        end
    end

end
