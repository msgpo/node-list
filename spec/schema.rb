require 'json-schema'

schema_version = 0.5

describe 'Mesh Node List' do
  it 'is valid schema JSON' do
    schema_file = File.expand_path("../schema/v#{schema_version}/schema.json", File.dirname(__FILE__))
    nodelist_file = File.expand_path('../nodeList.json', File.dirname(__FILE__))
    JSON::Validator.validate!(schema_file, nodelist_file)
  end
end
