from talon import Context, Module, actions

mod = Module()

# Declare only the actions YOU are adding (names + docstrings)
@mod.action_class
class UserActions:
    def select_all():
        """Select all in the current app."""

    def select_all_then_paste():
        """Select all, then paste."""

    def select_all_then_copy():
        """Select all, then copy."""

    def undo():
        """Undo."""

    def app_switcher():
        """Switch apps (Cmd-Tab / Alt-Tab)."""

    def window_cycle():
        """Cycle windows within the current app (Cmd-` / Alt-`)."""

    def mush():
        """Hold primary modifier, click, then release; then close grid."""


# -------------------------
# Windows implementation
# -------------------------
ctx_win = Context()
ctx_win.matches = "os: windows"

@ctx_win.action_class("user")
class Win:
    def select_all():
        actions.key("ctrl-a")

    def select_all_then_paste():
        actions.key("ctrl-a")
        actions.key("ctrl-v")

    def select_all_then_copy():
        actions.key("ctrl-a")
        actions.key("ctrl-c")

    def undo():
        actions.key("ctrl-z")

    def app_switcher():
        actions.key("alt-tab")

    def window_cycle():
        # Common default on Windows is Alt+Esc / Alt+Tab / Ctrl+Tab depending on what you mean.
        # This matches your earlier idea of cycling similar to Cmd+`.
        actions.key("alt-`")

    def mush():
        actions.key("ctrl:down")
        actions.mouse_click(0)
        actions.key("ctrl:up")
        actions.user.grid_close()


# -------------------------
# macOS implementation
# -------------------------
ctx_mac = Context()
ctx_mac.matches = "os: mac"

@ctx_mac.action_class("user")
class Mac:
    def select_all():
        actions.key("cmd-a")

    def select_all_then_paste():
        actions.key("cmd-a")
        actions.key("cmd-v")

    def select_all_then_copy():
        actions.key("cmd-a")
        actions.key("cmd-c")

    def undo():
        actions.key("cmd-z")

    def app_switcher():
        actions.key("cmd-tab")

    def window_cycle():
        actions.key("cmd-`")  # backtick

    def mush():
        actions.key("cmd:down")
        actions.mouse_click(0)
        actions.key("cmd:up")
        actions.user.grid_close()