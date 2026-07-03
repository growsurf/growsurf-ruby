# Changelog

## [1.0.0](https://github.com/growsurf/growsurf-ruby/compare/v0.8.0...v1.0.0) (2026-07-03)


### ⚠ BREAKING CHANGES

* campaign create no longer accepts `options`, and campaign update no longer accepts the design / emails / options / notifications / installation config blobs — edit those via the new config sub-resources. Reward-config CRUD moved from /campaign/{id}/rewards to /campaign/{id}/reward-configs[/{campaignRewardId}].

### Features

* add campaign management endpoints; drop deprecated create/update config blobs ([c67a800](https://github.com/growsurf/growsurf-ruby/commit/c67a800670fe56394960e944f301ec068aeb50a9))

## [0.8.0](https://github.com/growsurf/growsurf-ruby/compare/v0.7.0...v0.8.0) (2026-07-01)


### Features

* **api:** add campaign create/update/clone and program-reward CRUD ([aa8d3dd](https://github.com/growsurf/growsurf-ruby/commit/aa8d3ddbf167f26d0807ba58fce2071517afb318))

## 0.7.0 (2026-06-29)

Full Changelog: [v0.6.1...v0.7.0](https://github.com/growsurf/growsurf-ruby/compare/v0.6.1...v0.7.0)

### Features

* **api:** support delayed referral rewards and affiliate refunds ([d707d44](https://github.com/growsurf/growsurf-ruby/commit/d707d443a5806f3e117532d4032386390e2654a5))

## 0.6.1 (2026-06-26)

Full Changelog: [v0.6.0...v0.6.1](https://github.com/growsurf/growsurf-ruby/compare/v0.6.0...v0.6.1)

## 0.6.0 (2026-06-23)

Full Changelog: [v0.5.0...v0.6.0](https://github.com/growsurf/growsurf-ruby/compare/v0.5.0...v0.6.0)

### Features

* **api:** add payoutSettings to Participant ([06cc7ba](https://github.com/growsurf/growsurf-ruby/commit/06cc7baef48c17162488b5f102cdf02f33573e7a))
* **api:** manual updates ([f004f12](https://github.com/growsurf/growsurf-ruby/commit/f004f12b834d5f569f9768415c4929a899ddb514))


### Bug Fixes

* **client:** send content-type header for requests with an omitted optional body ([0240e48](https://github.com/growsurf/growsurf-ruby/commit/0240e480262947dcb8f679ad59e9f91003330af2))

## 0.5.0 (2026-05-25)

Full Changelog: [v0.4.0...v0.5.0](https://github.com/growsurf/growsurf-ruby/compare/v0.4.0...v0.5.0)

### Features

* **api:** manual updates ([e9e3916](https://github.com/growsurf/growsurf-ruby/commit/e9e3916ed07e217dbad3bcea88a7979226927915))

## 0.4.0 (2026-05-20)

Full Changelog: [v0.3.0...v0.4.0](https://github.com/growsurf/growsurf-ruby/compare/v0.3.0...v0.4.0)

### Features

* **api:** Add Participant.mobileInstanceId ([c5ca7c3](https://github.com/growsurf/growsurf-ruby/commit/c5ca7c3334d28caf6d28afa9baf71cd9cfbfee11))

## 0.3.0 (2026-05-19)

Full Changelog: [v0.2.0...v0.3.0](https://github.com/growsurf/growsurf-ruby/compare/v0.2.0...v0.3.0)

### Features

* **api:** manual updates ([929f439](https://github.com/growsurf/growsurf-ruby/commit/929f4399c265598db298eb96f5ff4ac2db6b12e8))

## 0.2.0 (2026-05-15)

Full Changelog: [v0.1.1...v0.2.0](https://github.com/growsurf/growsurf-ruby/compare/v0.1.1...v0.2.0)

### Features

* **api:** manual updates ([bc04ef1](https://github.com/growsurf/growsurf-ruby/commit/bc04ef142661cac35875e2d602c556d7a88c8298))


### Bug Fixes

* **client:** elide content type header on requests without body ([b97e5fd](https://github.com/growsurf/growsurf-ruby/commit/b97e5fd6e4e4874cb9aeaa03eec2fd99d9325107))

## 0.1.1 (2026-05-13)

Full Changelog: [v0.1.0...v0.1.1](https://github.com/growsurf/growsurf-ruby/compare/v0.1.0...v0.1.1)

## 0.1.0 (2026-05-12)

Full Changelog: [v0.0.2...v0.1.0](https://github.com/growsurf/growsurf-ruby/compare/v0.0.2...v0.1.0)

### Features

* **api:** manual updates ([a827e1f](https://github.com/growsurf/growsurf-ruby/commit/a827e1f31b9e1b06212e33c9ba6ae095582b4f8b))

## 0.0.2 (2026-05-08)

Full Changelog: [v0.0.1...v0.0.2](https://github.com/growsurf/growsurf-ruby/compare/v0.0.1...v0.0.2)

### Chores

* configure new SDK language ([5163f29](https://github.com/growsurf/growsurf-ruby/commit/5163f296a40308d5bbd0b5f360cb6a6e9fa32907))
* update SDK settings ([5f79906](https://github.com/growsurf/growsurf-ruby/commit/5f79906ee61de74470b13d02ada4432c2b9a70a0))
* update SDK settings ([1f73e23](https://github.com/growsurf/growsurf-ruby/commit/1f73e237e679c13b8dca96022bf66ef348f2d43c))
