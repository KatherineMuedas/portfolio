require 'test_helper'

class ProjectTest < ActiveSupport::TestCase

  setup do
    @project = create(:project)
  end
  # it 'Checks if factory is valid ' do
  #   expect
  # end  

  def test_if_factory_is_valid # test:unit way to define a test
    assert @project.valid?
  end

  test "must have a title" do # minitest way to define a test
    @project.title = nil
    assert @project.invalid?
  end

  # it "must have a description" do #minitest:spec way to deine a test
  #   @project.description = nil
  #   assert @project.invalid?
  # end
  test "must have a description" do # minitest way to define a test
    @project.description = nil
    assert @project.invalid?
  end

  test "must have a github" do # minitest way to define a test
    @project.github = nil
    assert @project.invalid?
  end

  test "must have a website" do # minitest way to define a test
    @project.website = nil
    assert @project.invalid?
  end
end
