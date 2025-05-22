import flet as ft


class HomeView(ft.View):
    def __init__(self):
        super().__init__()
        self.controls.append(ft.Text('Home View'))

    def did_mount(self):
        self.update()

    def will_unmount(self):
        print('Will unmount')
