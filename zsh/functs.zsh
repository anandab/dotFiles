# Task timer
tp () {
  text=$1

  _timer() {
    counter=0
    while [ $counter != $1 ]; do
      echo "  ... $counter minutes";
      sleep 60
      let "counter = $counter+1"
    done
  }

  case "$1" in
    # Pomodoro task
    p)
      workTime=25
      breakTime=5

      # Work time
      echo "Pomodoro Task: $text"
      echo "  Work time - $workTime minutes"
      _timer $workTime
      say "done done done"

      # Break time
      echo "  Break time - $breakTime minutes"
      _timer $breakTime
      say "done done done"
      ;;
    # Normal task
    *)
      echo "Task: $text - $1 minutes"
      _timer $1
      say "done done done"
      ;;
  esac
}

#commandline dictionary
dict(){
  if [[ $# -ge 2 ]] then
    echo "getdef: too many arguments" >&2
    return 1
  else
    curl "dict://dict.org/d:$1"
  fi
}

f(){
  find . -name "$1"
}

server() {
  php -S 127.0.0.1:$1
}

# cat with beautiful color
# sudo easy_install Pygments
c() {
  pygmentize -O style=monokai -f console256 -g $1
}

gexport(){
  mkdir -p "$1"
  git archive master | tar -x -C "$1"
}
