module.exports = () => {
  const langList = ['id', 'en', 'jp']
  let textElementsObj = {}
  let langSelectorElementsObj = {}

  langList.forEach(lang => {
    textElementsObj[lang] = document.querySelectorAll(`.${lang}`)
    langSelectorElementsObj[lang] = $(`#lang_${lang}`)
  })

  const toggleLang = (selectedLang) => {
    langList.forEach(lang => {
      const display = lang === selectedLang ? 'block' : 'none'
      setDisplay(textElementsObj[lang], display)
    })
  }

  const setDisplay = (elArr, display) => {
    for(let i = 0; i < elArr.length; i++) {
      elArr[i].style.display = display
    }
  }

  const toggleLangSelectorEffect = (selectedLang) => {
    langList.forEach(lang => {
      const action = lang === selectedLang ? 'addClass' : 'removeClass'
      langSelectorElementsObj[lang][action]('active')
    })
  }

  const initialize = () => {
    let shown = false
    langList.forEach(lang => {
      if(textElementsObj[lang].length > 0) {
        if(!shown) {
          toggleLang(lang)
          shown = true
        }
        langSelectorElementsObj[lang].click(() => {
          toggleLangSelectorEffect(lang)
          toggleLang(lang)
        })
      }
    })

  }

  initialize();
};
