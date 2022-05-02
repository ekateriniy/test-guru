class BadgeIssuerService
  def initialize(test_passage)
    @user = test_passage.user
    @test = test_passage.test
  end

  def call
    available_badges.map { |badge| send(badge) }
  end

  def available_badges
    self.methods.select { |method| method.to_s.match?(/badges_for_/) }
  end

  def badges_for_level
    badge = Badge.where(rule: 'level', value: @test.level)

    if badge.count.zero? || Test.where(level: @test.level).ids != @user.tests_on(:level, @test.level).ids
      Badge.none
    else
      badge
    end
  end

  def badges_for_category
    badge = Badge.where(rule: 'category', value: @test.category)

    if badge.count.zero? || Test.where(category: @test.category).ids == @user.tests_on(:category, @test.category).ids
      Badge.none
    else
      badge
    end
  end

  def badges_for_attempts
    Badge.where(rule: 'attempt', value: @user.tests.where(id: @test.id).count)
  end
end
