import data from '../../data/vaktija.json';

import "moment-duration-format";
import moment from "moment-hijri";
// import "moment/locale/bs";

const { razlika, vaktija } = data;

export const dnevna = (
    lokacija = 77,
    godina = new Date().getFullYear(),
    mjesec = new Date().getMonth() + 1,
    dan = new Date().getDate()
) => {
    if (moment([godina, mjesec - 1, dan]).isValid()) {
        return {
            vakat: vaktija.mjesec[mjesec - 1].dan[dan - 1].vakat
                .map((v, i) => moment([godina, mjesec - 1, dan]).add(3, "h").isDST() ?
                    moment.duration(v + razlika[lokacija].mjesec[mjesec - 1].vakat[i] + 3600, "s").format("h:mm")
                    :
                    moment.duration(v + razlika[lokacija].mjesec[mjesec - 1].vakat[i], "s").format("h:mm")
                )
        }
    }
}
