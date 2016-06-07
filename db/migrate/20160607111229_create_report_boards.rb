class CreateReportBoards < ActiveRecord::Migration
  def change
    create_table :report_boards do |t|
      t.string :reported_id,           null: false, defalut: ""
      t.string :report_id,             null: false, default: ""
      t.string :report_content,        null: false, default: ""

      t.timestamps null: false
    end
  end
end
