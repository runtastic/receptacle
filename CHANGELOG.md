# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Changed
* support passing blocks to strategy methods


## [2.0.0] - 2023-01-17
### Changed
* switch CI to github actions
* remove danger
* remove codecov
* Support for ruby 3
* The wrapper interface has been redesigned (breaking change, see [upgrade notes](./upgrade_notes.md))


## [1.0.0]
### Changed
* repackage 0.3.1 as 1.0.0
* setup circleci
* drop ruby < 2.4


## [0.3.1]
### Fixed
* fix after wrapper ordering bug [PR#6](https://github.com/andreaseger/receptacle/pull/6)

## [0.3.0}
### Added
* add danger
* also support higher arity methods (== method with more than one argument)

## [0.2.0]
### Changed
* update documentation
* enable ruby 2.1+

## [0.1.1]
## Added
* add changelog, update copyright
* add test helper method `ensure_method_delegators` to make rspec stubs/mocks work as expected

## [0.1.0]
## Added
* initial release
