class BadgeIssuerService
  def initialize(test_passage)
    @user = test_passage.user
    @test = test_passage.test
  end

  def call
    available_badges.each { |badge| @user.badges << badge }
  end

  def available_badges
    level_badges + category_badges + attempts_badges
  end

  def level_badges
    badge = Badge.where(rule: 'level', value: @test.level)

    if badge.count.zero? || Test.where(level: @test.level).ids == @user.tests_on(:level, @test.level).ids
      Badge.none
    else
      badge
    end
  end

  def category_badges
    badge = Badge.where(rule: 'category', value: @test.category)

    if badge.count.zero? || Test.where(category: @test.category).ids == @user.tests_on(:category, @test.category).ids
      Badge.none
    else
      badge
    end
  end

  def attempts_badges
    Badge.where(rule: 'attempt', value: @user.tests.where(id: @test.id).count)
  end
end
