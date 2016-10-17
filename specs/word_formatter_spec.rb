require('minitest')
require('minitest/autorun')
require('minitest/rg')
require_relative('../models/word_formatter')

class TestWordFormatter < MiniTest::Test

  def setup
    @address =     {
        address: '3 ARGYLE HOUSE',
        building: 'CODEBASE',
        postcode: 'e13 zqf',
        phone: '0131558030'
    }

    @new_post_code = "eh4 2gg"
  end
  
  def test_upcase
    assert_equal("EH4 2GG", WordFormatter.upcase(@new_post_code))
  end

  def test_camelcase
    assert_equal("CodeClan", WordFormatter.camelcase("code clan"))
  end

end