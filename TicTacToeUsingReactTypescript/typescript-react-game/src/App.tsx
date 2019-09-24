import React, { Component } from 'react';
import './App.css';

type ONGONING_GAME = -1;
const ONGONING_GAME = -1;

enum Player {
  None = 0,
  One = 1,
  Two = 2
}

interface IState {
  board: Player[];
  nextPlayer: Player;
  gameIsWon: Player | ONGONING_GAME
}

class App extends Component<{}, IState> {

  state = {
    board: [Player.None, Player.None, Player.None, Player.None, Player.None, Player.None, Player.None, Player.None, Player.None],
    nextPlayer: Player.One,
    gameIsWon: ONGONING_GAME
  }

  checkIfGameIsOver = (board: Player[]) => {
    //横
    if (board[0] === board[1] && board[1] === board[2] && board[2] !== Player.None) {
      return board[0];
    } else if (board[3] === board[4] && board[4] === board[5] && board[5] !== Player.None) {
      return board[3];
    } else if (board[6] === board[7] && board[7] === board[8] && board[8] !== Player.None) {
      return board[6];
      //竖
    } else if (board[0] === board[3] && board[3] === board[6] && board[6] !== Player.None) {
      return board[0];
    } else if (board[1] === board[4] && board[4] === board[7] && board[7] !== Player.None) {
      return board[1];
    } else if (board[2] === board[5] && board[5] === board[8] && board[8] !== Player.None) {
      return board[2];
      //斜
    } else if (board[0] === board[4] && board[4] === board[8] && board[8] !== Player.None) {
      return board[0];
    } else if (board[2] === board[4] && board[4] === board[6] && board[6] !== Player.None) {
      return board[2];
    }

    for (const player of board) {
      if (player === Player.None) {
        return ONGONING_GAME;
      }
    }

    return Player.None;
  }

  handleCellClick = (index: number) => {
    const { board, nextPlayer, gameIsWon } = this.state;

    if (gameIsWon !== ONGONING_GAME || board[index] !== Player.None) {
      return
    }

    let newBoard = board.slice();
    newBoard[index] = nextPlayer;

    let newgameIsWon = this.checkIfGameIsOver(newBoard);

    this.setState({
      board: newBoard,
      nextPlayer: 3 - nextPlayer,
      gameIsWon: newgameIsWon
    })
  }

  renderCell = (index: number) => {
    const { board } = this.state;
    return (
      <div className="cell" data-player={board[index]} key={index} onClick={() => this.handleCellClick(index)}></div>
    )
  }

  renderBoard = () => {
    const { board } = this.state;
    return (
      <div className="board-container">
        {board.map((value, key) => this.renderCell(key))}
      </div>
    )
  }

  renderStatus = () => {
    const { gameIsWon } = this.state;
    const winnngText = gameIsWon !== Player.None ? `Player ${gameIsWon} won` : `The game is draw`
    return (
      <div style={{ marginTop: "50px" }}>
        {"Player 1 is Red"}<br />
        {"Player 2 is Green"}<br />
        {gameIsWon === ONGONING_GAME ? 'Game is ongoing' : winnngText}
      </div>
    )
  }

  render() {
    return (
      <div className="App">
        {this.renderBoard()}
        {this.renderStatus()}
      </div>
    );
  }
}

export default App;
