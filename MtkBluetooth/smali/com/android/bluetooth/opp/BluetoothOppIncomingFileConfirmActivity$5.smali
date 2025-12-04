.class Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$5;
.super Ljava/lang/Object;
.source "BluetoothOppIncomingFileConfirmActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->onTimeout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$5;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 252
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$5;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->access$100(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)Landroid/app/TctDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 253
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$5;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->access$100(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)Landroid/app/TctDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/TctDialog;->dismiss()V

    .line 255
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$5;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    invoke-virtual {p1}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->finish()V

    .line 256
    return-void
.end method
