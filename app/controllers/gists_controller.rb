class GistsController < ApplicationController
  def create
    @test_passage = TestPassage.find(params[:id])
    @gist = GistQuestionService.new(@test_passage.current_question).call

    if @gist[:html_url]
      Gist.create!(gist_params)

      flash_options = { notice: "#{t('.success_html')} #{view_context.link_to 'Gist', @gist[:html_url]}" }

    else
      flash_options = { alert: t('.failure') }
    end

    redirect_to @test_passage, flash_options
  end

  private

  def gist_params
    { url: @gist[:html_url], user: @test_passage.user, question: @test_passage.current_question }
  end
end
