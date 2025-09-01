export PS1='\u@\h:\w\$ '
export EDITOR=vim

alias rr=". ~/.bashrc"

alias vibash="$EDITOR ~/.bashrc; rr"
alias vibashs="$EDITOR ~/.bashrc.sec; rr"

activate_venv() {
    _venv_name="$(basename $(pwd))"
    _venv_path="~/.virtualenvs/$_venv_name"
    if [ -e "$_venv_path" ]; then
        source "$_venv_path/bin/activate"
    else
        echo "venv doesn't exist: $_venv_path"
        return 1
    fi
}


alias k="kubectl"
alias ks="kubectl set"
alias ksn="kubectl set namespace"
alias ksc="kubectl config set-context"
alias kg="kubectl get"
alias kgp="kubectl get pods"
alias kgn="kubectl get namespaces"
alias kl="kubectl logs"
ksh() {
    kubectl exec -it $@ -- /bin/bash
}
alias kf="kubectl apply -f"
alias ku="kubectl apply -k"



test -e "~/.bashrc.sec" && . "~/.bashrc.sec"
