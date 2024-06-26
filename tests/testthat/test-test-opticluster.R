test_that("Clustering returns proper results", {
  expected_df <- readRDS(test_path("extdata","df_test_file.RDS"))
  matrix <- readRDS(test_path("extdata","matrix_data.RDS"))
  df <- Opticluster::opti_cluster(matrix, 0.2, 2, FALSE)
  df$cluster$exists <- do.call(paste0, df$cluster) %in% do.call(paste0, expected_df)
  expect_equal(class(df$cluster), "data.frame")
  expect_equal(class(df$cluster_metrics), "data.frame")
  expect_equal(class(df$other_cluster_metrics), "data.frame")
  expect_true(all(df$exists == TRUE))
})
