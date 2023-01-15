# Assessment Of Data-Driven And Deterministic Approaches For Predicting Bace-1 Binding Affinities

β-secretase (BACE-1) is an aspartyl protease that contributes to the abnormal production of amyloid plaques in the brain. We evaluated the Data-Driven And Deterministic Approaches For Predicting Bace-1 Binding Affinities.
## Libraries
chembl_webresource_client, RDkit, Mordred, paDEL Pandas, Sci-kit learn, Numpy, Scipy
## Requirements
Anaconda, jupyter notebook
## How to use this notebook?
Suppose you want to predict activity using deepchem, a signaturizer dataset. Then you do not need to go anywhere else. Enter smiles to get the result for predicting activity based on 1D, 2D, and 3D fingerprint data. It would help if you first generated descriptors and fingerprints using the PaDEL descriptor, freely available at http://www.yapcwsoft.com/dd/padeldescriptor/. Run the code depending on the requirement.
## Methodology
For the data-driven approach, the machine learning application begins with over 7234 beta-secretase one protein inhibitor chemical compounds from the Chembl database. It is critical that whenever we want to direct significant conclusions from a dataset, we use valid observations to train our model. In this case, we must ensure that the compounds used in training meet the criteria for viable drug candidates. We use the Lipinski Rule of 5 to ensure this:

Molecular mass < 500 Daltons

hydrogen bond donors < 5


hydrogen bond acceptors < 10

Log P (Octagonal water partition coefficient) < 5

Regarding feature engineering or descriptors calculation: We built a library of molecular descriptors using the PaDel descriptor and signaturizer software. We could not use smiles as input in paDEL, unlike signaturizer, so we converted them to Mol2 using open Babel and RDKit.
Because the library was quite extensive, a feature selection process to select the final subset of descriptors: Remove descriptors with low variance (less than 15%). Descriptors with high collinearity with other descriptors removed. Boruta is used to select the best subset of features that minimize model overfitting.
Following the feature selection process, the classification model required a minor correction: removing chemical compounds that were neither active nor inactive. For the classification task to predict, the two classes numerically represent 1 (active) or 0 (inactive). Deep learning application begins with over 7234 chemical compounds from the Chembl database that inhibit the Beta Secretase 1 protein. The class featurizer for feature engineering or descriptor calculation
For the deterministic approach, The virtual screening application also starts with over 7234 chemical compounds from the Chembl database. To predict binding affinity, we could not use smiles as input in virtual screening, so we converted them to pdbqt. To do so, convert smiles to mol2 and then to pdbqt.


## Model Building and Performance
Once we had our model-ready data, we needed to find the best model for both datasets: the qualitative and quantitative models. We kept withholding some data during training for these models to validate model results. We also used SMOTE analysis to generate minority class samples to improve minority class predictability. Using Sklearn's StandardScaler tool, all features are scaled to fit a standard normal distribution, which was critical for achieving optimal model performance in regression.
## Conclusion
Top models rely on a non-linear relationship, and because of the non-linear relationship, more feature experimentation is needed to produce a more model-ready data set. RF is an ideal application for this type of data.
An effective tool in drug discovery is a model that ranks compounds quantitatively rather than qualitatively.
In prediction performance, the graph-based model GCN with ChEMBL outperformed machine learning and virtual screening, both qualitatively and quantitatively, and this architecture can help predict binding affinity.
Activity prediction target models are "unsatisfactory," valuable hints for drug discovery and development by directing researchers to likely off-targets, identifying polypharmacological drugs, and aiding in the search tool for the target.

## Assumptions and Limitations
The model trained using around 7432 compounds, a large amount nearly enough to represent the total number of compounds in total chemical space.
Dataset's data preparation scheme - multiple experimental values were available for the same compound-target pair, with the maximum value selected. Other studies used median and mean values, implying that a different data pre-processing method could improve the model's prediction performance.
Boruta uses statistical measures to determine which compounds are relevant for training and the possible removal of certain essential information from the model.
The conclusions are based solely on insilico studies, and our study does not currently provide any wet lab validation.
## FUTURE SCOPE 
Only one public database, ChemBl, was addressed during this time frame. Several databases contain biological activity data to build our training model. The more data the model trains on, the more likely the chemical space and the model will perform well when confronted with novel compounds. Host this model in a web application for researchers to use in their research. In this project, we used descriptors describing the compounds' structural components.
