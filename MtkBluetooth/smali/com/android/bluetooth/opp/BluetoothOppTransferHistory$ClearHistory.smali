.class Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;
.super Landroid/os/AsyncTask;
.source "BluetoothOppTransferHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClearHistory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)V
    .locals 0

    .line 681
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissProgress()V
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 695
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 697
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;->mDialog:Landroid/app/ProgressDialog;

    .line 698
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 0

    .line 708
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->access$200(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)V

    .line 709
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 681
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .line 714
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;->dismissProgress()V

    .line 715
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->access$602(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;)Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;

    .line 716
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 717
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 681
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 702
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 703
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;->showProgress(Landroid/app/Activity;)V

    .line 704
    return-void
.end method

.method public showProgress(Landroid/app/Activity;)V
    .locals 3

    .line 686
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;->mDialog:Landroid/app/ProgressDialog;

    .line 687
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    const v2, 0x7f0e008c

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 688
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;->mDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 689
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;->mDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 690
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 691
    return-void
.end method
