.class Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
.super Ljava/lang/Object;
.source "BluetoothMapContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PushMsgInfo"
.end annotation


# instance fields
.field public failedSent:Z

.field public id:J

.field public parts:I

.field public partsDelivered:I

.field public partsSent:I

.field public phone:Ljava/lang/String;

.field public resend:Z

.field public retry:I

.field public sendInProgress:Z

.field public statusDelivered:I

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

.field public timestamp:J

.field public transparent:I

.field public uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JIILjava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 2556
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2557
    iput-wide p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    .line 2558
    iput p4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->transparent:I

    .line 2559
    iput p5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->retry:I

    .line 2560
    iput-object p6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->phone:Ljava/lang/String;

    .line 2561
    iput-object p7, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->uri:Landroid/net/Uri;

    .line 2562
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->resend:Z

    .line 2563
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->sendInProgress:Z

    .line 2564
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->failedSent:Z

    .line 2565
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->statusDelivered:I

    .line 2566
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->timestamp:J

    .line 2567
    return-void
.end method
