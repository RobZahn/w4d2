require_relative "piece.rb"
class Board

    def initialize
        @rows = Array.new(8) { Array.new(8) }
        populate
    end

    def populate
        @rows[1].each do |ele|
            ele = Piece.new
        end
        @rows[2].each do |ele|
            ele = Piece.new
        end
        @rows[7].each do |ele|
            ele = Piece.new
        end
        @rows[8].each do |ele|
            ele = Piece.new
        end
    end

    def move_piece(color, start_pos, end_pos)
        
        if @rows[start_pos] != nil && @rows[end_pos] == nil
            @rows[end_pos], @rows[start_pos] = @rows[start_pos], @rows[end_pos]
        else  
            raise "Invalid start/end pos"
        end

    end

    def inspect
        .inspect
    end

    def [](pos)
        row,col = pos
        @rows[row][col]
    end

    def []=(pos, value)
        row,col = pos
        @rows[row][col] = value
    end

    def valid_pos?(pos)
    end

    def add_piece(piece, pos)
    end

    def checkmate?(color)
    end

    def in_check?(color)
    end

    def find_king(color)
    end

    def pieces
    end

    def dup
    end

    def move_piece!(color, start_pos, end_pos)
    end

end

