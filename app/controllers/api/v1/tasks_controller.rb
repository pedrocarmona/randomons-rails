class Api::V1::TasksController < Api::BaseController
  def index
    render :text => '{
      "success":true,
      "info":"ok",
      "data":{
        "tasks":[
          {"title":"Complete the app"},
          {"title":"Complete the tutorial"}
        ]
      }
    }'
  end
end
