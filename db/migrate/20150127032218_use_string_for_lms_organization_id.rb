class UseStringForLmsOrganizationId < ActiveRecord::Migration
  def change
    change_column :organization_meta, :lms_organization_id, :string
    change_column :document_meta, :lms_organization_id, :string
    change_column :document_meta, :lms_course_id, :string
  end
end
