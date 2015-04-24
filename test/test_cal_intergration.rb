require_relative 'helper'
require_relative '../lib/month'

class TestMonthIntegration < Minitest::Test
  def test_month_starting_sunday
    output = `./cal.rb 02 2015 `
    expected = <<EOS
   February 2015
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28


EOS
    assert_equal expected, output
  end

  def test_regular_leap_year
    output    = `./cal.rb 02 2016`
    expected  = <<EOS
   February 2016
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28 29

EOS
    assert_equal expected, output
  end

  def test_century_leap_years
    output   = `./cal.rb 02 2400`
    expected = <<EOS
   February 2400
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29

EOS
    assert_equal expected, output
  end
#   MONTHS TEST (January-December 2015)
  def test_01_jan_2015
    output = `./cal.rb 01 2015`
    expected = <<EOS
    January 2015
Su Mo Tu We Th Fr Sa
             1  2  3
 4  5  6  7  8  9 10
11 12 13 14 15 16 17
18 19 20 21 22 23 24
25 26 27 28 29 30 31

EOS
    assert_equal expected, output
  end

  def test_02_feb_2015
    output = `./cal.rb 02 2015`
    expected = <<EOS
   February 2015
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28


EOS
    assert_equal expected, output
  end

  def test_03_mar_2015
    output = `./cal.rb 03 2015`
    expected = <<EOS
     March 2015
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31

EOS
    assert_equal expected, output
  end

  def test_04_apr_2015
    output = `./cal.rb 04 2015 `
    expected = <<EOS
     April 2015
Su Mo Tu We Th Fr Sa
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29 30

EOS
    assert_equal expected, output
  end

  def test_05_may_2015
    output = `./cal.rb 05 2015`
    expected = <<EOS
      May 2015
Su Mo Tu We Th Fr Sa
                1  2
 3  4  5  6  7  8  9
10 11 12 13 14 15 16
17 18 19 20 21 22 23
24 25 26 27 28 29 30
31
EOS
    assert_equal expected, output
  end

  def test_06_jun_2015
    output = `./cal.rb 06 2015 `
    expected = <<EOS
     June 2015
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28 29 30

EOS
    assert_equal expected, output
  end

  def test_07_jul_2015
    output = `./cal.rb 07 2015 `
    expected = <<EOS
     July 2015
Su Mo Tu We Th Fr Sa
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29 30 31

EOS
    assert_equal expected, output
  end

  def test_08_aug_2015
    output = `./cal.rb 08 2015 `
    expected = <<EOS
    August 2015
Su Mo Tu We Th Fr Sa
                   1
 2  3  4  5  6  7  8
 9 10 11 12 13 14 15
16 17 18 19 20 21 22
23 24 25 26 27 28 29
30 31
EOS
    assert_equal expected, output
  end

  def test_09_sep_2015
    output = `./cal.rb 09 2015 `
    expected = <<EOS
   September 2015
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29 30

EOS
    assert_equal expected, output
  end

  def test_10_oct_2015
    output = `./cal.rb 10 2015 `
    expected = <<EOS
    October 2015
Su Mo Tu We Th Fr Sa
             1  2  3
 4  5  6  7  8  9 10
11 12 13 14 15 16 17
18 19 20 21 22 23 24
25 26 27 28 29 30 31

EOS
    assert_equal expected, output
  end

  def test_11_nov_2015
    output = `./cal.rb 11 2015 `
    expected = <<EOS
   November 2015
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30

EOS
    assert_equal expected, output
  end

  def test_12_dec_2015
    output = `./cal.rb 12 2015 `
    expected = <<EOS
   December 2015
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29 30 31

EOS
    assert_equal expected, output
  end

#   MAX AND MIN DATES

  def test_min_date
    output    = `./cal.rb 01 1800`
    expected  = <<EOS
    January 1800
Su Mo Tu We Th Fr Sa
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29 30 31

EOS
    assert_equal expected, output
  end

  def test_max_date
    output   = `./cal.rb 12 3000`
    expected = <<EOS
   December 3000
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28 29 30 31

EOS
    assert_equal expected, output
  end

  def test_dates_to_early
    output    = `./cal.rb 6 1500`
    expected  = "Date not in acceptable format/range"
    assert_equal expected, output
  end

  def test_dates_to_late
    output    = `./cal.rb 3 3005`
    expected  = "Date not in acceptable format/range"
    assert_equal expected, output
  end

  def test_inproper_date_format_error_case
    output = `./cal.rb 2024 8`
    expected = "Date not in acceptable format/range"
    assert_equal expected, output
  end
end