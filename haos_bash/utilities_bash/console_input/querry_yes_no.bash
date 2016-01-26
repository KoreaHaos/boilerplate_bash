function ask_yes_no() {
  
  if [ -z "$2" ]; then
    echo -n "Do you agree? [yes or no] : ";
  else
    echo -n $2 "[yes or no] : ";
  fi
  
  read yno
  
  case $yno in
    [yY] | [yY][Ee][Ss] )
      eval "$1='TRUE'";
    ;;
    
    [nN] | [nN][Oo] )
      eval "$1='FALSE'";
    ;;
    *) eval "$1='ERROR'";
    ;;
  esac
}