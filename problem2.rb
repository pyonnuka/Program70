enzan = ["*", ""]

(1000..9999).each do |i|
  enzan.each do |e1|
    enzan.each do |e2|
      enzan.each do |e3|
        i_arr = i.to_s.split("")
        var = i_arr[0] + e1 + i_arr[1] + e2 + i_arr[2] + e3 + i_arr[3]
        var = var.split(/(\+|\-|\*|\/)/).map {|i| i.to_i != 0 ? i.to_i : i }
        var = var.join("")
        if var.length > 4
          begin
            if i.to_s.reverse == eval(var).to_s
              puts i
              break
            end
          rescue => e
            next
          end
        end
      end
    end
  end
end
