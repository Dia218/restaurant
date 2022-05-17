<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>time-Statistics</title>
</head>
<body>
<script>
    let db = [
        {
            index: 1,
            name: '김ㅇㅇ',
            phone: '010-0000-5992',
            date: '2022-01-01',
            time: '17:00',
            table: '1',
        },
        {
            index: 2,
            name: '민oo',
            phone: '010-0000-5992',
            date: '2022-01-01',
            time: '17:00',
            table: '1',
        },
        {
            index: 3,
            name: '강oo',
            phone: '010-1124-1321',
            date: '2022-03-11',
            time: '20:00',
            table: '1',
        },
        {
            index: 4,
            name: '김oo',
            phone: '010-1234-1321',
            date: '2022-02-15',
            time: '17:00',
            table: '5',
        },
        {
            index: 5,
            name: '박oo',
            phone: '010-1634-1021',
            date: '2022-01-18',
            time: '17:00',
            table: '1',
        },
        {
            index: 6,
            name: '구oo',
            phone: '010-8134-1321',
            date: '2022-07-18',
            time: '15:00',
            table: '1',
        },
        {
            index: 7,
            name: '최oo',
            phone: '010-0000-1321',
            date: '2022-01-18',
            time: '17:00',
            table: '1',
        },
        {
            index: 8,
            name: '이oo',
            phone: '010-9999-1321',
            date: '2022-08-18',
            time: '16:00',
            table: '1',
        },
        {
            index: 9,
            name: '최oo',
            phone: '010-1134-1321',
            date: '2022-04-18',
            time: '20:00',
            table: '1',
        },
        {
            index: 10,
            name: '김oo',
            phone: '010-1134-1321',
            date: '2022-05-18',
            time: '20:00',
            table: '1',
        },
        {
            index: 11,
            name: '장oo',
            phone: '010-1134-1321',
            date: '2022-02-18',
            time: '20:00',
            table: '1',
        },
        {
            index: 12,
            name: '최oo',
            phone: '010-1134-1321',
            date: '2022-04-18',
            time: '18:00',
            table: '1',
        },
        {
            index: 13,
            name: '최oo',
            phone: '010-1134-1321',
            date: '2022-05-18',
            time: '17:00',
            table: '1',
        },
        {
            index: 14,
            name: '민oo',
            phone: '010-1134-1321',
            date: '2022-04-18',
            time: '20:00',
            table: '1',
        },
        {
            index: 15,
            name: '박oo',
            phone: '010-1134-1321',
            date: '2022-05-18',
            time: '20:00',
            table: '1',
        },
        {
            index: 16,
            name: '강oo',
            phone: '010-1134-1321',
            date: '2022-06-18',
            time: '20:00',
            table: '1',
        },
        {
            index: 17,
            name: '최oo',
            phone: '010-1134-1321',
            date: '2022-11-18',
            time: '19:00',
            table: '1',
        }
    ]

    document.write('<table border="1">');
    // thead
    document.write('<thead>');
    document.write('<tr>');
    document.write('<th>인덱스</th>');
    document.write('<th>이름</th>');
    document.write('<th>폰번호</th>');
    document.write('<th>날짜</th>');
    document.write('<th>시간</th>');
    document.write('<th>테이블번호</th>');
    document.write('</tr>');
    document.write('</thead>');

    let ele = 0;
    let twe = 0;
    let one = 0;
    let two = 0;
    let thr = 0;
    let four = 0;
    let five = 0;
    let six = 0;
    let sev = 0;
    let eig = 0;
    // tbody
    document.write('<tbody>');
    for (let i = 0; i < db.length; i++) {
        document.write('<tr>');
        //   db[i] 값에서 value들만 저장한 배열
        const data = Object.values(db[i]);
        for (let j = 0; j < Object.keys(db[i]).length; j++) {
            document.write('<td>');
            document.write(data[j]);
            if (j === 4) {
                if (data[j].split(':')[0] == '11') {
                    ele++;
                } else if (data[j].split(':')[0] == '12') {
                    twe++;
                } else if (data[j].split(':')[0] == '13') {
                    one++;
                } else if (data[j].split(':')[0] == '14') {
                    two++;
                } else if (data[j].split(':')[0] == '15') {
                    thr++;
                } else if (data[j].split(':')[0] == '16') {
                    four++;
                } else if (data[j].split(':')[0] == '17') {
                    five++;
                } else if (data[j].split(':')[0] == '18') {
                    six++;
                } else if (data[j].split(':')[0] == '19') {
                    sev++;
                } else if (data[j].split(':')[0] == '20') {
                    eig++;
                }
            }
            document.write('</td>');
        }
        document.write('</tr>')
    }
    document.write('</table>');

</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<canvas id="bar-chart" width="100" height="50"></canvas>
<script>
    new Chart(document.getElementById("bar-chart"), {
        type: 'bar',
        data: {
            labels: ["11:00", "12:00", "13:00", "14:00", "15:00", "16:00", "17:00", "18:00", "19:00", "20:00"],
            datasets: [
                {
                    label: "Population (millions)",
                    backgroundColor: ["#3e95cd", "#3e95cd", "#3e95cd", "#3e95cd", "#3e95cd", "#3e95cd", "#3e95cd", "#3e95cd", "#3e95cd", "#3e95cd"],
                    data: [ele, twe, one, two, thr, four, five, six, sev, eig]
                }
            ]
        },
        options: {
            legend: {display: false},
            title: {
                display: true,
                text: '시간별 방문고객 통계'
            }
        }
    });

</script>

</body>
</html>
