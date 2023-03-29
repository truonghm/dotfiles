# Display time
SPACESHIP_TIME_SHOW=true
# Display username always
SPACESHIP_USER_SHOW=false

# Do not truncate path in repos
SPACESHIP_DIR_TRUNC_REPO=false
SPACESHIP_CONDA_PREFIX="["
SPACESHIP_CONDA_SUFFIX="] "
SPACESHIP_CONDA_SYMBOL=""
SPACESHIP_DIR_PREFIX="["
SPACESHIP_DIR_SUFFIX="] "
SPACESHIP_AWS_SHOW=true
SPACESHIP_BATTERY_SHOW=true
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_DOCKER_COMPOSE_SHOW=false
SPACESHIP_EXEC_TIME_SHOW=true
SPACESHIP_GIT_SHOW=true
SPACESHIP_GIT_PREFIX="["
SPACESHIP_GIT_SUFFIX="] "
SPACESHIP_GIT_STATUS_PREFIX="\s{"
SPACESHIP_GIT_STATUS_SUFFIX="}"
SPACESHIP_GCLOUD_SHOW=false
SPACESHIP_PYTHON_SHOW=false
SPACESHIP_VENV_PREFIX="["
SPACESHIP_VENV_SUFFIX="] "
SPACESHIP_VENV_SYMBOL=""
SPACESHIP_PROMPT_ORDER=(
  time           # Time stamps section
  user           # Username section
  conda          # Conda virtualenv section
  venv           # Venv/Poetry virtualenv section
  dir            # Current directory section
  host           # Hostname section
  git            # Git section (git_branch + git_status)
  hg             # Mercurial section (hg_branch  + hg_status)
  package        # Package version
  node           # Node.js section
  bun            # Bun section
  deno           # Deno section
  ruby           # Ruby section
  python         # Python section
  elm            # Elm section
  elixir         # Elixir section
  xcode          # Xcode section
  swift          # Swift section
  golang         # Go section
  perl           # Perl section
  php            # PHP section
  rust           # Rust section
  haskell        # Haskell Stack section
  scala          # Scala section
  kotlin         # Kotlin section
  java           # Java section
  lua            # Lua section
  dart           # Dart section
  julia          # Julia section
  crystal        # Crystal section
  docker         # Docker section
  docker_compose # Docker section
  aws            # Amazon Web Services section
  gcloud         # Google Cloud Platform section
  azure          # Azure section
  dotnet         # .NET section
  ocaml          # OCaml section
  vlang          # V section
  zig            # Zig section
  purescript     # PureScript section
  erlang         # Erlang section
  kubectl        # Kubectl context section
  ansible        # Ansible section
  terraform      # Terraform workspace section
  pulumi         # Pulumi stack section
  ibmcloud       # IBM Cloud section
  nix_shell      # Nix shell
  gnu_screen     # GNU Screen section
  exec_time      # Execution time
  async          # Async jobs indicator
  line_sep       # Line break
  battery        # Battery level and status
  jobs           # Background jobs indicator
  exit_code      # Exit code section
  sudo           # Sudo indicator
  char           # Prompt character
)
