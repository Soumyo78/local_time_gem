require 'tzinfo'

module LocalTimeGem
  class Error < StandardError; end

  # Get local time and UTC difference for a city
  def self.get_time(city_name)
    timezone = TZInfo::Timezone.get(city_name)
    now = Time.now.utc

    # Get local time in the specified timezone
    local_time = now.in_time_zone(timezone)

    # Calculate UTC difference (hours)
    utc_offset = local_time.utc_offset / 3600

    # Return formatted information
    {
      local_time: local_time.strftime("%H:%M:%S %Z"),
      utc_difference: utc_offset
    }
  end
end
