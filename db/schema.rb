
ActiveRecord::Schema.define(version: 2021_08_17_112026) do

  enable_extension "plpgsql"

  create_table "publications", force: :cascade do |t|
    t.text "content"
  end

end
