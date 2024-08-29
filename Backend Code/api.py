from flask import Flask, request, jsonify

app = Flask(__name__)


import pandas as pd
import numpy as np
import seaborn as sns
import numpy as np
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression
from sklearn.metrics import r2_score
import matplotlib.pyplot as plt
import math
import warnings
warnings.filterwarnings("ignore")

# Load the dataset
df = pd.read_csv("C:\project work\sbatting2.csv")
df2 = pd.read_csv("C:\project work\sballing.csv")
df12 = pd.read_csv("C:\project work\sbab.csv")

s='null'
# pred30,pred60,pred90,pred120='nulla'
def abc(teamname,batsmanname):
    df1=df.loc[(df['fullName'] == batsmanname) & (df['opponentteam'] == teamname) ]
    X1 = df1[['ballsFaced']]
    y1 = df1['runs']
    X1_train,X1_test,y1_train,y1_test=train_test_split(X1,y1,test_size=0.1,random_state=0)
    linreg=LinearRegression()
    abc=linreg.fit(X1_train,y1_train)
    y1_pred=abc.predict(X1_test)
    Accuracy1=r2_score(y1_test,y1_pred)*100
    if(math.isnan (Accuracy1)):
        # print("cant say ")
        s='cant say'
    else:
        # print(" Accuracy of the model is %.2f" %Accuracy1)
        s=str(Accuracy1)

    y2_pred30=int(abc.predict([[30]]))
    y2_pred60=int(abc.predict([[60]]))
    y2_pred90=int(abc.predict([[90]]))
    y2_pred120=int(abc.predict([[120]]))

    pred30=str(y2_pred30)
    pred60=str(y2_pred60)
    pred90=str(y2_pred90)
    pred120=str(y2_pred120)

    return s,pred30,pred60,pred90,pred120

def abc2(ballteamname,bolwername):
    
    df3=df2.loc[(df['fullName'] == bolwername) & (df['opponentteam'] == ballteamname) ]
    X1 = df3[['overs']]
    y1 = df3['conceded']
    X1_train,X1_test,y1_train,y1_test=train_test_split(X1,y1,test_size=0.1,random_state=0)
    linreg=LinearRegression()
    abc=linreg.fit(X1_train,y1_train)


    y2_pred30=int(abc.predict([[30]]))
    y2_pred60=int(abc.predict([[60]]))
    y2_pred90=int(abc.predict([[90]]))
    y2_pred120=int(abc.predict([[120]]))

    pred30=str(y2_pred30)
    pred60=str(y2_pred60)
    pred90=str(y2_pred90)
    pred120=str(y2_pred120)

    return pred30,pred60,pred90,pred120

def abc3(hometeam,awayteam,innid,season,over,ball):
    df3=df12.loc[(((df12['home_team'] == hometeam) & (df12['away_team'] == awayteam))   | ((df12['home_team'] == awayteam) & (df12['away_team'] == hometeam))) & (df12['innings_id'] == innid)& (df12['season'] == season)& (df12['over'] == over)&(df12['ball'] == ball)]

    runs=int(df3['runs'])
    batsman_name=str(df3['batsman1_name'].iloc[0])
    current_inning=str(df3['current_innings'].iloc[0])
    bowler_name=str(df3['bowler1_name'].iloc[0])
    commentry=str(df3['text'].iloc[0])
 
    type=''
    num=0
    if(df3['isBoundary'].iloc[0]==1):
        type=type+" Boundary"
        num=1
    if(df3['isWide'].iloc[0]==1):
        num=1
        type=type+" wide"
    if(df3['isNoball'].iloc[0]==1):
        num=1
        type=type+" No ball"
    if(df3['wkt_batsman_runs'].iloc[0]!=3111):
        type=type+" Wicket"
        num=1
    if(num==0):
        type='Normal Ball'
   
    return runs,batsman_name,current_inning,bowler_name,commentry,type

    

@app.route('/api', methods = ['GET'])
def returnascii():
    d = {}
    inputchr2 = str(request.args['teamname'])
    inputchr3 = str(request.args['batsmanname'])

    answer1,pred30,pred60,pred90,pred120=abc(inputchr2,inputchr3)


    d['accuracy'] = answer1   
    d['pred30'] = pred30
    d['pred60'] = pred60
    d['pred90'] = pred90
    d['pred120'] = pred120

    return d

@app.route('/api2', methods = ['GET'])
def returnascii2():
    d = {}
    inputchr2 = str(request.args['teamname'])
    inputchr3 = str(request.args['bawlername'])

    pred30,pred60,pred90,pred120=abc2(inputchr2,inputchr3)


    
    d['pred30'] = pred30
    d['pred60'] = pred60
    d['pred90'] = pred90
    d['pred120'] = pred120

    return d

@app.route('/api3', methods = ['GET'])
def returnascii3():
    d = {}
    inputchr1 = str(request.args['hometeam'])
    inputchr2 = str(request.args['awayteam'])
    inputchr3 = int(request.args['innid'])
    inputchr4 = int(request.args['season'])
    inputchr5 = int(request.args['over'])
    inputchr6 = int(request.args['ball'])



    runs,batsman_name,current_inning,bowler_name,commentry,type=abc3(inputchr1,inputchr2,inputchr3,inputchr4,inputchr5,inputchr6)



    
    d['runs'] = str(runs)
    d['batsmanname'] = batsman_name

    d['currentinning'] = str(current_inning)
    d['bowlername'] = bowler_name
    d['commentry'] = commentry
    d['type'] = type

#http://127.0.0.1:5000/api3?hometeam=CSK&awayteam=KKR&innid=1&season=2022&over=1&ball=3
    return d



if __name__ =="__main__":
    app.run()
