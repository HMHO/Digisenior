class Api::V1::UsercsController < ApplicationBaseController
    def index
       render json: Userc.all
    end
end
    