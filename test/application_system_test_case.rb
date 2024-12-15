require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  # headless_chrome 指定だとテスト時にChromeが開かない
  driven_by :selenium, using: :headless_chrome, screen_size: [ 1400, 1400 ]
end
