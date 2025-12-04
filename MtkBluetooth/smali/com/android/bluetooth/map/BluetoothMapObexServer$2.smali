.class Lcom/android/bluetooth/map/BluetoothMapObexServer$2;
.super Ljava/lang/Object;
.source "BluetoothMapObexServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/map/BluetoothMapObexServer;->pushMessage(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapObexServer;

.field final synthetic val$finalAppParams:Lcom/android/bluetooth/map/BluetoothMapAppParams;

.field final synthetic val$finalFolderName:Ljava/lang/String;

.field final synthetic val$finalMessage:Lcom/android/bluetooth/map/BluetoothMapbMessage;

.field final synthetic val$finalMsgStream:Ljava/io/InputStream;

.field final synthetic val$finalObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

.field final synthetic val$op:Ljavax/obex/Operation;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapObexServer;Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapbMessage;Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/io/InputStream;)V
    .locals 0

    .line 2128
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapObexServer;

    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2;->val$op:Ljavax/obex/Operation;

    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2;->val$finalFolderName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2;->val$finalAppParams:Lcom/android/bluetooth/map/BluetoothMapAppParams;

    iput-object p5, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2;->val$finalMessage:Lcom/android/bluetooth/map/BluetoothMapbMessage;

    iput-object p6, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2;->val$finalObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iput-object p7, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2;->val$finalMsgStream:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 2131
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapObexServer;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2;->val$op:Ljavax/obex/Operation;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2;->val$finalFolderName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2;->val$finalAppParams:Lcom/android/bluetooth/map/BluetoothMapAppParams;

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2;->val$finalMessage:Lcom/android/bluetooth/map/BluetoothMapbMessage;

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2;->val$finalObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$2;->val$finalMsgStream:Ljava/io/InputStream;

    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->showSubSelectDialog(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapbMessage;Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/io/InputStream;)V

    .line 2133
    return-void
.end method
