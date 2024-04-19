# README

## Initial launch

1. Add executable permissions for `dockerCommands.sh`

```sh
chmod u+x dockerCommands.sh
```

2. Build image & run container

```sh
./dockerCommands.sh build
```

## Docker commands

Use script `dockerCommands.sh`:

- `build` - build image & run container
- `stop` - stop container
- `start` - start container

Example: `./dockerCommands.sh start`

## Environment variables

All variables are set in `.env` file.
