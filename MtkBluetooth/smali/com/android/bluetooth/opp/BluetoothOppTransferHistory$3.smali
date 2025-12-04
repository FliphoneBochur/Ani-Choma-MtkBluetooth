.class Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$3;
.super Ljava/lang/Object;
.source "BluetoothOppTransferHistory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->promptClearList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

.field final synthetic val$tctDialog:Landroid/app/TctDialog;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;Landroid/app/TctDialog;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$3;->val$tctDialog:Landroid/app/TctDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 384
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$3;->val$tctDialog:Landroid/app/TctDialog;

    invoke-virtual {p1}, Landroid/app/TctDialog;->dismiss()V

    .line 385
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->access$300(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 386
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->access$400(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)Landroid/widget/MenuBar;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, ""

    invoke-virtual {p1, v0, v0, v0, p2}, Landroid/widget/MenuBar;->updateMenuBar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 388
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->access$400(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)Landroid/widget/MenuBar;

    move-result-object p1

    const p2, 0x7f0e0090

    const v0, 0x7f0e008e

    const v1, 0x7f0e008f

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    .line 389
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->access$500(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)Ljava/util/ArrayList;

    move-result-object v2

    .line 388
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 391
    :goto_0
    return-void
.end method
