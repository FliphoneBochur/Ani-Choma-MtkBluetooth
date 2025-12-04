.class Lcom/android/bluetooth/opp/BluetoothOppService$1;
.super Ljava/lang/Thread;
.source "BluetoothOppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/BluetoothOppService;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

.field final synthetic val$contentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppService;Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    iput-object p3, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->val$contentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$1;->val$contentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$200(Landroid/content/ContentResolver;)V

    .line 209
    return-void
.end method
