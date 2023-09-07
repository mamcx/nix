{ pkgs }:

{
  git = {
    ci = "commit -m";
    pr = "pull --rebase";
    st = "status";
    l =
      "log --graph --pretty='%Cred%h%Creset - %C(bold blue)<%an>%Creset %s%C(yellow)%d%Creset %Cgreen(%cr)' --abbrev-commit --date=relative";
  };

  shell = {
    # General
    diff = "diff --color=auto";
    grep = "grep --color=auto";
    szsh = "source ~/.zshrc";

    ".." = "cd ..";
    "..." = "cd ../..";
    godownload="cd ~/Downloads/";
    gostore="cd ~/Proyectos/RustStore/";
    gocobros="cd ~/Proyectos/Cobros";
    gotablam="cd ~/Proyectos/tablaM";
    push="git push";
    fetch="git pull";
    ci="git commit -a -m";
    st="git status";
    rundjango="python manage.py runserver 0.0.0.0:8000";
    runstore="cd ~/Proyectos/RustStore/server/ && watchexec --debounce 2000 -e rs,html,js,css -r  -w ../ -- cargo run --bin server";
    gospace="cd ~/Proyectos/space/SpacetimeDB/";
    spacetime= "/Users/mamcx/.cargo/bin/spacetime";
  };
}
