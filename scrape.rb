#!/usr/bin/env ruby

# set initial minute interval
# images are captured at :15 & :45

(00..23).step(1) do |h|

  (15..45).step(30) do |m|

    # cURL gif from NOAA archives
    # %02d pads single-digit hours
    # set channel (IR, VS, WV), date before running script
    `curl -O "http://www.goes-arch.noaa.gov/HUWV17254#{"%02d" % h}#{m}.GIF"`
  end

end
