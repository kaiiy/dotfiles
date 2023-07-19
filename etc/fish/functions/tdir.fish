# Create a new directory with a name randomly selected
function tdir
    set -l words pazu dola uncle.pom general.muoro duffi louis charles henri motro okami colonel.muska mei.kusakabe tatsuo.kusakabe yasuko.kusakabe granny kanta.ogaki totoro chu.totoro chibi.totoro catbus kiki jiji ursula tombo osono fukuo seita.yokokawa mrs.yokokawa seita.s.aunt taeko.okajima toshio mr.okajima mrs.okajima nanako.okajima yaeko.okajima tani.tsuneko aiko toko rie porco.rosso donald.curtis fio.piccolo gina mr.piccolo capo capo ferrari shoukichi okiyo seizaemon oroku gonta inugami.gyobu seiji.amasawa yuko.harada sugimura shiro.nishi ashitaka san eboshi jigo kohroku gonza hii.sama yakul shishigami moro takashi.yamada matsuko.yamada noboru.yamada nonoko.yamada shige.yamano yubaba kamaji no.face lin boh zeniba zeniba akio.ogino yuko.ogino cat.king yuki haru.yoshioka natori toto prince.lune hiromi naoko.yoshioka sophie.hatter calcifer markl madame.suliman heen lettie.hatter ged arren.lebannen therru tenar king.of.enlad cob hare hazia.dealer sosuke brunhilde.ponyo koichi fujimoto granmammare lisa toki yoshie noriko koyo sho.shawn homily.clock haru spiller pod.clock niya umi.matsuzaki shun.kazama sora.matsuzaki shirou.mizunuma ryoko.matsuzaki riku.matsuzaki hana.matsuzaki naoko.satomi jiro.horikoshi castorp kiro.honjo kayo.horikoshi caproni mr.kurokawa hattori kaguya sutemaru ishitsukuri miyatsuko menowarawa lady.sagami inbe.no.akita ona marnie anna.sasaki emily kazuhiko setsu.oiwa hisako yoriko.sasaki sayaka kiyomasa.oiwa
    
    for i in (seq 10)  # Attempt directory creation up to 10 times.
        set -l word $words[(random 1 (count $words))]  # Select a word randomly.
        set -l dir_name tmp.$word  # Generate the directory name.

        if not test -e $dir_name  # If a directory with the same name does not exist
            echo $dir_name
            mkdir $dir_name  # Create the directory.
            return 0  # Exit the function if successful.
        end
    end

    echo "Error: Unable to create directory after 10 attempts."
    return 1  # Return 1 to indicate failure.
end

