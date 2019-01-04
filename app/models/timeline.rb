class Timeline < ApplicationRecord
  include UUID

  belongs_to :memorial

  def self.bulk_update(timelines, current_memorial)
    timelines.each do |t|
      @timeline = Timeline.where({memorial_id: current_memorial, uuid: t[:uuid]})[0]
      if t[:asset_type] && @timeline[:asset_type] == 'image'
        s3 = Aws::S3::Resource.new(region: 'us-east-1')
        s3_response = s3.bucket(ENV['S3_BUCKET']).object(@timeline[:asset_link]).delete()
      end
      unless @timeline.update(t.permit(:date, :date_format, :description, :event, :title, :asset_type, :asset_link))
        render json: @timeline.errors, status: :unprocessable_entity
      end
    end
  end
end
