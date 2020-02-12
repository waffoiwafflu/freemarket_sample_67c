
  // プレビュー用のimgタグを生成する関数
  const buildImg = (index, url)=> {
    const html = `<img data-index="${index}" src="${url}" width="100px" height="100px">`;
    return html;
  }
  
  // 画像用のinputを生成する関数
  const buildFileField = (index)=> {  
    const html = `<div data-index="${index}" class="js-file_group">
                    <input class="js-file" type="file"
                    name="item[images_attributes][${index}][url]"
                    id="item_images_attributes_${index}_url"><br>
                    <div class="js-remove">削除</div>
                  </div>`;
    return html;
  }
  
  // file_fieldのnameに動的なindexをつける為の配列
  let fileIndex = [1,2,3,4,5,6,7,8,9,10];
  // 既に使われているindexを除外
  // すでにつくられている選択ボタンの一番大きいインデックスを取得
  lastIndex = $('.js-file_group:last').data('index');
  // fileindexからlastindexまでのインデックスを削除
  fileIndex.splice(0, lastIndex);
  
  // チェックボックスの要素を非表示にする
  $('.hidden-destroy').hide();
  
  //.js-fileを選択＝選択ボタン 
  $('#image-box').on('change', '.js-file', function(e) {

    // .js-fileの親のindexを取得
    const targetIndex = $(this).parent().data('index');
    // 選択した画像のファイル名を取得する
    const file = e.target.files[0];
    // 選択した画像をブラウザで表示できるようにblobUrlにいれる
    // blobUrlはimgタグのsrcに設定すると表示される
    const blobUrl = window.URL.createObjectURL(file);

    // 該当indexを持つimgがあれば取得して変数imgに入れる(画像変更の処理)
    if (img = $(`img[data-index="${targetIndex}"]`)[0]) {
      img.setAttribute('src', blobUrl);
    } else {  // 新規画像追加の処理
      // previewsに選択した画像を追加
      $('#previews').append(buildImg(targetIndex, blobUrl));
      // fileIndexの先頭の数字を使ってinputを作る
      // 新たに選択ボタンを追加する
      $('#image-box').append(buildFileField(fileIndex[0]));
      fileIndex.shift();
      // 末尾の数に1足した数を追加する　　なぞ
      fileIndex.push(fileIndex[fileIndex.length - 1] + 1);
    }
  });
  // 削除ボタン.js-removeを押した時
  $('#image-box').on('click', '.js-remove', function() {
    // 親要素のインデックスを取得
    const targetIndex = $(this).parent().data('index');
    // 該当indexを振られているチェックボックスを取得する
    const hiddenCheck = $(`input[data-index="${targetIndex}"].hidden-destroy`);
    // もしチェックボックスが存在すればチェックを入れる
    if (hiddenCheck) hiddenCheck.prop('checked', true);

    // 削除ボタンの親要素を全て削除する
    $(this).parent().remove();

    // previews内にある同じインデックスのimageを削除する
    $(`img[data-index="${targetIndex}"]`).remove();

    // 画像入力欄が0個にならないようにしておく
    if ($('.js-file').length == 0) $('#image-box').append(buildFileField(fileIndex[0]));
  });

