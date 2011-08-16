require 'goliath'

api_dir = File.dirname(__FILE__) + '/apis'
$LOAD_PATH.unshift(api_dir)

require 'async_upload'

class Test < Goliath::API
  put '/async' do
    run AsyncUpload.new
  end
end
