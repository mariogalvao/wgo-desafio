# Desafio WGO

> O zupper que conseguir vencer o desafio, precisa ser estudado.

## O que é essa aplicação?

Essa aplicação escrita sobre o NodeJS permite que você faça uma chamada telefônica para um
número telefônico conhecido, e dê play em um áudio no momento que a chamada é atendida. 
Também conhecida como CaaS (Call as a Service). :)

É possível configurar o remetente da chamada com um número conhecido.

Por exemplo, eu posso fazer uma chamada para em amigo, simulando que a mãe dele está ligando, quando ele atender, seu áudio será executado.

## Como funciona?

Utilizamos a API de chamadas da *TotalVoice*. Você precisa criar uma conta
para poder utilizar. Quando você cria uma conta, você obtém, gratuitamente, para
fins de testes, R$ 10,00 para utilizar. Cada chamada debita R$ 0,35.

[Clique aqui para criar sua conta](https://api2.totalvoice.com.br/painel/signup.php)

Você receberá um token de acesso, que poderá passar para a nossa API para
fazer as chamadas. Fique tranquilo, todo o código é aberto e não a salvaremos.

Para executar a aplicação, é necessário inserir uma senha.

## Senha

A senha é o animal contido na imagem abaixo.
![alt text](https://github.com/mariogalvao/wgo-desafio/blob/master/senha.jpg?raw=true)
Se não conseguir ver o animal, boa sorte em decifrar no código.

## Do que eu preciso?

Do `node` acima da **versão 6**.

## Instalação

`sudo npm install -g wgo-desafio`

Você terá disponível globalmente o comando `wgo-desafio`.

### Parâmetros

| Parâmetro | Obrigatório        | Descrição                                                 |
|-----------|--------------------|-----------------------------------------------------------|
| `--token` | :white_check_mark: | Seu token de acesso do TotalVoice.                        |
| `--de`    |                    | Quem está enviando o gemidão? Qualquer número telefônico! |
| `--para`  | :white_check_mark: | Quem é a vítima do gemidão do zap?                        |
| `--sms`   |                    | Se definido, será enviado um SMS ao invés de uma chamada. |
| `--senha` | :white_check_mark: | Digite, em letras minúsculas, o animal contido na imagem. |

### Exemplo

`wgo-desafio --de=47998569631 --para=47996326548 --token=ade6a19ecee14577634f66af105eb68c --senha=abcde`

Observações:

- Somente chamadas brasileiras. Omita o `+55`
- A função de SMS é _alpha_. Por enquanto, funciona somente para o número cadastrado

A pessoa receberá uma ligação e, quando atender, ouvirá o áudio!

## Docker

Para quem quer rodar via Docker

```
$ docker build -t wgo-desafio -f Dockerfile .
```
```
$ docker run --rm --name wgo-desafio -e DE={{telefone}} -e PARA={{telefone}} -e TOKEN={{token}} wgo-desafio
```

## Quem vence o desafio?

A primeira pessoa que fizer uma ligação para seu próprio celular, através dessa aplicação, vence o desafio!
Tem que abrir a câmera e o áudio na reunião, colocar o celular no viva voz e mostrar a chamada do celular, com o áudio tocando. :) 

Fechou? Valendo!!

## Disclaimer

Os autores deste projeto não possuem qualquer ligação com a TotalVoice. TotalVoice é uma marca registrada.
Não usar essa aplicação para fins comerciais ou para perturbar amiguinho(a)s. :)
