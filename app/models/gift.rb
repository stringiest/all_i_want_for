# frozen_string_literal: true

class Gift < ApplicationRecord
  belongs_to :user
  belongs_to :list
end
