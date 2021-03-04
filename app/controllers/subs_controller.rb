class SubsController < ApplicationController
#Skinny Controllers / fot model
# Action - items on your webpage,
# Create -> POST
# Read -> GET
# Uupdate -> PUT
# Destroy -> DELETE
# pattern learn the patterns
# a controller action must return HTML, json, xml, redirect to action that does

#####patterns#######
  #GET / READ
    # index - view all records in the table
      # def index
      #   @model_names = Model_name.all
      #   render component: "ModelNames", props: {model_names: @model_names }
      # end

    # show - needs id, show a single record in the table based on id
    #   def show
    #     @Model_name = Model_name.find(params[:id])
    #     render component: "ModelName", props: { Model_name: @Model_name }
    #   end
    # # new - create object in memory, have shown the new form
    #   def new
    #     @Model_name = Model_name.new
    #     render component: "ModelNameNew", props { Model_name: @Model_name }
    #   end
    # # edit - needs id, shows edit form
    #   def edit
    #     @Model_name = Model_name.find(params[:id])
    #     render component: "ModelNameEdit", props: { Model_name: @Model_name }
    #   end

  #CREATE / POST
    #   - take the data in the form and save in the database
    # def create
    #   @Model_name = Model_name.new(model_name_params)
    #   if @Model_name.save

    #   else
    #   render component: 'ModelNameNew', props: {model_name: @model_name }
    #   end
    # end

    # private
    #   def model_name_params
    #     params.require(:Model_name).permit(:attributes1, :attribute2, :everything the table has)

    #   end

  #update / PUT
  #  - take values from the edit form and it will find the record with id, update the record in db 
  #     def update
  #       @model_name = Model_name.find(params[:id])
  #       if @model_name.update(model_name_params)
  #       else
  #         render component: 'ModelNameEdit', props { model_name: @model_name }
  #       end
  #     end


  # # Destroy / DELETE
  #       -finds the record with the given id, delete the record in the db
  #     def Destroy
  #       @model_name = Model_name.find(params[:id])
  #       @model_name.destroy
  #     end









  def index
    @subs = Sub.all
    render component: 'Subs', props: { subs: @subs }
  end

  def show
    @sub = Sub.find(param[:id])
    render component: 'Sub', props: { subs: @sub }
  end

  def new
    @sub = Sub.new
    render component: 'Sub', props: { subs: @sub }
  end

  def edit
  end
end
