class Image

    def initialize (blur)
       @picture = blur
    end

    def blur
      @ones = []
      @picture.each_with_index do |row, row_index|
        row.each_with_index do |column, column_index|
          if column == 1
           @ones << [row_index, column_index]
          end
      end 
    end
      
      @ones.each do |row, column|

        maxRowIndex = @picture.length()-1
        #puts maxRowIndex
        maxColumnIndex = @picture[row].length - 1
         
        #to the left of 1
        if column > 0
        # then
           @picture [row] [column - 1] = 1
        end
        #to the right of 1
        if  column < maxColumnIndex
        # then
           @picture [row] [column + 1 ] = 1
        end
        #above 1
        if row > 0
        # then
           @picture [row -1] [column] = 1
        end
        #below 1
        if row < maxRowIndex
        # then
           @picture [row + 1] [column] = 1
        end  
      end
    end

    def output_image
      @picture.each do |row|
       print row.join, "\n"
      end
    end
end
#---------------------------------
ManHatNum = ARGV[0].to_i
  image = Image.new ([
        [0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0],
        [0,0,0,1,0,0,0],
        [0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0]
        ])
  ManHatNum.times {
    image.blur
  }
  image.output_image

  puts ARGV