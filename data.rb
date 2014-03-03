class TeamData

  require "csv"

  def self.get
    arr = CSV.read("painofsport.csv")

    headers = arr.first

    data = {}

    (1..arr.count-1).each do |row_index|
      row = arr[row_index]

      team_name = row[0]
      team_data = {}

      (1..row.count-1).each do |datum_index|
        team_data[headers[datum_index]] = row[datum_index]
      end

      data[team_name] = team_data

    end

    data
  end

end
