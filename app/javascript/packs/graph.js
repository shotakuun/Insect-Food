document.addEventListener("turbolinks:load", () => {
  var ctx = document.getElementById("myChart");
  const raderDate = gon.chart_data;
  var myChart = new Chart(ctx, {
    type: "radar",
    data: {
      labels: ["旨味", "苦味", "エグ味", "風味", "キモみ"],
      datasets: [
        {
          label: "虫の味わい",
          data: raderDate,
          backgroundColor: "rgb(40, 167, 79, 0.5)", //グラフ背景色
          borderColor: "rgba(94, 163, 91, 1)", //グラフボーダー色
        },
      ],
    },
    options: {
      plugins: {
        legend: {
          display: false,
        },
      },
      scales: {
        angleLines: {
          display: false,
        },
        r: {
          ticks: {
            display: false,
          },
          max: 5, //グラフの最大値
          min: 0, //グラフの最小値
          ticks: {
            stepSize: 1, //目盛間隔
          },

          pointLabels: {
            font: {
              size: 16,
            },
          },
        },
      },
    },
  });
});
