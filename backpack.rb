class Backpack
  def initialize(attributes)
    @attributes = attributes # a hash containing day_of_week and weather keys
    @items = []
    prepare
  end

  def items
    @items
  end

  def prepare
    # set up local variables used by rest of prepare method
    weather = @attributes[:weather]
    day_of_week = @attributes[:day_of_week]

    # Ensure appropriate clothing is added to backpack
    pack_according_to_weather(weather)

    # Ensure gym shoes are added to backpack if it's a gym day
    pack_gym_shoes?(day_of_week)

    # Bring a packed lunch on all weekdays
    pack_lunch_if_weekday(day_of_week)
  end

  # packs pants and shirt in backpack
  def pack_pants_and_shirt
    @items << 'pants' << 'shirt'
  end

  def pack_gym_shoes?(day_of_week)
    if day_of_week == 'monday' || day_of_week == 'thursday'
      #add gym shoes to items
      @items << 'gym shoes'
    end
  end

  def pack_lunch_if_weekday(day_of_week)
    if day_of_week != 'saturday' && day_of_week != 'sunday'
      @items << 'packed lunch'
    end
  end

  # packs jacket or umbrella, depending on the weather
  def pack_according_to_weather(weather)
      pack_pants_and_shirt
    if weather == 'rainy'
      @items << 'umbrella'
    elsif weather == 'cold'
      @items << 'jacket'
    end
  end


  # Prints a summary packing list for Melinda's backpack
  def packing_list_summary
    output = []
    output << "Melinda, here's your packing list!"
    output << "Day: #{@attributes[:day_of_week]}, Weather: #{@attributes[:weather]}"
    output << ""

    @items.each do |item|
      output << "- #{item}"
    end
    output.join("\n")
  end

end
