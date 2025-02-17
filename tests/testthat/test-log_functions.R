test_that("parse_log_filename works correctly", {
  result <- parse_log_filename("../../shinyproxy/shinyproxy/container-logs/logs/crash_simulator_43c8bf13-051f-4fe9-8362-a6b83016a218_05_Feb_2025_18_30_53_stderr.log")
  expect_equal(result$specId, "crash_simulator")
  expect_equal(result$logType, "stderr")
})
