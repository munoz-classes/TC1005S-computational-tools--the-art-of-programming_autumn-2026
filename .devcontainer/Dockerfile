FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Instalación de dependencias para los retos de lunes a viernes
RUN apt-get update && apt-get install -y \
    sudo \
    git \
    nano \
    tree \
    # Para el Lunes (Escape Room y Compilación):
    gcc \
    build-essential \
    # Para utilidades de manipulación de archivos y descargas:
    curl \
    wget \
    # Para manipular el estado_mision.json y diagram.json en Bash:
    jq \
    && rm -rf /var/lib/apt/lists/*

# Configuración del usuario 'estudiante' con permisos para sudo sin contraseña
ARG USERNAME=estudiante
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME -s /bin/bash \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

USER $USERNAME