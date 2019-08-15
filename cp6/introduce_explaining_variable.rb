# 6.6 説明用変数の導入

is_mac_os = platform.upcase.index("MAC")
is_ie_browser = browser.upcase.index("IE")
was_resized = resize > 0
if (is_mac_os && is_ie_browser && initialized? && was_resized)
  # do something
end
