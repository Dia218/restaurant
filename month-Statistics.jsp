<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>month-Statistics</title>
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

    let jan = 0;
    let feb = 0;
    let mar = 0;
    let apr = 0;
    let may = 0;
    let june = 0;
    let july = 0;
    let aug = 0;
    let sep = 0;
    let oct = 0;
    let nov = 0;
    let dec = 0;

    // tbody
    document.write('<tbody>');
    for (let i = 0; i < db.length; i++) {
        document.write('<tr>');
        //   db[i] 값에서 value들만 저장한 배열
        const data = Object.values(db[i]);
        for (let j = 0; j < Object.keys(db[i]).length; j++) {
            document.write('<td>');
            document.write(data[j]);
            if (j === 3) {
                if (data[j].split('-')[1] == '01') {
                    jan++;
                } else if (data[j].split('-')[1] == '02') {
                    feb++;
                } else if (data[j].split('-')[1] == '03') {
                    mar++;
                } else if (data[j].split('-')[1] == '04') {
                    apr++;
                } else if (data[j].split('-')[1] == '05') {
                    may++;
                } else if (data[j].split('-')[1] == '06') {
                    june++;
                } else if (data[j].split('-')[1] == '07') {
                    july++;
                } else if (data[j].split('-')[1] == '08') {
                    aug++;
                } else if (data[j].split('-')[1] == '09') {
                    sep++;
                } else if (data[j].split('-')[1] == '10') {
                    oct++;
                } else if (data[j].split('-')[1] == '11') {
                    nov++;
                } else if (data[j].split('-')[1] == '12') {
                    dec++;
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
            labels: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
            datasets: [
                {
                    label: "Population (millions)",
                    backgroundColor: ["#3e95cd", "#3e95cd", "#3e95cd", "#3e95cd", "#3e95cd", "#3e95cd", "#3e95cd", "#3e95cd", "#3e95cd", "#3e95cd", "#3e95cd", "#3e95cd"],
                    data: [jan, feb, mar, apr, may, june, july, aug, sep, oct, nov, dec]
                }
            ]
        },
        options: {
            legend: {display: false},
            title: {
                display: true,
                text: '월별 방문고객 통계'
            }
        }
    });

</script>

</body>
</html>
