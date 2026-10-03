import pandas as pd
import numpy as np
from sklearn.model_selection import StratifiedShuffleSplit
from sklearn.pipeline import Pipeline
from sklearn.compose import ColumnTransformer
from sklearn.impute import SimpleImputer
from sklearn.preprocessing import StandardScaler, OneHotEncoder

# 1.) Load the dataset:-
housing = pd.read_csv("housing.csv")

# 2.) Create a stratified test set:-
housing["income_cat"] = pd.cut(
    housing["median_income"],
    bins=[0.0, 1.5, 3.0, 4.5, 6.0, np.inf],
    labels=[1, 2, 3, 4, 5],
)
split = StratifiedShuffleSplit(n_splits=1, test_size=0.2, random_state=42)

for train_index, test_index in split.split(housing, housing["income_cat"]):
    strat_train_set = housing.iloc[train_index].drop(
        "income_cat", axis=1
    )  # Work on the training data:-
    strat_test_set = housing.iloc[test_index].drop(
        "income_cat", axis=1
    )  # Set aside the test data:-

housing = strat_train_set.copy()

# 3.) Separate Features and Labels:-
housing_labels = housing["median_house_value"].copy()
housing = housing.drop("median_house_value", axis=1)

# print(housing, housing_labels)

# 4.) List the numerical and categorical columns:-
num_attribs = housing.drop("ocean_proximity", axis=1).columns.tolist()
cat_attribs = ["ocean_proximity"]

# 5.) List the pipeline for numerical attributes:-
num_pipline = Pipeline(
    [("imputer", SimpleImputer(strategy="median")), ("scaler", StandardScaler())]
)

# 6.) Create a pipeline for categorical attributes:-
cat_pipline = Pipeline([("onehot", OneHotEncoder(handle_unknown="ignore"))])

# 7.) Combine both pipelines using ColumnTransformer:- (Full Pipeline):-
full_pipeline = ColumnTransformer(
    [("num", num_pipline, num_attribs), ("cat", cat_pipline, cat_attribs)]
)

# 8.) Transform the data using the full pipeline:-
housing_prepared = full_pipeline.fit_transform(housing)
print(housing_prepared.shape)