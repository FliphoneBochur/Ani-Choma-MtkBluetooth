.class Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$2;
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

    .line 373
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$2;->val$tctDialog:Landroid/app/TctDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 376
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->access$200(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)V

    .line 377
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$2;->val$tctDialog:Landroid/app/TctDialog;

    invoke-virtual {p1}, Landroid/app/TctDialog;->dismiss()V

    .line 378
    return-void
.end method
