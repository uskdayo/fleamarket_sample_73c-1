// DOM読み込みが完了したら実行
$(document).on("turbolinks:load", function () {
  Payjp.setPublicKey("pk_test_91e3960108d6cf0addff2d8c");
  $("#new_creditcard").submit(function (e) {
    // カード情報生成
    let card = {
      number: document.getElementById("card_number").value,
      cvc: document.getElementById("cvv").value,
      exp_month: document.getElementById("creditcard_exp_month").value,
      exp_year: document.getElementById("creditcard_exp_year").value,
    };

    // トークン生成のためのAPI通信の実行
    Payjp.createToken(card, (status, response) => {
      if (status === 200) {
        // トークン生成 成功時：トークンIDをフォームに代入
        $("#creditcard_token").val(response.id);
      } else {
        // トークン生成 失敗時：エラーコードをフォームに代入
        $("#creditcard_error").val(response.error.code);
      }
      // フォーム送信
      $("#new_creditcard").off("submit");
      $("#new_creditcard").submit();
    });
    return false;
  });
});
