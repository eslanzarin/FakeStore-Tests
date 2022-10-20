*** Settings ***
Documentation         Archive for generation of random data 
Resource              ./base.robot

*** Keywords ***
Product Data
    ${title}            FakerLibrary.Sentence         nb_words=3
    ${price}            FakerLibrary.Pyfloat          min_value=10        max_value=10000        right_digits=2
    ${description}      FakerLibrary.Paragraph        nb_sentences=3
    ${image}            FakerLibrary.Url
    ${category}         FakerLibrary.Word
    Set Global Variable        ${title}
    Set Global Variable        ${price}
    Set Global Variable        ${description}
    Set Global Variable        ${image}
    Set Global Variable        ${category}

Set Payload Data
    ${payload}          Create Dictionary             title=${title}        price=${price}         description=${description}        image=${image}       category=${category}
    Set Global Variable        ${payload}

