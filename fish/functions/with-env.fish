#Used when running a app that requires environment variables that is set in a .env file
function with-env
  set file .env
  export (cat $file | xargs -L 1) $argv
end

