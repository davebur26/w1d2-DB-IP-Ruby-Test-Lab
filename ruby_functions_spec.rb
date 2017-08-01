require( 'minitest/autorun' )
require_relative( 'ruby_functions_practice' )

class Functions_Practice < MiniTest::Test

#complete
  def test_return_10()
    assert_equal( 10, return_10() )
  end

#compelte
  def test_add()
    sum = add( 1, 2 )
    assert_equal( 3, sum )
  end

#complete
  def test_subtract()
    difference = subtract( 10, 5 )
    assert_equal( 5, difference )
  end

#complete
  def test_multiply()
    assert_equal( 8, multiply( 4, 2 ) )
  end

#complete
  def test_divide()
    assert_equal( 5, divide( 10, 2 ) )
  end

#complete
  def test_length_of_string()
    test_string = "A string of length 21"
    length = length_of_string( test_string )
    assert_equal( 21, length )
  end

#complete
  def test_join_string()
    string_1 = "Mary had a little lamb, "
    string_2 = "it's fleece was white as snow"
    joined_string = join_string( string_1, string_2 )
    assert_equal( "Mary had a little lamb, it's fleece was white as snow", joined_string )
  end

#complete
  def test_add_string_as_number()
    sum_of_strings = add_string_as_number( "1", "2" )
    assert_equal( 3, sum_of_strings )
  end

  def test_number_to_full_name()

    first_month_string = number_to_full_month_name( 1 )
    third_month_string = number_to_full_month_name( 3 )
    ninth_month_string = number_to_full_month_name( 9 )
    assert_equal( "January", first_month_string )
    assert_equal( "March", third_month_string )
    assert_equal( "September", ninth_month_string )
  end

  def test_substring()

    first_month_string = number_to_short_month_name( 1 )
    third_month_string = number_to_short_month_name( 3 )
    ninth_month_string = number_to_short_month_name( 9 )
    assert_equal( "Jan", first_month_string )
    assert_equal( "Mar", third_month_string )
    assert_equal( "Sep", ninth_month_string )
  end



  #Further

  #Given the length of a side of a cube calculate the volume
  def test_volume_of_cube()
    volume = volume_of_cube(3)
    assert_equal(27,volume)
  end

  #Given the radius of a sphere calculate the volume
  def test_volume_of_sphere()
    volume = volume_of_sphere(5)
    correct_answer = (4/3)*(Math::PI)*(5**3)
    assert_equal(correct_answer,volume)
  end

  #Given a value in farenheit, convert this into celsius.
  #Temperatures to 1 decimal place
  def test_fahrenheit_to_celsius()
    temp_c = fahrenheit_to_celsius(0).round(1)
    assert_equal(-17.8,temp_c)
  end

  def test_volume_of_cuboid()
    volume = volume_of_cuboid(4,5,5)
    assert_equal(100,volume)
  end


end
