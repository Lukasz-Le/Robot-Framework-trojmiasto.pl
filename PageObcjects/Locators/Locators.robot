*** Variables ***
${FIRST_ARTICLE_TITLE}    css=div.component >h1.newsHeader__title
${THIRD_ARTICLE_TITLE}    css=div.component >h1.newsHeader__title
${ACCEPT_COOKIES}    css=div#onetrust-button-group>button#onetrust-accept-btn-handler
${DATE_TROJMIASTOPL}     css=p.date>a.nowrap
${NAME_DAY_TROJMIASTOPL}   css=div#info>p.nameday
${NEWS}    css=a[href$="wiadomosci/"]
${FIRST_ARTICLE_LINK}    css=ul.arch-list>li:nth-child(1)>div.desc>h4 a 
${THIRD_ARTICLE_LINK}    css=ul.arch-list>li:nth-child(3)>div.desc>h4 a
