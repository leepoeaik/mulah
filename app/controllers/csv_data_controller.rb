class CsvDataController < ApplicationController
  def index
    @csv_data = CSV.read(Rails.root.join('public','Table_input.csv'), headers: true)

    @alpha = operation_result('A5','A20','+')
    @beta = operation_result('A15','A7','/')
    @charlie = operation_result('A13','A12','*')
    
  end

  def operation_result(input1,input2,operator)
    value1 = find_value(input1)
    value2 = find_value(input2)
    value1.public_send(operator,value2)
  end

  def find_value(input)
    @csv_data.each do |row|
      if row[0] == input
        return row[1].to_i
      end
    end
  end
end
