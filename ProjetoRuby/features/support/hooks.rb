Before do
  page.current_window.resize_to(1440, 900)
end

After do
  page.save_screenshot("logs/shot.png")
end
