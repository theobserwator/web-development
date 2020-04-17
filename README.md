# web-development
lab 5 <br><br>
![1](https://user-images.githubusercontent.com/39883296/78996178-4015a200-7b6e-11ea-8ff4-8ee11c7c970e.png)<br>
![2](https://user-images.githubusercontent.com/39883296/78996182-40ae3880-7b6e-11ea-8016-2a9919ee4c03.png)<br>
![3](https://user-images.githubusercontent.com/39883296/78996185-4146cf00-7b6e-11ea-9dac-3c6a37d75ada.png) <br>
< html >
< голова >
    < script  src = " dom_utils.js " > </ script >
    < скрипт >
        function  clr ( ) {
            var  calcPlace = документ . getElementById ( "калькулятор" ) ;
            while  ( calcPlace . firstChild ! = null ) {
                calcPlace . removeChild ( calcPlace . firstChild ) ;
            }
        }

        function  add ( element ) {
            документ . getElementById ( 'калькулятор' ) . appendChild ( element ) ;
        }

        function  createSimple ( ) {
            добавить ( текст ( "id_n1" ) ) ;
            add ( select ( "id_oper" , new  Array ( "+" ,  "-" ) ) ) ;
            добавить ( текст ( "id_n2" ) ) ;
            добавить ( кнопка ( "=" , рассчитать результат ) ) ;
            добавить ( текст ( "id_result" ) ) ;
        }

        function  createPercent ( ) {
            add ( label ( "Сумма вклада:" ) ) ;
            добавить ( текст ( "id_summa" ) ) ;  добавить ( br ( ) ) ;
            add ( label ( "Срок вклада (лет):" ) ) ;
            добавить ( число ( "id_srok" ) ) ;  добавить ( br ( ) ) ;
            add ( label ( "Процентаная ставка (годовых):" ) ) ;
            добавить ( текст ( "id_procent" ) ) ;  добавить ( br ( ) ) ;
            добавить ( кнопка ( "%" ,  рассчитать проценты ) ) ;  добавить ( br ( ) ) ;
            добавить ( метка ( "Доход:" ) ) ;
            добавить ( текст ( "id_dohod" ) ) ;
        }

        function  executePercent ( ) {
            var  s  =  документ . getElementById ( "id_summa" ) . стоимость ;
            var  t  =  document . getElementById ( "id_srok" ) . стоимость ;
            var  p  =  документ . getElementById ( "id_procent" ) . стоимость ;
            документ . getElementById ( 'id_dohod' ) . значение = 0,01 * с * р * т ;
        }

        function  calculateResult ( ) {
            var  n1 = parseFloat ( document . getElementById ( "id_n1" ) . value ) ;
            var  n2 = parseFloat ( document . getElementById ( "id_n2" ) . value ) ;
            var  oper = document . getElementById ( "id_oper" ) . стоимость ;
            
            документ . getElementById ( "id_result" ) . значение  =
                опер == "+" ? n1 + n2 : n1 - n2 ;
            
                // if (! содержитNotDigits (n1)) {
                // document.getElementById ("id_result"). value = "error";
                //}
                if  ( document . getElementById ( "id_result" ) . value == "NaN" )  {
                    документ . getElementById ( "id_result" ) . значение = «Ошибка 1 ячейка» ;
                }
                консоль . log ( document . getElementById ( "id_result" ) . value ) ;
            

        }

        функция  содержитNotDigits ( поле ) {
            var  reg  =  / ^ [ az ] + ? $ / ;
            возврат  рег . тест ( поле . значение ) ;
        }
        function  isWord ( field ) {
            var  reg  =  / ^ . * [ ^ Az ] . * $ / ;
            возврат  рег . тест ( поле . значение ) ;
        }
    </ script >
</ head >
< body  onload = " clr (); createSimple () " >
    < div  id = " селектор " >
        < Входной  тип = " радио " название =" calculatorType " проверено  OnClick =" CLR (); createSimple () " /> Стандартный калькулятор < бр >
        < Входной  тип = " радио " название =" calculatorType " OnClick =" CLR (); createPercent () " /> Калькулятор процентов < BR >
    </ div >
    < div  id = " calculator " > </ div >
</ body >
</ html >
