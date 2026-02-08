# Contributing to Terraform Provider Pangolin

Thank you for your interest in contributing to the Pangolin Terraform provider!

## Development Requirements

- [Go](https://golang.org/doc/install) >= 1.24
- [Terraform](https://www.terraform.io/downloads.html) >= 1.0
- [Docker](https://www.docker.com/get-started) (for integration tests)

## Building the Provider

To compile the provider locally:

```bash
go build -o terraform-provider-pangolin
```

## Testing

This provider uses a real Pangolin instance for acceptance testing.

### 1. Setup the Test Environment

Start the Pangolin Docker stack:

```bash
make test-env-up
```

Access the UI at [http://localhost:3002](http://localhost:3002) and perform the initial setup. You will need to:
1. Create an admin account.
2. Create an organization (e.g., `test-tf`).
3. Create an API Key.

Once done, snapshot the database to preserve the state:

```bash
make test-save-gold
```

### 2. Run Acceptance Tests

The tests will automatically reset the database to your snapshot before each run.

```bash
make test-acc
```

## Documentation

Documentation is generated from code and templates using `tfplugindocs`.

To update the documentation:

```bash
make docs
```

## Pull Request Process

1. Ensure all tests pass.
2. Run `go mod tidy` to clean up dependencies.
3. Update `CHANGELOG.md` with your changes.
4. Submit your PR for review.
