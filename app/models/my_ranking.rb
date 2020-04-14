class MyRanking < ApplicationRecord
  include RankedModel
  ranks :row_order
end
