$(function(){
  // プレビュー用のimgタグを生成する関数
  const buildImg = (index, url)=> {
    const html = `<img data-index="${index}" src="${url}" width="100px" height="100px">`;
    return html;
  }
  // 画像用のinputを生成する関数
  const buildFileField = (index)=> {  
    const html = `<div class="js-file_group" data-index="${index}" >
                    <input class="js-file" type="file"
                    name="item[images_attributes][${index}][url]"
                    id="item_images_attributes_${index}_url">
                    <span class="js-remove">削除</span>
                  </div>`;
    return html;
  }
  // file_fieldのnameに動的なindexをつける為の配列
  let fileIndex = [1,2,3,4,5,6,7,8,9,10];
  // 既に使われているindexを除外
  lastIndex = $('.js-file_group:last').data('index');
  fileIndex.splice(0, lastIndex);

  $('.hidden-destroy').hide();
  
  //.js-fileを選択＝選択ボタン 
  $('#image-box').on('change', '.js-file', function(e) {

    // .js-fileの親のindexを取得
    const targetIndex = $(this).parent().data('index');
    // 画像のファイル名を取得する
    const file = e.target.files[0];
    const blobUrl = window.URL.createObjectURL(file);
    // 該当indexを持つimgがあれば取得して変数imgに入れる(画像変更の処理)
    if (img = $(`img[data-index="${targetIndex}"]`)[0]) {
      img.setAttribute('src', blobUrl);
    } else {  // 新規画像追加の処理
      $('#previews').append(buildImg(targetIndex, blobUrl));
      // fileIndexの先頭の数字を使ってinputを作る
      $('#image-box').append(buildFileField(fileIndex[0]));
      fileIndex.shift();
      // 末尾の数に1足した数を追加する
      fileIndex.push(fileIndex[fileIndex.length - 1] + 1);
    }
  });
  // 削除用
  $('#image-box').on('click', '.js-remove', function() {
    const targetIndex = $(this).parent().data('index');
    // 該当indexを振られているチェックボックスを取得する
    const hiddenCheck = $(`input[data-index="${targetIndex}"].hidden-destroy`);
    // もしチェックボックスが存在すればチェックを入れる
    if (hiddenCheck) hiddenCheck.prop('checked', true);

    $(this).parent().remove();
    $(`img[data-index="${targetIndex}"]`).remove();
    // 画像入力欄が0個にならないようにしておく
    if ($('.js-file').length == 0) $('#image-box').append(buildFileField(fileIndex[0]));
  });

  function update_field(){
    let value = 0.9;
    let comis = 0.1;
    let result = $('#product_price').val() * value;
    $('#profit').text("¥"+result);
    let pami = $('#product_price').val() * comis;
    $('#commission').text("¥"+pami);
  }
  $(function() {
    $('input[type="text"]').on('keyup change', function() {
      update_field();
    });
  }); 
  $(".delete-btn").click(function(e) {
    e.preventDefault();
    var image_id = $(this).data("imgid")
    // 新規で画像をいれらときはlengthは「0」になる
    if ( image_id.length != 0 ) {
        $.ajax({
            // Api::ProductsControllerのimage_destroyに飛ぶ
            type: 'DELETE',
            url: '/api/destroy/image_destroy',
            data: {img_id: image_id},
            dataType: 'json'
        })
        .done(function() {
            alert("削除しました");
        })
        .fail(function() {
            alert("削除に失敗しました");
        });
      }
    });
});
//手数料
$(function(){
  $('#item_price').on('input', function(){
    var data = $('#item_price').val();
    var profit = Math.round(data * 0.9) 
    var fee = (data - profit)
    $('.right').html(fee)
    $('.right').prepend('¥')
    $('.rightone').html(profit)
    $('.rightone').prepend('¥')
    $('#price').val(profit)
    if(profit == '') {
    $('.rightone').html('');
    $('.rightone').html('');
    }
  })
})