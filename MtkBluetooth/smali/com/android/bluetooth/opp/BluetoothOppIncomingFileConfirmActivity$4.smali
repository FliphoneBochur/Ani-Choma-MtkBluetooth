.class Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$4;
.super Ljava/lang/Object;
.source "BluetoothOppIncomingFileConfirmActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->showView()V
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

    .line 158
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$4;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 161
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$4;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    invoke-virtual {p1}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->finish()V

    .line 162
    return-void
.end method
