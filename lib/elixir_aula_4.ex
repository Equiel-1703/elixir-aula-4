defmodule Aula4 do
  def soma_lista([]) do
    0
  end

  def soma_lista([head | tail]) do
    head + soma_lista(tail)
  end

  def quadrado_lista([]) do
    []
  end

  def quadrado_lista([head | tail]) do
    [head * head | quadrado_lista(tail)]
  end

  def mult_dois_lista([]), do: []

  def mult_dois_lista([h | t]) do
    if is_list(h) do
      [mult_dois_lista(h) | mult_dois_lista(t)]
    else
      [2 * h | mult_dois_lista(t)]
    end
  end

  def tamanho([]), do: 0

  def tamanho([_ | t]) do
    tamanho(t) + 1
  end

  def produto_lista([]), do: raise("Argumento inválido: Forneça uma lista de inteiros!")

  def produto_lista([h | []]) do
    if is_integer(h) do
      h
    else
      raise("Argumento inválido: Você deve fornecer uma lista de inteiros para essa função.")
    end
  end

  def produto_lista([h | t]) do
    if is_integer(h) do
      h * produto_lista(t)
    else
      raise("Argumento inválido: Você deve fornecer uma lista de inteiros para essa função.")
    end
  end

  def and_lista([]), do: true

  def and_lista([h | t]) do
    h && and_lista(t)
  end

  def insere_final(el, []) do
    [el]
  end

  def insere_final(el, list) do
    if is_list(list) do
      list ++ [el]
    else
      raise("Argumento inválido: Você deve fornecer uma lista para concatenar um elemento!")
    end
  end

  def neg_lista([]), do: []

  def neg_lista([h | l]) do
    if is_boolean(h) do
      [!h | neg_lista(l)]
    else
      raise("Essa função só trabalha com booleanos!")
    end
  end

  def join([], []), do: []

  def join([], [h_2 | t_2]) do
    [h_2 | join([], t_2)]
  end

  def join([h_1 | t_1], list_2) do
    if is_list(list_2) do
      [h_1 | join(t_1, list_2)]
    else
      raise("Você precisa fornecer duas listas para a função join/2!")
    end
  end

  def concat_lista([]), do: []

  def concat_lista([h_l | t_l]) do
    try do
      join(h_l, concat_lista(t_l))
    rescue
      _ in _ ->
        join([h_l], concat_lista(t_l))
    end
  end

  def inverte_lista([]), do: []

  def inverte_lista([h | t]) do
    inverte_lista(t) ++ [h]
  end
end
