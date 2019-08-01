module Order
  extend ActiveSupport::Concern

  included do
  	before_action :set_order, only: [:index, :memorials]
  end

private
  def set_order
    puts "++++++++++++++++++"
    puts "++++++++++++++++++"
    puts "++++++++++++++++++"
    puts "Param"
    puts params[:o_column]
      column = params[:o_column]
      direction = params[:o_direction]

      # defaults to "created_at desc" if there's no `o_column` param
      # just `o_direction` won't do anything, `o_column` has to be specified
      unless column.present?
        @order = OpenStruct.new(
          column: "created_at",
          direction: "desc"
        )
      else
        @order = OpenStruct.new(
          column: column,
          direction: direction
        )
        #this time it defaults to asc if it's not asc or desc, or empty (and also for security reasons)
        @order.direction = "asc" unless ["asc", "desc"].include? @order.direction
      end
    end

end