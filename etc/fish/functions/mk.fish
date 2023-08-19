# Create a new directory with a name randomly selected
function mk
    set -l words fingerroot celery.seed adjika brown.mustard thai.basil sesame sarsaparilla gochujang sassafras star.anise garlic bouquet.garni vanilla vadouvan sorrel idli.podi culantro zereshk angelica lemon.balm saffron panch.phoron zedoary onion.powder mahlab harissa hyssop radhuni tarragon ajwain woodruff sharena.sol korarima aonori baharat mitmita mixed.spice white.mustard caraway allspice fennel cassia tamarind lovage asafoetida cilantro amchoor douchi hoja.santa black.mustard long.pepper dried.lime ras.el.hanout nutmeg turmeric tonka.bean ginger litsea.cubeba parsley golpar sansho liquorice chaunk khmeli.suneli wasabi oregano chenpi marjoram njangsa camphor cicely holy.basil curry.leaf berbere recado.rojo mugwort chives cinnamon borage epazote paprika poppy.seed lavender nigella savory advieh bay.leaf mastic perilla hawaij crab.boil kinh.gioi juniper.berry horseradish
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

