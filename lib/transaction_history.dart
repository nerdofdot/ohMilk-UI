import 'package:flutter/material.dart';

class TransactionHistoryView extends StatefulWidget {
  @override
  _TransactionHistoryViewState createState() => _TransactionHistoryViewState();
}

class _TransactionHistoryViewState extends State<TransactionHistoryView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 25,),
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Text('Your milk history:',style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w700,fontSize: 18),),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 40,right: 40),
          child: Text('This includes milk taken daily, extra milk taken and cancellation of milk on a particular day.',style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w400,fontSize: 14),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40,right: 40,top: 10),
          child: Text('*History of a month.',style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w700,fontSize: 14),),
        ),
        Expanded(child: ListViewForTransactions()),
      ],
    );
  }
}

class ListViewForTransactions extends StatefulWidget {
  @override
  _ListViewForTransactionsState createState() => _ListViewForTransactionsState();
}

class _ListViewForTransactionsState extends State<ListViewForTransactions> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 8,
      shrinkWrap: true,
      itemBuilder: (context,index)
      {
        return CardViewForTransactions(index: index,);
      },
    );
  }
}

List num = [0,1,2,1,1,2,2,0];

class CardViewForTransactions extends StatefulWidget {
  int index;
  CardViewForTransactions({this.index});
  @override
  _CardViewForTransactionsState createState() => _CardViewForTransactionsState(index: index);
}

class _CardViewForTransactionsState extends State<CardViewForTransactions> {
  int index;
  _CardViewForTransactionsState({this.index});
  checkTransactionTypeForColors(int i)
  {
        if(num[i]==0)
        {
          return Colors.red[400];
        }
        else if(num[i]==1)
          {
            return Colors.brown[400];
          }
        else if(num[i]==2)
          {
            return Colors.green[400];
          }
  }
  checkTransactionTypeForColors2(int i)
  {
      if(num[i]==0)
      {
        return Colors.red[100];
      }
      else if(num[i]==1)
      {
        return Colors.brown[100];
      }
      else if(num[i]==2)
      {
        return Colors.green[100];
      }

  }
  checkTransactionTypeForColors3(int i)
  {
    if(num[i]==0)
    {
      return Colors.red[700];
    }
    else if(num[i]==1)
    {
      return Colors.brown[700];
    }
    else if(num[i]==2)
    {
      return Colors.green[700];
    }

  }
  checkTransactionTypeForTextToBeDispalyed(int i)
  {
    if(num[i]==0)
    {
      return 'You cancelled delivery';
    }
    else if(num[i]==1)
    {
      return '- ₹66 milk delivered';
    }
    else if(num[i]==2)
    {
      return '+ ₹1000 added to account';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(left: 20,right: 20,top: 5),
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.only(left: 15,top: 10,right: 15,bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: checkTransactionTypeForColors2(index),
              child: Image.asset("assets/milk-bottle.png",height: 40,width: 40,color: checkTransactionTypeForColors(index),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Date : 10/3/2021',style: TextStyle(color: Colors.grey[600],fontSize: 16,fontWeight: FontWeight.w500),),
                  Text(checkTransactionTypeForTextToBeDispalyed(index),style: TextStyle(color:checkTransactionTypeForColors3(index),fontWeight: FontWeight.w500,fontSize: 15 ),)
                ],
              ),
            )
          ],
        ),
      ),
    ),
    );
  }
}


