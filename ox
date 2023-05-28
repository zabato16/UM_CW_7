# Tic Tac Toe

# Tworzenie planszy
board = [' ' for _ in range(9)]

def print_board():
    print('   |   |')
    print(' ' + board[0] + ' | ' + board[1] + ' | ' + board[2])
    print('   |   |')
    print('-----------')
    print('   |   |')
    print(' ' + board[3] + ' | ' + board[4] + ' | ' + board[5])
    print('   |   |')
    print('-----------')
    print('   |   |')
    print(' ' + board[6] + ' | ' + board[7] + ' | ' + board[8])
    print('   |   |')

def is_winner(board, player):
    # Sprawdzanie zwycięstwa dla danego gracza
    return (
        (board[0] == player and board[1] == player and board[2] == player) or
        (board[3] == player and board[4] == player and board[5] == player) or
        (board[6] == player and board[7] == player and board[8] == player) or
        (board[0] == player and board[3] == player and board[6] == player) or
        (board[1] == player and board[4] == player and board[7] == player) or
        (board[2] == player and board[5] == player and board[8] == player) or
        (board[0] == player and board[4] == player and board[8] == player) or
        (board[2] == player and board[4] == player and board[6] == player)
    )

def is_board_full(board):
    # Sprawdzanie, czy plansza jest pełna
    return ' ' not in board

def play_game():
    print("Witaj w grze Kółko i krzyżyk!")
    print_board()
    current_player = 'X'

    while not is_board_full(board):
        move = input("Gracz " + current_player + ", podaj numer pola (0-8): ")

        if board[int(move)] == ' ':
            board[int(move)] = current_player
            print_board()

            if is_winner(board, current_player):
                print("Gracz " + current_player + " wygrał!")
                return

            current_player = 'O' if current_player == 'X' else 'X'
        else:
            print("To pole jest już zajęte. Podaj inne pole.")

    print("Remis!")

play_game()
