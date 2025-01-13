<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="icon" type="image/x-icon" href="public/imagens/HAYDAMico.ico">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="app/css/Horarios.css">
    <title>Horários</title>
</head>

<body>
    <header>
        <div class="header-left">
            <h3>Selecione os horários indisponíveis</h3>
            <a href="/projetoscti26/logout" class="log-off-button">Log Off</a>
        </div>  
    </header>
    <main>
        <div class="selec">
        <div class="tabela">
            <table>
                <form name="frmHorarios" action="/projetoscti26/selecionarhorarios" method="post">
                        <tr>
                            <th colspan="7" class="head">Manhã</th>
                        </tr>
                        <tr>
                            <td class="hd">Horário/Dia</td>
                            <td class="dia">Segunda</th>
                            <td class="dia">Terça</th>
                            <td class="dia">Quarta</th>
                            <td class="dia">Quinta</th>
                            <td class="dia">Sexta</th>
                            <td class="dia">Sábado</th>
                        </tr>
                        <tr>
                            <td class="hora">1° Aula<br>
                                7h15 às 8h00
                            </td>
                            <td class="check">
                                <input type="checkbox" name="1" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                                <input type="checkbox" name="2" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                                <input type="checkbox" name="3" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                                <input type="checkbox" name="4" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="5" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="6" value="true">
                                <span class="checkmark"></span>
                            </td>
                        </tr>
                        <tr>
                            <td class="hora">2° Aula<br>
                                8h00 às 8h45
                            </td>
                            <td class="check">
                               <input type="checkbox" name="7" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="8" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="9" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="10" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="11" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="12" value="true">
                                <span class="checkmark"></span>
                            </td>
                        </tr>
                        <tr>
                            <td class="hora">3° Aula<br>
                                8h45 às 9h30
                            </td>
                            <td class="check">
                               <input type="checkbox" name="13" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="14" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="15" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="16" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="17" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="18" value="true">
                                <span class="checkmark"></span>
                            </td>
                        </tr>
                        <tr>
                            <td class="hora">4° Aula<br>
                                10h00 às 10h45
                            </td>
                            <td class="check">
                               <input type="checkbox" name="19" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="20" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="21" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="22" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="23" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="24" value="true">
                                <span class="checkmark"></span>
                            </td>
                        </tr>
                        <tr>
                            <td class="hora">5° Aula<br>
                                10h45 às 11h30
                            </td>
                            <td class="check">
                               <input type="checkbox" name="25" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="26" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="27" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="28" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="29" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="30" value="true">
                                <span class="checkmark"></span>
                            </td>
                        </tr>
                        <tr>
                            <td class="hora">6° Aula<br>
                                11h30 às 12h15
                            </td>
                            <td class="check">
                               <input type="checkbox" name="31" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="32" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="33" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="34" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="35" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="36" value="true">
                                <span class="checkmark"></span>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="tabela">
                    <table>
                        <tr>
                            <th colspan="7" class="head">Tarde</th>
                        </tr>
                        <tr>
                            <td class="hd">Horário/Dia</td>
                            <td class="dia">Segunda</th>
                            <td class="dia">Terça</th>
                            <td class="dia">Quarta</th>
                            <td class="dia">Quinta</th>
                            <td class="dia">Sexta</th>
                            <td class="dia">Sábado</th>
                        </tr>
                        <tr>
                            <td class="hora">1° Aula<br>
                                14h00 às 14h45
                            </td>
                            <td class="check">
                               <input type="checkbox" name="37" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="38" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="39" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="40" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="41" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="sabado">
                               
                            </td>
                        </tr>
                        <tr>
                            <td class="hora">2° Aula<br>
                                14h45 às 1530
                            </td>
                            <td class="check">
                               <input type="checkbox" name="42" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="43" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="44" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="45" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="46" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="sabado">
                               
                            </td>
                        </tr>
                        <tr>
                            <td class="hora">3° Aula<br>
                                15h45 às 16h30
                            </td>
                            <td class="check">
                               <input type="checkbox" name="47" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="48" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="49" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="50" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="51" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="sabado">
                               
                            </td>
                        </tr>
                        <tr>
                            <td class="hora">4° Aula<br>
                                16h30 às 17h15
                            </td>
                            <td class="check">
                               <input type="checkbox" name="52" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="53" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="54" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="55" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="56" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="sabado">
                               
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="tabela">
                    <table>
                        <tr>
                            <th colspan="7" class="head">Noite</th>
                        </tr>
                        <tr>
                            <td class="hd">Horário/Dia</td>
                            <td class="dia">Segunda</th>
                            <td class="dia">Terça</th>
                            <td class="dia">Quarta</th>
                            <td class="dia">Quinta</th>
                            <td class="dia">Sexta</th>
                            <td class="dia">Sábado</th>
                        </tr>
                        <tr>
                            <td class="hora">1° Aula<br>
                                19h00 às 19h45
                            </td>
                            <td class="check">
                               <input type="checkbox" name="57" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="58" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="59" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="60" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="61" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="sabado">
                               
                            </td>
                        </tr>
                        <tr>
                            <td class="hora">2° Aula<br>
                                19h45 às 20h30
                            </td>
                            <td class="check">
                               <input type="checkbox" name="62" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="63" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="64" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="65" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="66" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="sabado">
                               
                            </td>
                        </tr>
                        <tr>
                            <td class="hora">3° Aula<br>
                                20h45 às 21h30
                            </td>
                            <td class="check">
                               <input type="checkbox" name="67" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="68" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="69" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                                <input type="checkbox" name="70" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                                <input type="checkbox" name="71" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="sabado">
                               
                            </td>
                        </tr>
                        <tr>
                            <td class="hora">4° Aula<br>
                                21h30 às 22h15
                            </td>
                            <td class="check">
                                <input type="checkbox" name="72" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                                <input type="checkbox" name="73" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                                <input type="checkbox" name="74" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                               <input type="checkbox" name="75" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="check">
                                <input type="checkbox" name="76" value="true">
                                <span class="checkmark"></span>
                            </td>
                            <td class="sabado">
                               
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
                <button class="botao">Salvar</button>
        </form>
    </main>
</body>
</html>