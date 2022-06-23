class Board
    def initialize(n)
        @grid = Array.new(n) {Array.new(n,:N)}
        @size = @grid.length * @grid.length
    end

    def size
        @size
    end

    def [](pos)
        @grid[pos[0]][pos[1]]
    end

    def []=(pos, value)
        @grid[pos[0]][pos[1]] = value
    end

    def num_ships()
        @grid.flatten.count {|ele| ele == :S}
    end
end