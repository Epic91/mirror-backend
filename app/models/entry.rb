class Entry < ApplicationRecord
    belongs_to :user
    belongs_to :emotion
    belongs_to :topic
    belongs_to :highlight
    belongs_to :prompt
end
