from talon import Context, Module, actions

mod = Module()

@mod.action_class
class UserActions:
    def git_push_this_branch():
        """Copy current git branch name to clipboard, then push origin <branch>."""

    def git_pull_this_branch():
        """Copy current git branch name to clipboard, then pull origin <branch>."""

    def git_copy_branch_name():
        """Copy current git branch name to clipboard."""

    def git_copy_branch_hash():
        """Copy current git short hash to clipboard."""


def _run(cmd: str):
    """Type a command and press enter."""
    actions.insert(cmd)
    actions.key("enter")


def _copy_to_clipboard_via_shell(expr: str, sink: str):
    """
    Runs a git expression and pipes it to an OS-specific clipboard sink.
    expr example: 'git rev-parse --abbrev-ref HEAD'
    sink example: 'pbcopy' or 'scb'
    """
    _run(f"{expr} | {sink}")
    actions.sleep("200ms")


# -------------------------
# Windows implementation
# -------------------------
ctx_win = Context()
ctx_win.matches = "os: windows"

@ctx_win.action_class("user")
class Win:
    def git_push_this_branch():
        _copy_to_clipboard_via_shell("git rev-parse --abbrev-ref HEAD", "scb")
        _run("git push origin ")
        actions.edit.paste()
        actions.key("enter")

    def git_pull_this_branch():
        _copy_to_clipboard_via_shell("git rev-parse --abbrev-ref HEAD", "scb")
        _run("git pull origin ")
        actions.edit.paste()
        actions.key("enter")

    def git_copy_branch_name():
        _copy_to_clipboard_via_shell("git rev-parse --abbrev-ref HEAD", "scb")

    def git_copy_branch_hash():
        _copy_to_clipboard_via_shell("git rev-parse --short HEAD", "scb")


# -------------------------
# macOS implementation
# -------------------------
ctx_mac = Context()
ctx_mac.matches = "os: mac"

@ctx_mac.action_class("user")
class Mac:
    def git_push_this_branch():
        _copy_to_clipboard_via_shell("git rev-parse --abbrev-ref HEAD", "pbcopy")
        _run("git push origin ")
        actions.edit.paste()
        actions.key("enter")

    def git_pull_this_branch():
        _copy_to_clipboard_via_shell("git rev-parse --abbrev-ref HEAD", "pbcopy")
        _run("git pull origin ")
        actions.edit.paste()
        actions.key("enter")

    def git_copy_branch_name():
        _copy_to_clipboard_via_shell("git rev-parse --abbrev-ref HEAD", "pbcopy")

    def git_copy_branch_hash():
        _copy_to_clipboard_via_shell("git rev-parse --short HEAD", "pbcopy")