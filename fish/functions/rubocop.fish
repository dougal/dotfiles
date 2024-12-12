# Only run Rubocop on changed files
function rcc
	git fetch
	git diff -r --no-commit-id --name-only main@\{u\} HEAD | xargs ls -1 2>/dev/null | xargs rubocop --force-exclusion
end
