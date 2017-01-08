class Zgloszenie < ApplicationRecord
  belongs_to :dzial
  has_many :zgloszenie_aktywnosc
  belongs_to :user
  enum status: [ :started, :inprogress, :finished ]

  def self.statuses_for_select
  	statuses.map do |status, _|
      [I18n.t("activerecord.attributes.#{model_name.i18n_key}.statuses.#{status}"),
      status]
    end
  end


  def init
  	self.status = :started
  end
end
class Resource < ActiveRecord::Base
  attr_accessor :custom_field
end
