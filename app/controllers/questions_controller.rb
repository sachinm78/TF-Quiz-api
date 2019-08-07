class QuestionsController < ApplicationController

    def index
        @questions = Question.all 
        render json: @questions
    end

    def show
        @question = Question.find_by(id: params[:id])
    end

    def create
        question = Question.new(question_params)
    end


    private

        def question_params
            params.require(:question).permit(:answer, :category_id)
        end
end
