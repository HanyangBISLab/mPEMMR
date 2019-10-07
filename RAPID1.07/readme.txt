RAPID v1.07: Ratio based Algorithm for Polypeptide Isotopic cluster Determination
=================================================================================

RAPID is a command-line program to determine isotopic clusters and their monoisotopic 
masses based on a new probabilistic model. It determines monoisotopic masses of peptides,
especially peptides of mass < 5000 Da. RAPID takes the Thermo Finnigan .RAW and mzXML 
file formats as input. It automatically processes all the MS scans of multiple RAW flies.
The results are published in a table format similar to that of ICR-2LS or Decon2LS.

Usage: RAPID <parameter file>


Acknowledgement 
---------------
RAPID employs the peak picking code of Decon2LS developed by Pacific Northwest National 
Laboratory (http://omics.pnl.gov).


Reference
---------
The details of our algorithm are described in the following paper.

"Isotopic Peak Intensity Ratio based Algorithm for Fast and Accurate Determination of
Isotopic Clusters and Monoisotopic Masses of Polypeptides from High Resolution Mass 
Spectrometric Data"
Park, K.; Yoon, J. Y.; Lee, S.; Paek, E.; Park, H.; Jung, H.-J.; Lee, S.-W. 
Anal. Chem. 2008, 80, 7294-7303.


Parameters
----------
Parameter file can be given as an ASCII text file. See the attached 'example.txt' file
for a sample parameter file. The 'File::DataList' parameter is required and all other 
parameters are optional. We recommend you don't change the AdvDeconv parameters.

- File::DataList (required)
 List of input RAW files. All input files are processed sequentially. Each result of a 
 input file is published in a table format similar to that of ICR-2LS or Decon2LS. See 
 the 'DeconvPep::OutputFormat' parameter. The result files are generated in the same folder 
 as the input files. 
 
- File::DataType (default: FINNIGAN)
 Sets the data type of input files.
	FINNIGAN: Thermo Finnigan .RAW files (requires the same or compatible version of 
		Xcalibur where .RAW files are generated)
	MZXML: mzXML files

- PeakPicking::SNRThreshold (default: 3.0)
 Sets the Signal-To-Noise Ratio.

- PeakPicking::BackgroundRatio (default: 5.0)
 Sets the maximum intensity level to be considered as background.

- PeakPicking::FitType (default: QUADRATIC)
 Sets the type of peak-fitting to be performed.
	APEX: Chooses the most intense point in the peak profile.
	LORENTZIAN: Does a lorentzian fit to the entire peak profile.
	QUADRATIC: Chooses three points - the apex, and one on either side of the profile, 
		and performs a quadratic fit.

- DeconvPep::MaxCharge (default: 10)
 Sets the maximum charge state of an isotopic cluster.

- DeconvPep::ThScore (default: 0.0)
 Sets the threshold score of an isotopic cluster to display.

- DeconvPep::OutputFormat (default: PEK)
 Sets the format of result files. 
	PEK: The format of ICR-2LS (<input file name>+.pek)
	CSV: The format of Decon2LS (<input file name>+_scans.csv and <input file name>+_isos.csv)

- DeconvPep::ResultOrder (default: ABUNDANCE)
 Sets the order of displayed results.
	ABUNDANCE: by decreasing order of the sum of abundances of the N most abundant peaks
		(where N is AdvDeconv::MaxAbundancePeak).
	SCORE: by decreasing order of the score of a cluster. 
	MASS: by decreasing order of the monoisotopic mass of a cluster.
	M/Z: by increasing order of the m/z of the most abundant peak of a cluster.

- DeconvPep::Target (default: MS)
 Sets the target scans
	ALL: all scans (MS + MS/MS)
	MS: only MS scans
	MS/MS: only MS/MS scans

- DeconvPep::Truncated (default: NO)
 Checks whether input files are truncated (YES or NO)

- AdvDeconv::MaxAbundancePeak (default: 3)
 Sets the maximum number of peaks, a sum of abundances of which is displayed in result files.

- AdvDeconv::ScanNoModifier (default: 0)
 Sets the modifier to scan numbers in result files. Set -1 to get the same scan numbers as ICR-2LS.

- AdvDeconv::MaxMissPeak (default: 3)
 Sets the maximum number of peaks allowed to be missed in a pseudo cluster.

- AdvDeconv::MassErr (default: 1.0E-05)
 Sets the error bound on a mass difference between two adjacent peaks.


Contact
-------
For feedback, questions and comments, contact us at peak@uos.ac.kr.

