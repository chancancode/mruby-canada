assert('dispatch eh? method to existing ? method') do
  assert_true([].empty_eh?)
  assert_false([1,2,3].empty_eh?)
end

assert('dispatch eh? methods to non-existing ? method') do
  assert_raise(NoMethodError) do
    [].not_there_eh?
  end
end

assert('respond_to_eh?') do
  yes = [:empty?, :empty_eh?, :respond_to?, :respond_to_eh?]
  no = [:not_there, :not_there?, :not_there_eh, :not_there_eh?]

  yes.each { |y| assert_true([].respond_to_eh?(y)) }
  no.each { |n| assert_false([].respond_to_eh?(n)) }
end

assert('respond_to?') do
  yes = [:empty?, :empty_eh?, :respond_to?, :respond_to_eh?]
  no = [:not_there, :not_there?, :not_there_eh, :not_there_eh?]

  yes.each { |y| assert_true([].respond_to?(y)) }
  no.each { |n| assert_false([].respond_to?(n)) }
end