document.addEventListener("turbolinks:load", function () {
  $("#danger-insect").delay(1000).fadeIn(1000);
  $("#danger-insect").fadeOut(2000);
  // ↑↑↑ 質問文が表示される前に注意文を表示するエリア

  // ↓↓↓ 質問文が表示される前に注意文を表示するエリア
  $("#questions").delay(4000).fadeIn(1000);

  const h2 = document.getElementById("h2");
  const ul = document.getElementById("ul");
  const randomNums = [0, 1, 2, 3, 4, 5, 6];
  const sliceNums = randomNums.sort(() => Math.random() - 0.5);

  const lists = [
    {
      title: "虫好き？",
      answer: ["好き!", "めっちゃ嫌い！"],
    },
    { title: "健康に興味がある？", answer: ["ある!", "全くない！"] },
    {
      title: "朝起きて枕元に虫がいたら？？",
      answer: ["普通に二度寝する！", "焦る!"],
    },
    {
      title: "ブヨブヨ系？ カッチカッチ系？",
      answer: ["それはブヨブヨ系!", "いや、カチカチ系！"],
    },
    {
      title: "この世に食材が虫しかなかったら？",
      answer: ["貪り食う!", "死を待つ!"],
    },
    {
      title: "エピソードトークが欲しい？",
      answer: ["今すぐ欲しい", "いらない!"],
    },
    {
      title: "変わったことが好き？",
      answer: ["好き!", "嫌い!"],
    },
  ];

  let setNum = 0;
  let point = 0;
  let progressBarNum = 0;
  let currentQestios = 0;
  let QNumber = 1;

  render(setNum);

  function render(setNum) {
    $("li").remove();
    h2.textContent = lists[sliceNums[setNum]].title;
    lists[sliceNums[setNum]].answer.forEach(function (text) {
      const li = document.createElement("li");
      li.textContent = text;
      ul.appendChild(li);
    });
  }

  $("body").on("click", "li", function () {
    const liIndex = $("li").index(this);
    setNum++;
    point += pointGet(liIndex);
    $("span").text((currentQestios += 1));
    $(".q-number").text(`Q${QNumber}`);
    $(".progress-bar").css("width", String((progressBarNum += 20)) + "%");
    if (setNum < 5) {
      ++QNumber;
      $(".q-number").text(`Q${QNumber}`);
      render(setNum);
    } else {
      $("ul,h3,div,.q-number").fadeOut();
      $("ul").remove();
      $(".progress-bar.progress-bar").remove();

      if (point === 0) {
        point = 1;
      }
      window.location.href = "/results?point=" + point;
    }
  });

  function pointGet(liIndex) {
    switch (liIndex) {
      case 0:
        return 1;
        break;
      case 1:
        return 0;
        break;
    }
  }
});
