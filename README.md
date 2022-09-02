# Sitec2022-django


## Guía de uso

```bash
git clone git@github.com:mariocabral/Sitec2022-django.git
cd Sitec2022-django
docker compose up
```

Una vez iniciado acceder a [http://localhost:8000/](http://localhost:8000/)

## Guía para agregar clave ssh

Crear la clave con tu email

```
ssh-keygen -t ed25519 -C "your_email@example.com"
```

agregar la clave al agente ssh

```
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
```

Copiar la clave pública

```
cat ~/.ssh/id_ed25519.pub
  # Then select and copy the contents of the id_ed25519.pub file
  # displayed in the terminal to your clipboard
```

seguir la guía [para agregar la clave a la cuenta github](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account) 

## Guía de instalación docker en Ubuntu

Desinstalar la versiones previas

```
sudo apt-get remove docker docker-engine docker.io containerd runc
```

Instalar certificados

```
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg lsb-release
```

Agregar clave 

```
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
```

Agregar el source

```
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

instalar docker

```
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
```

probar instalación

```
sudo docker run hello-world
```

Configurar usuario para no ejecutar docker con sudo

```
sudo groupadd docker
sudo usermod -aG docker $USER
```

:warning: Reiniciar y validar uso de docker con el usuario

```
docker run hello-world
```



## Referencias

- Guía para crear el proyecto: https://docs.docker.com/samples/django/
