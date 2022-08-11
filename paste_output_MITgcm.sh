#! /bin/bash

INDIR=/g100_scratch/userexternal/ealvarez/global_aphyt/radtrans_aphycnt_detritus
cd ${INDIR}

#module load python/2.7.12
#module load numpy/1.15.2--python--2.7.12
#source /g100/home/userexternal/ealvarez/sequence.sh

/g100/home/userexternal/ealvarez/MITgcm_galileo/utils/python/MITgcmutils/scripts/gluemncbig grid.t* -o grid.nc
#/galileo/home/userexternal/ealvarez/MITgcm/utils/python/MITgcmutils/scripts/gluemncbig sice.0000000000.t* -o sice.nc

# Diags 2D
/g100/home/userexternal/ealvarez/MITgcm_galileo/utils/python/MITgcmutils/scripts/gluemncbig diags2D.0000000000.t* -o diags2D.nc
/g100/home/userexternal/ealvarez/MITgcm_galileo/utils/python/MITgcmutils/scripts/gluemncbig recomDiags2D.0000000000.t* -o recomDiags2D.nc

# Diags 3D
/g100/home/userexternal/ealvarez/MITgcm_galileo/utils/python/MITgcmutils/scripts/gluemncbig diags3D10daily.0000000000.t* -o diags3D10daily.nc
/g100/home/userexternal/ealvarez/MITgcm_galileo/utils/python/MITgcmutils/scripts/gluemncbig recomDiags3D10daily.0000000000.t* -o recomDiags3D10daily.nc
/g100/home/userexternal/ealvarez/MITgcm_galileo/utils/python/MITgcmutils/scripts/gluemncbig MAREDiags3D10daily.0000000000.t* -o MAREDiags3D10daily.nc

# RADTRANS
/g100/home/userexternal/ealvarez/MITgcm_galileo/utils/python/MITgcmutils/scripts/gluemncbig RADiags3D10daily.0000000000.t* -o RADiags3D10daily.nc
/g100/home/userexternal/ealvarez/MITgcm_galileo/utils/python/MITgcmutils/scripts/gluemncbig RADiags3DFlux.0000000000.t* -o RADiags3DFlux.nc
