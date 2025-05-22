import flet as ft
from navigation import navigate
from home import HomeView


def main(page: ft.Page):
    page.title = "Clever-Together at HTL-Hollabrunn"

    def connect(e=None):
        print(f'page.connect called\n{len(page.views)}\n{page.views}')

    def close(e=None):
        print('On close event')

    def disconnect(e=None):
        print(f'Disconnect event {e}')

    def lc_state(e=None):
        print(f'Lifecycle State changed {e}')

    homeContainer = ft.Container(
        content=ft.Column(controls=[ft.Text('Loading...')])
    )

    def route_change(route):
        print('On Route change', route.route)
        try:
            navigate(route.route, page)
        except Exception as e:
            print(f'Route_change Exception {e}')

    def view_pop(view):
        page.views.pop()
        top_view = page.views[-1]
        page.go(top_view.route)

    # page.home_view = HomeView()
    # page.views.append(page.home_view)
    page.theme_mode = ft.ThemeMode.DARK
    page.auto_scroll = True
    page.on_route_change = route_change
    page.on_view_pop = view_pop
    page.on_connect = connect
    page.on_close = close
    page.on_disconnect = disconnect
    page.on_app_lifecycle_state_change = lc_state
    page.go('/')
    page.update()


ft.app(main, assets_dir="assets")
