jQuery(function($){
    $('.tab').click(function(){
        // is-activeからクラス名を取り除く
        $('.is-active').removeClass('is-active');
        // this＝クリックしたタブ、thisにis-activeを入れる
        $(this).addClass('is-active');
        
        $('.is-show').removeClass('is-show');
        // クリックしたタブからインデックス番号を取得
        const index = $(this).index();
        // クリックしたタブと同じインデックス番号をもつコンテンツを表示
        $('.panel').eq(index).addClass('is-show');
    });
});
