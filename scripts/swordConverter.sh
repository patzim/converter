#!/bin/bash
resources="../resources"
rm -r offbileModule

mkdir offbileModule
mkdir offbileModule/modules
mkdir offbileModule/modules/texts
mkdir offbileModule/modules/texts/rawtext
mkdir offbileModule/modules/texts/rawtext/offbile
mkdir offbileModule/mods.d

cp ${resources}/offbile.conf offbileModule/mods.d

#xmllint --noout --schema http://www.bibletechnologies.net/osisCore.2.1.1.xsd offeneBibelModule.osis
#~/Documents/sword/svn/sword/utilities/osis2mod offbileModule/modules/texts/rawtext/offbile/ offeneBibelLesefassungModule.osis -d 8
~/Documents/sword/svn/sword/utilities/osis2mod offbileModule/modules/texts/rawtext/offbile/ ${resources}/offeneBibelLesefassungModule.osis

cp -r offbileModule/* ~/.sword

rm -r offbistModule

mkdir offbistModule
mkdir offbistModule/modules
mkdir offbistModule/modules/texts
mkdir offbistModule/modules/texts/rawtext
mkdir offbistModule/modules/texts/rawtext/offbist
mkdir offbistModule/mods.d

cp ${resources}/offbist.conf offbistModule/mods.d

#xmllint --noout --schema http://www.bibletechnologies.net/osisCore.2.1.1.xsd offeneBibelModule.osis
#~/Documents/sword/svn/sword/utilities/osis2mod offbistModule/modules/texts/rawtext/offbist/ offeneBibelStudienfassungModule.osis -d 8
~/Documents/sword/svn/sword/utilities/osis2mod offbistModule/modules/texts/rawtext/offbist/ ${resources}/offeneBibelStudienfassungModule.osis

cp -r offbistModule/* ~/.sword
