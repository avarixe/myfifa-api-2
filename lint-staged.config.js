module.exports = {
  '**/*.ts': () => 'npx tsc -p tsconfig.json --noEmit',
  '**/*.{js,ts}': ['eslint', 'prettier --check']
}
