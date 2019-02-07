workflow "Dangerfile JS Eval" {
  on = "pull_request"
  resolves = "Danger JS"
}

action "Danger JS" {
  uses = "danger/danger-js@master"
  secrets = ["GITHUB_TOKEN"]
  args = "--dangerfile \"storybooks/storybook/.ci/danger/dangerfile.js\""
}