class ApplicationController < ActionController::Base
  layout(false)

  # Add your actions below this line
  # ================================


  def homepage
    render({:template => "game_templates/rules.html.erb".html_safe})
  end

  def play_rock
    #write a ton of code

    render({:template => "game_templates/user_rock.html.erb".html_safe})
  end

  def play_paper

    @comp_move = ["rock", "paper", "scissors"].sample
    if @comp_move == "rock"
      @outcome = "won"
    elsif @comp_move == "paper"
      @outcome = "tied"
    elsif @comp_move == "scissors"
      @outcome = "lost"
    end

    render({:template => "game_templates/user_paper.html.erb".html_safe})
  end

end
