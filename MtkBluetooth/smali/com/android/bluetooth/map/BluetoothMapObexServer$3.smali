.class Lcom/android/bluetooth/map/BluetoothMapObexServer$3;
.super Ljava/lang/Object;
.source "BluetoothMapObexServer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/map/BluetoothMapObexServer;->showSubSelectDialog(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapbMessage;Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapObexServer;

.field final synthetic val$appParams:Lcom/android/bluetooth/map/BluetoothMapAppParams;

.field final synthetic val$bMsgStream:Ljava/io/InputStream;

.field final synthetic val$folderName:Ljava/lang/String;

.field final synthetic val$message:Lcom/android/bluetooth/map/BluetoothMapbMessage;

.field final synthetic val$observer:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

.field final synthetic val$op:Ljavax/obex/Operation;

.field final synthetic val$subInfoList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapObexServer;Ljava/util/List;Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapbMessage;Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/io/InputStream;)V
    .locals 0

    .line 2210
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$3;->this$0:Lcom/android/bluetooth/map/BluetoothMapObexServer;

    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$3;->val$subInfoList:Ljava/util/List;

    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$3;->val$op:Ljavax/obex/Operation;

    iput-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$3;->val$folderName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$3;->val$appParams:Lcom/android/bluetooth/map/BluetoothMapAppParams;

    iput-object p6, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$3;->val$message:Lcom/android/bluetooth/map/BluetoothMapbMessage;

    iput-object p7, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$3;->val$observer:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iput-object p8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$3;->val$bMsgStream:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 2214
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$3;->val$subInfoList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p2

    int-to-long v0, p2

    .line 2215
    new-instance p2, Ljava/lang/Thread;

    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapObexServer$3$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapObexServer$3$1;-><init>(Lcom/android/bluetooth/map/BluetoothMapObexServer$3;J)V

    invoke-direct {p2, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2222
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 2223
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2224
    return-void
.end method
