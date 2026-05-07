from os import environ as env
from json import loads
import socket

XDG_RUNTIME_DIR = env["XDG_RUNTIME_DIR"]
HIS = env["HYPRLAND_INSTANCE_SIGNATURE"]
SOCKET_DIR = f"{XDG_RUNTIME_DIR}/hypr/{HIS}"
Input = str | tuple | list | None


def command(cmd: str, args: Input = None, flags: Input = None) -> str:
    request = f"/{cmd}"
    if args and len(args) > 0:
        args = args if isinstance(args, str) else " ".join(map(str, args))
        request = f"{request} {args}"
    if flags and len(flags) > 0:
        flags = flags if isinstance(flags, str) else "".join(map(str, flags))
        request = f"[{flags}]{request}"
    socket_path = f"{SOCKET_DIR}/.socket.sock"
    client = socket.socket(socket.AF_UNIX)
    client.connect(socket_path)
    client.send(request.encode("utf-8"))
    response = b""
    while True:
        data = client.recv(4096)
        if not data:
            break
        response += data
    client.close()
    return response.decode("utf-8")


def dispatch(args) -> None:
    command("dispatch", args)


def clients() -> dict:
    return loads(command("clients", flags="j"))


def activeworkspace() -> dict:
    return loads(command("activeworkspace", flags="j"))


def movetoworkspace(ws, win: tuple | None = None) -> None:
    args = str(ws)
    if win is not None:
        args += f",{':'.join(win)}"
    dispatch(("movetoworkspace", args))
