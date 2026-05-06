defmodule NexusMoveTablebaseScope.DomainReviewTest do
  use ExUnit.Case

  test "domain review lane" do
    item = %{signal: 67, slack: 36, drag: 8, confidence: 70}
    assert NexusMoveTablebaseScope.DomainReview.score(item) == 216
    assert NexusMoveTablebaseScope.DomainReview.lane(item) == "ship"
  end
end
