function A=inicia_matriz(n,m),
// A=inicia_matriz(n,m)
// inicializa uma matriz de n linhas e m colunas.
linha = "linha"+string(1:n);
coluna = "coluna"+string(1:m);
label = "Entre com uma matriz "+string(n) +"por" + string(m);
A=evstr(x_mdialog(label, linha, coluna,string(ones(n,m))));
endfunction
