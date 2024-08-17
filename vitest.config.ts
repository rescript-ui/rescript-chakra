import { defaultExclude, defineConfig } from 'vitest/config'

import { readFileSync } from 'fs'

const gitignore = readFileSync('.gitignore', 'utf8').split('\n').filter(s => s.length > 0 && !s.startsWith('#'))

export default defineConfig({
  test: {
    include: ['./__tests__/*.js'],
    exclude: defaultExclude.concat(gitignore),
  },
});
