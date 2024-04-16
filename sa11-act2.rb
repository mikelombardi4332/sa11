# 1. Extracting Hashtags from a Tweet
def extract_hashtags(text)
    pattern = /#\w+/
    hashtags = text.scan(pattern)
    hashtags.flatten
  end
  puts extract_hashtags("Love this #beautiful day! #sunny")
  
  # 2. Validating a Password
  def valid_password?(password)
    pattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,16}$/
    password.match?(pattern)
  end
  puts valid_password?("Passw0rd")
  puts valid_password?("pass")
  
  # 3. Finding Numeric Values in a String
  def find_numbers(text)
    pattern = /\d+(\.\d+)?/
    text.scan(pattern)
  end
  puts find_numbers("The order was placed for 100.25 units at a price of 20.75 each.")
  
  # 4. Matching a Date Format
  def valid_date?(date)
    pattern = /^\d{4}-\d{2}-\d{2}$/
    date.match?(pattern)
  end
  puts valid_date?("2023-03-15")
  puts valid_date?("15-03-2023")
  
  # 5. Parsing a Log Entry
  def parse_log_entry(log)
    pattern = /^(INFO|WARN|ERROR): (.+)$/
    match = log.match(pattern)
    [match[1], match[2]] if match
  end
  log_entry = "ERROR: Disk space low"
  puts parse_log_entry(log_entry).inspect
  