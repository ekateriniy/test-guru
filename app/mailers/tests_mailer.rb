class TestsMailer < ApplicationMailer

  def complited_test(test_passage)
    @user = test_passage.user
    @test = test_passage.test

    mail to: @user.email, subject: 'You have complited the TestGuru test'
  end
end
