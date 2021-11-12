function [mmr, mmm] = minimax(A)
mmr = max(A') - min(A');
mmm = max(max(A)) - min(min(A));
    