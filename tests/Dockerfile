FROM archlinux:latest

RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm ansible python sudo

RUN useradd -m testuser && \
    echo "testuser ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER testuser
WORKDIR /home/testuser/dotfiles

COPY . .

CMD ["ansible-playbook", "-i", "inventory.yml", "tests/playbook.yml"]
