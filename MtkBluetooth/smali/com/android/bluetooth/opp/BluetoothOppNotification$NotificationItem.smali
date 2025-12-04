.class Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;
.super Ljava/lang/Object;
.source "BluetoothOppNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationItem"
.end annotation


# instance fields
.field public description:Ljava/lang/String;

.field public destination:Ljava/lang/String;

.field public direction:I

.field public handoverInitiated:Z

.field public id:I

.field public timeStamp:J

.field public totalCurrent:J

.field public totalTotal:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalCurrent:J

    .line 139
    iput-wide v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:J

    .line 141
    iput-wide v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->timeStamp:J

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->handoverInitiated:Z

    return-void
.end method
