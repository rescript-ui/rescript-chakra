module.exports = {
  branches: [
    "+([0-9])?(.{+([0-9]),x}).x",
    "main",
    "next",
    "next-major",
    {
      name: "beta",
      prerelease: true,
    },
    {
      name: "alpha",
      prerelease: true,
    },
  ],
  plugins: [
    [
      "@semantic-release/commit-analyzer",
      {
        preset: "angular",
        presetConfig: {
          types: [
            { type: "refactor", section: "Code Improvements", hidden: false },
          ],
        },
        releaseRules: [
          { type: "docs", release: false },
          { type: "refactor", release: "patch" },
          { type: "chore", scope: "deps", release: "patch" },
        ],
        parserOpts: {
          noteKeywords: ["BREAKING CHANGE", "BREAKING CHANGES"],
        },
      },
    ],
    "@semantic-release/release-notes-generator",
    "@semantic-release/changelog",
    "@semrel-extra/npm",
    "@semantic-release/git",
    "@semantic-release/github",
  ],
};
