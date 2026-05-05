defmodule NexusMoveTablebaseScopeTest do
  use ExUnit.Case

  test "fixture decisions" do
    signal_case_1 = %{demand: 91, capacity: 82, latency: 25, risk: 10, weight: 9}
    assert NexusMoveTablebaseScope.score(signal_case_1) == 157
    assert NexusMoveTablebaseScope.classify(signal_case_1) == "review"
    signal_case_2 = %{demand: 77, capacity: 98, latency: 18, risk: 15, weight: 13}
    assert NexusMoveTablebaseScope.score(signal_case_2) == 149
    assert NexusMoveTablebaseScope.classify(signal_case_2) == "review"
    signal_case_3 = %{demand: 71, capacity: 85, latency: 18, risk: 19, weight: 7}
    assert NexusMoveTablebaseScope.score(signal_case_3) == 92
    assert NexusMoveTablebaseScope.classify(signal_case_3) == "review"
  end
end
