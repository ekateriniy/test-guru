class BadgeIssuerService
  def initialize(test_passage)
    @user = test_passage.user
    @test = test_passage.test
  end

  def call
    Badge.all.select do |badge|
      send("issue_badges_of_#{badge.rule}?", badge.value)
    end
  end

  def issue_badges_of_level?(level)
    if @test.level == level.to_i
      tests_ids = Test.where(level: level).ids
      tests_ids.count == TestPassage.passed_tests_by_user(@user.id, tests_ids).ids.count
    else
      false
    end
  end

  def issue_badges_of_category?(category)
    if @test.category.title == category
      tests_ids = Test.by_category_desc(category).ids
      tests_ids.count == TestPassage.passed_tests_by_user(@user.id, tests_ids).ids.count
    else
      false
    end
  end

  def issue_badges_of_attempt?(_attempt)
    TestPassage.where(user_id: @user.id, test_id: @test.id).count == 1
  end
end
