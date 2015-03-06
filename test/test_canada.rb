assert('dispatch eh? method to existing ? method') do
  assert_true([].empty_eh?)
  assert_false([1,2,3].empty_eh?)
end

assert('dispatch eh? methods to non-existing ? method') do
  assert_raise(NoMethodError) do
    [].not_there_eh?
  end
end
