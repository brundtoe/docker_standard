# Build image

docker build -t node:bbr .

## docker run node virker ikke

```
   docker run --name test node:bbr

```

kan ikke køre selvstændigt, da imaget entrypoint vil forsøge at køre node med de parametre der er angivet på commandline. Working dir er /usr/src/app og et script skal være linket til denne mappe for at node kan køre.

