window.delData= (id, title)->
    if confirm('「' + title + '」のデータを削除しますか？')
        document.locaion = "/cards/delete" + id;
        return false;