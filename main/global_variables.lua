local M = {}

M.turn = 0
M.blue_score = 0
M.red_score = 0
M.winner = -1

function M.change_turn()
  M.turn = (M.turn + 1) % 2
end

function M.reset_game()
  M.blue_score = 0
  M.red_score = 0
  M.winner = -1
  M.turn = 0
end

return M
