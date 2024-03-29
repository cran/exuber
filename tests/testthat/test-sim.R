context("sim")

test_that("sim_evans", {
  expect_error(sim_evans(100), regexp = NA)
  expect_error(
    sim_evans(100, delta = 1.5),
    message("alpha and delta should satisfy: 0 < delta < (1+r)*alpha")
  )
})

test_that("sim_div", {
  expect_error(sim_div(100, log = T), regexp = NA)
  expect_error(sim_div(100, output = "d"), regexp = NA)
})

test_that("sim_psy1", {
  expect_error(
    sim_psy1(100, te = 120),
    message("Argument 'te' should be a be between '0' and '100' ")
  )
  expect_error(
    sim_psy1(100, tf = 120),
    message("Argument 'tf' should be a be between '0' and '100' ")
  )
})

test_that("sim_psy2", {
  expect_error(
    sim_psy2(100, te1 = 120),
    message("Argument 'te1' should be a be between '0' and '100' ")
  )
  expect_error(
    sim_psy2(100, tf1 = 120),
    message("Argument 'tf' should be a be between '0' and '100' ")
  )
  expect_error(
    sim_psy2(100, alpha = 1.1),
    message("Argument 'alpha' should be a be between '0' and '1' ")
  )
})

test_that("sim_ps1",{
  expect_error(
    sim_ps1(100),
    regexp = NA
  )
  expect_error(
    autoplot(sim_ps1(100)),
    regexp = NA
  )

})
