.class Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "BluetoothOppTransferHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)V
    .locals 0

    .line 722
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ChangeObserver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    .line 723
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 724
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .line 728
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 4

    .line 733
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ChangeObserver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->access$700(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1}, Landroid/database/Cursor;->requery()Z

    .line 734
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ChangeObserver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->access$700(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-nez p1, :cond_1

    .line 735
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ChangeObserver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->access$300(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1}, Landroid/database/Cursor;->requery()Z

    .line 737
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ChangeObserver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->access$300(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 738
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ChangeObserver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->access$400(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)Landroid/widget/MenuBar;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, ""

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/widget/MenuBar;->updateMenuBar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 740
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ChangeObserver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->access$400(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)Landroid/widget/MenuBar;

    move-result-object p1

    const v0, 0x7f0e0090

    const v1, 0x7f0e008e

    const v2, 0x7f0e008f

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ChangeObserver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    .line 741
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->access$500(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)Ljava/util/ArrayList;

    move-result-object v3

    .line 740
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 745
    :cond_1
    :goto_0
    return-void
.end method
