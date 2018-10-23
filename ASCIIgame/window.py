from batch import batch
from obj import obj
from player import player
from tile import Tile

class window:
    def __init__(self, width, height, libtcod):
        self.width = width
        self.height = height
        self.libtcod = libtcod
        libtcod.console_set_custom_font('arial10x10.png', libtcod.FONT_TYPE_GREYSCALE | libtcod.FONT_LAYOUT_TCOD)
        libtcod.console_init_root(self.width, self.height, 'Hello World', False)
        self.con = libtcod.console_new(self.width, self.height)
        self.batch = batch(self.con, libtcod)
        self.loadcontent()

    def loadcontent(self):
        self.map = [[ Tile(False)
        for y in range(self.height) ]
            for x in range(self.width) ]

        #place two pillars to test the map
        self.map[32][24].block_sight = True
        self.map[49][22].block_sight = True
        for y in range(self.height):
            for x in range(self.width):
                wall = self.map[x][y].block_sight
                if wall:
                    self.libtcod.console_set_char_background(self.con, x, y, self.libtcod.Color(0, 0, 100), self.libtcod.BKGND_SET )
                else:
                    self.libtcod.console_set_char_background(self.con, x, y, self.libtcod.Color(50, 50, 150), self.libtcod.BKGND_SET )
        objs = []
        self.char = player(self.width / 2, self.height / 2, '@', self.libtcod.amber)
        objs.append(self.char)
        for objd in objs:
            self.batch.add(objd)

    def changeFont(self, path):
        self.libtcod.console_set_custom_font(path, self.libtcod.FONT_TYPE_GREYSCALE | self.libtcod.FONT_LAYOUT_TCOD)

    def handle_keys(self, map):
        key = self.libtcod.console_wait_for_keypress(True)  #turn-based
        loc = self.char.location()
        if self.libtcod.console_is_key_pressed(self.libtcod.KEY_UP):
            if map[loc[0]][loc[1]-1].block_sight == False:
                self.char.handle_keys(0, -1)

        elif self.libtcod.console_is_key_pressed(self.libtcod.KEY_DOWN):
            if map[loc[0]][loc[1]+1].block_sight == False:
                self.char.handle_keys(0, 1)

        elif self.libtcod.console_is_key_pressed(self.libtcod.KEY_LEFT):
            if map[loc[0]-1][loc[1]].block_sight == False:
                self.char.handle_keys(-1, 0)

        elif self.libtcod.console_is_key_pressed(self.libtcod.KEY_RIGHT):
            if map[loc[0]+1][loc[1]].block_sight == False:
                self.char.handle_keys(1, 0)
        
        if key.vk == self.libtcod.KEY_ESCAPE:
            return True  #exit game

    def update(self):
        pass

    def draw(self):
        while not self.libtcod.console_is_window_closed():
            self.update()
            self.batch.draw()
            self.libtcod.console_blit(self.con, 0, 0, self.width, self.height, 0, 0, 0)
            self.libtcod.console_flush()
            self.batch.clear()
            exit = self.handle_keys(self.map)
            if exit:
                break