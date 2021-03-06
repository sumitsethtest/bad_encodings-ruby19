require File.dirname(__FILE__) + '/test_helper'

# ENV['VERBOSE'] = 'true'

class BadEncodingsTest < Test::Unit::TestCase
  context 'A file with bad encodings' do
    should 'fail' do
      path = File.dirname(__FILE__)
      bad_file = path + '/bad_encodings/bad1.rb'
      bad_lines = BadEncodings.find_lines_in_file(bad_file)
      assert_equal bad_lines, [[path+"/bad_encodings/bad1.rb", 4]]
    end
  end

  context 'A path with bad encodings' do
    should 'fail' do
      path = File.dirname(__FILE__)
      bad_lines = BadEncodings.find_lines_in_path(path)
      assert_equal bad_lines, [[path+"/bad_encodings/bad1.rb", 4], [path+"/bad_encodings/bad2.rb", 1], [path+"/bad_encodings/bad2.rb", 3], [path+"/bad_encodings/bad3.rb", 1]]
    end

    should 'fail with certain file extensions' do
      path = File.dirname(__FILE__)
      bad_lines = BadEncodings.find_lines_in_path(path, ['yml'])
      assert_equal bad_lines, [[path+"/bad_encodings/ok.yml", 4]]
    end
  end
end