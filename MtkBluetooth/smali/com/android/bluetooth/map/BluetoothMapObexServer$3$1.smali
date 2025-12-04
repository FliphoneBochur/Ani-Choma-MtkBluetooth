.class Lcom/android/bluetooth/map/BluetoothMapObexServer$3$1;
.super Ljava/lang/Object;
.source "BluetoothMapObexServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/map/BluetoothMapObexServer$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/bluetooth/map/BluetoothMapObexServer$3;

.field final synthetic val$subId:J


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapObexServer$3;J)V
    .locals 0

    .line 2215
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$3$1;->this$1:Lcom/android/bluetooth/map/BluetoothMapObexServer$3;

    iput-wide p2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$3$1;->val$subId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 2218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[showSubSelectDialog] sendMessage enter: subId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$3$1;->val$subId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMapObexServer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$3$1;->this$1:Lcom/android/bluetooth/map/BluetoothMapObexServer$3;

    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer$3;->this$0:Lcom/android/bluetooth/map/BluetoothMapObexServer;

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$3$1;->this$1:Lcom/android/bluetooth/map/BluetoothMapObexServer$3;

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer$3;->val$op:Ljavax/obex/Operation;

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$3$1;->this$1:Lcom/android/bluetooth/map/BluetoothMapObexServer$3;

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer$3;->val$folderName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$3$1;->this$1:Lcom/android/bluetooth/map/BluetoothMapObexServer$3;

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer$3;->val$appParams:Lcom/android/bluetooth/map/BluetoothMapAppParams;

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$3$1;->this$1:Lcom/android/bluetooth/map/BluetoothMapObexServer$3;

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer$3;->val$message:Lcom/android/bluetooth/map/BluetoothMapbMessage;

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$3$1;->this$1:Lcom/android/bluetooth/map/BluetoothMapObexServer$3;

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer$3;->val$observer:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$3$1;->this$1:Lcom/android/bluetooth/map/BluetoothMapObexServer$3;

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer$3;->val$bMsgStream:Ljava/io/InputStream;

    iget-wide v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$3$1;->val$subId:J

    invoke-static/range {v1 .. v9}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->access$000(Lcom/android/bluetooth/map/BluetoothMapObexServer;Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapbMessage;Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/io/InputStream;J)I

    .line 2221
    return-void
.end method
